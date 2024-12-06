// just module instances and the state machine!
module top(
        output [2:0] simon_led0, simon_led1, simon_led2, simon_led3,
        output [15:0] led,
        output [7:0] lcd_data,
        output lcd_regsel,
        output lcd_enable,
        input [3:0] simon_buttons_n,
        input clk,
        input btnC, btnR,
        input [3:0] sw
);

        wire [3:0] simon_buttons = ~simon_buttons_n;
        
         // timer localparams
        localparam ONESEC = 10_000_000, HALFSEC = 50_000_000, TRIPLESEC = 7_500_000;
        
        //  states for state machine NEED TO MAKE MORE STATES, Keep it simple!
        localparam IDLE = 0, RANDOMIZE = 1, 
                SEQUENCE = 2, USERINPUT = 3,
                CORRECT = 4, SEQUENCECOMPLETE = 5, 
                INCORRECT = 6;


        //  State Machine Inputs
        wire [3:0] deb_held;
        wire [3:0] deb_press;
        wire deb_held_enable = deb_held[0] | deb_held[1] | deb_held[2] | deb_held[3];
        wire button_ctrl_out;
        reg reset, lcd_reset;

        //  State Machine Outputs
        //  color selection
        reg [1:0] color;
        wire [1:0] rand_color, sel_color;
        reg color_enable;
        
        // PRNG
        reg led_enable, randomize, play_seq, rerun;
        reg rand_reset;

        // round counting
        reg round_count_reset, round_count_enable, round_count_tick;
        wire [6:0] round_count;
        
        // sequence counting
        reg [24:0] timer_loadvalue;
        reg timer_reset, timer_enable, seq_count_tick;
        wire [6:0] key_sequence_count;
        reg seq_timer_reset, seq_timer_enable;
        wire seq_timer_pulse;
        reg seq_count_reset;
        reg seq_count_enable, seq_timer_pulse_dep;
        wire seq_timer_hold;

        // score counting
        reg score_count_reset, score_count_enable;
        wire [7:0] score_count;
        
        reg seq_flag, score_flag, round_flag;
        reg [7:0] seg_val, score_val, round_val;
        
        // Speaker / Tones
        reg tone_enable;
        wire [17:0] note_wr;
        wire [2:0] note_sel;
        
        // LCD
        reg [8*16-1:0] topline, bottomline;
        reg lcd_string_print;

        // state machine internal
        reg [4:0] c_state, n_state; 
       
        lcd_string LCDstringer (.lcd_regsel(lcd_regsel),
                 .lcd_enable(lcd_enable),
                 .lcd_data(lcd_data),
//                 .available(),
                 .print(lcd_string_print), 
                 .topline(topline), 
                 .bottomline(bottomline),
                 .reset(lcd_reset),
                 .clk(clk));
                  
        debouncer st_pulse (
                .pressed(seq_timer_pulse_deb), 
                .button(seq_timer_pulse),
                .clk(clk)
        );
        
        debouncer deb_s0 (
                .pressed(deb_press[0]), 
                .held(deb_held[0]),
                .button(simon_buttons[0]),
                .reset(reset),
                .clk(clk)
        );

        debouncer deb_s1 (
                .pressed(deb_press[1]), 
                .held(deb_held[1]),
                .button(simon_buttons[1]),
                .reset(reset),
                .clk(clk)
        );

        debouncer deb_s2 (
                .pressed(deb_press[2]), 
                .held(deb_held[2]),
                .button(simon_buttons[2]),
                .reset(reset),
                .clk(clk)

        );

        debouncer deb_s3 (
                .pressed(deb_press[3]), 
                .held(deb_held[3]),
                .button(simon_buttons[3]),
                .reset(reset),
                .clk(clk)

        );

        button_ctrl simon_button_loc (
                .button_loc(sel_color),
                .button_in(deb_press),
                .clk(clk)
        );

        led_ctrl simon_color_ctrl (
                .led0(simon_led0), 
                .led1(simon_led1), 
                .led2(simon_led2), 
                .led3(simon_led3), 
                .clk(clk), 
                .color(color), 
                .enable(led_enable)
        );

        PRNG simon_rand(
                .random(rand_color),
                .step(seq_timer_pulse),
                .rerun(rerun),
                .randomize(randomize),
                .clk(clk),
                .reset(rand_reset)
        );
        
        scale_decoder simon_scl_dec (
                .note(note_wr),
                .sel(note_sel),
                .enable(1)       
        );
        
        speakerselect simon_spk (
                .speaker(speaker),
                .note(note_wr),
                .clk(clk)
        );

        counter seq_ct (
            .count(key_sequence_count),
            .pulse_in(seq_timer_pulse),
            .reset(seq_count_reset),
            .enable(seq_count_enable),
            .clk(clk)
        );
        
        timer seq_t (
            .pulse(seq_timer_pulse),
            .hold(seq_timer_hold),
            .reset(seq_timer_reset),
            .enable(seq_timer_enable),
            .clk(clk)
            );

    assign led [1:0] = c_state;
    assign led [3:2] = rand_color;
    assign led [12:4] = key_sequence_count;
    assign led [13] = seq_timer_hold;
    
	always @(posedge clk) begin
                c_state <= n_state;
                if (btnC) c_state <= IDLE;  
        end

        always @* begin
//              n_state = c_state;
                timer_reset = 0;
                timer_enable = 0;
                timer_loadvalue = 0;
                score_count_reset = 0;
                score_count_enable = 0;
                round_count_enable = 0;
                lcd_reset = 0;
        end
        
        always @* begin    
                case(c_state)
                        IDLE: begin
                                rand_reset = 0;
//                              lcd_reset = 0;
                                round_count_reset = 1; // set round to 1
                                seq_count_reset = 1;
                                // this is our RESET state
                                led_enable = 0;  // keeps leds dim
                                lcd_string_print = 1;
                                topline = "WELCOME TO SIMON";
                                bottomline = "UH. PRESS GREEN?";
                                led_enable = 0;
                                rerun = 0;
                                seq_count_reset = 1;
                                round_count_reset = 1;
                                if (deb_held[0]) begin
                                        rand_reset = 1; // when button input, move to randomize
                                        led_enable = 1; // LEDs can turn on. for some reason all of them do?
                                        
                                        n_state = RANDOMIZE;
                                end else begin  
                                        
                                        n_state = IDLE;
                                end
                                // dim unless they're lit up by button press/sequence?)
                                // waiting for button input
                                // print message to LCD welcoming to game
                        end

                        RANDOMIZE: begin
                                rand_reset = 0;
                                randomize = 0;
                                if (deb_held[0]) begin
                                        topline = "RANDOMIZING NOW ";
                                        bottomline = "RANDOMIZING NOW ";
                                        randomize = 1;
                                        n_state = RANDOMIZE;
                                end else begin
                                        topline = "RANDOMIZING DONE";
                                        bottomline = "RANDOMIZING DONE";
                                        n_state = SEQUENCE;
//                                        seq_timer_enable = 1; 
                                        seq_timer_reset = 1;
                                        seq_count_reset = 1;
                                end
                                // randomize LFSR
                                // print score message to LCD, this should
                                // not really change until incorrect input
                                // prompts a return to IDLE
                        end

                        SEQUENCE: begin
                                round_count_reset = 0;
                                randomize = 0; // turns off randomization
                                topline = "this is sequence";
                                bottomline = "please no breaky";
                                seq_count_reset = 0; 
                                led_enable = 0; // turns off LEDs
                                seq_timer_reset = 0;
                                seq_timer_enable = 1; 
                                seq_count_enable = 1; 
                                if (key_sequence_count <= 5) begin
                                        topline =    "count           ";
                                        bottomline = "please no breaky";
                                        led_enable = seq_timer_hold; // turns LEDs on while seq_timer_pulse is high
                                         // enables timer, which will output pulse (every sec) and hold (for 3/4 sec)
                                        n_state = SEQUENCE; // keeps in sequence state
                                        color = rand_color; // selects the random color for simon
                                        rerun = 0; // doesn't rerun randomization
                                        seq_count_reset = 0;  
                                        round_count_reset = 0; 
                                       // waits
                                       // do again?
                                       // KEY_SEQ_COUNT IS NOT INCREMENTING,  COLOR IS JUST AN INFINITE? RANDOM SEQUENCE
                                end else begin
                                        seq_count_enable = 0; // enables sequence counter, will increment count if pulse is high
                                        seq_timer_enable = 0;
                                        topline = "sequence maxxing";
                                        bottomline = "sequence maxxing";
                                        rerun = 1;
                                        round_count_reset = 1;
                                        seq_count_reset = 1;
                                        //seq_timer_reset = 1;
                                        seq_timer_enable = 0;
                                        n_state = USERINPUT;
                                end


                                        
                                // this should play a pseudorandom sequence of tones
                                // how many is dependent on round counter,
                                // initial round count should be 1
                                // each tone should be played for 3/4 second
                                // with a 1/4 second gap between tones
                                // after playing tones, should move to USERINPUT
                                // can use key_sequence_count for this to count up
                                // until it reaches round_count, where it moves to USERINPUT
                        end

                        USERINPUT: begin
                                seq_count_reset = 0;
                                rerun = 0;
                                topline =    "USERINPUT :)    ";
                                bottomline = "PLS DO GOOD     ";
                                led_enable = 0;
                                if (deb_held != 4'b0000) begin
                                        led_enable = deb_held_enable;
                                        color = sel_color;
                                        if (sel_color == rand_color) begin
                                                n_state = CORRECT;
                                        end else begin
                                            n_state = INCORRECT;
                                        end
                                end
                                // when user presses a button, it lights up and plays tone
                                // button debouncing necessary so that each is only registered once
                                // once button released, compare to appropriate key in sequence 
                                // if user presses the correct key, go to CORRECT.
                                // if user presses correct key and key_sequence_count == round_count, 
                                // go to SEQUENCECOMPLETE
                                // if they don't, go to INCORRECT

                        end

                        CORRECT: begin
                                // increment key_sequence_count
                                // go back to USERINPUT, unless
                                topline =    "Correct, which  ";
                                bottomline = "is pretty cool  ";

                        end

                        SEQUENCECOMPLETE: begin
                                // if USERINPUT is successful, play a success tone
                                // update score_count and LCD message
                                // increment round_count and go to SEQUENCE
                        end

                        INCORRECT: begin
                                topline = "Correct, which  ";
                                topline = "wrong           ";
                                // play failure tone
                                // print failure message
                                // wait a second
                                // return to IDLE
                        end

                        default: begin
                                n_state = IDLE;
                        end
                endcase
        end
        endmodule
