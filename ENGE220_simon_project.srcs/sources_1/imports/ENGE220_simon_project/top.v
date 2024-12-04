// just module instances and the state machine!
module top(
        output [2:0] simon_led0, simon_led1, simon_led2, simon_led3,
        output [3:0] led,
        input [3:0] simon_buttons_n,
        input clk,
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
        reg reset;

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
        reg [6:0] key_sequence_count;
        reg seq_timer_reset, seq_timer_enable;
        wire seq_timer_pulse;
        
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
        
        // state machine internal
        reg [4:0] c_state, n_state; 
       
        
        debouncer deb_s0 (
                .pressed(deb_press [0]), 
                .held(deb_held [0]),
                .button(simon_buttons[0]),
                .reset(reset),
                .clk(clk)
        );

        debouncer deb_s1 (
                .pressed(deb_press [1]), 
                .held(deb_held [1]),
                .button(simon_buttons[1]),
                .reset(reset),
                .clk(clk)
        );

        debouncer deb_s2 (
                .pressed(deb_press [2]), 
                .held(deb_held [2]),
                .button(simon_buttons[2]),
                .reset(reset),
                .clk(clk)

        );

        debouncer deb_s3 (
                .pressed(deb_press [3]), 
                .held(deb_held [3]),
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
                .color(sel_color), 
                .enable(deb_held_enable)
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
                .enable(tone_enable),
                .clk(clk)
        );

        counter round_ct (
            .count(round_count),
            .pulse(round_count_tick),
            .reset(round_count_reset),
            .enable(round_count_enable),
            .clk(clk),
            .countflag(),
            .countval()
        );
    
        counter seq_ct (
            .count(key_sequece_count),
            .pulse(seq_count_tick),
            .reset(seq_count_reset),
            .enable(seq_count_enable),
            .clk(clk),
            .countflag(),
            .countval()
        );
    
        counter score_ct(
            .count(score_count),
            .pulse(score_count_tick),
            .reset(score_count_reset),
            .enable(score_count_enable),
            .clk(clk),
            .countflag(),
            .countval()
        );
        
        timer seq_timer(
            .pulse(seq_timer_pulse),
            .clk(clk), 
            .reset(seq_timer_reset), 
            .enable(seq_timer_enable), 
            .loadvalue(ONESEC)
        );

    assign led [1:0] = c_state;
          
	always @(posedge clk) begin
                c_state <= n_state;  
        end

        always @* begin
//                n_state = c_state;
                timer_reset = 0;
                timer_enable = 0;
                timer_loadvalue = 0;
                score_count_reset = 0;
                score_count_enable = 0;
                round_count_enable = 0;
        end
        always @* begin    
                case(c_state)
                        IDLE: begin
                                round_count_reset = 1; // set round to 1
                                // this is our RESET state
                                led_enable = 0;  // keeps leds dim
                                if (deb_held[0]) begin // when button input, move to randomize
                                        led_enable = 1;
                                        n_state = RANDOMIZE;
                                end else begin  
                                        n_state = IDLE;
                                end
                                // dim unless they're lit up by button press/sequence?)
                                // waiting for button input
                                // print message to LCD welcoming to game
                        end

                        RANDOMIZE: begin
                                if (deb_held[0]) begin
                                        randomize = 1;
                                end else begin
                                        randomize = 0;
                                        n_state = SEQUENCE;
                                        led_enable = 0;
                                end
                                // randomize LFSR
                                // print score message to LCD, this should
                                // not really change until incorrect input
                                // prompts a return to IDLE
                        end

                        SEQUENCE: begin
                                // the timing and counting should happen via
                                // a counter module, which should deal with
                                // all of this
                                if (key_sequence_count <= round_count) begin
                                        led_enable = 1;
                                        color = rand_color;
                                end else begin
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
                                if (deb_held != 4'b0000) begin
                                        color = sel_color;
                                        if (sel_color == rand_color) begin
                                        
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

                        end

                        SEQUENCECOMPLETE: begin
                                // if USERINPUT is successful, play a success tone
                                // update score_count and LCD message
                                // increment round_count and go to SEQUENCE
                        end

                        INCORRECT: begin
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