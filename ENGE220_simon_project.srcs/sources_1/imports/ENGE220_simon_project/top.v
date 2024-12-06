// just module instances and the state machine!
module top(
        output [2:0] simon_led0, simon_led1, simon_led2, simon_led3,
        output [15:0] led,
        output [7:0] lcd_data,
        output lcd_regsel,
        output lcd_enable,
        output speaker,
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
INCORRECT = 6, WAIT=7, HOLD=8, WAITTWO=9;


        //  State Machine Inputs
        wire [3:0] deb_held;
        wire [3:0] deb_press;
        wire deb_held_enable = deb_held[0] | deb_held[1] | deb_held[2] | deb_held[3];
        wire button_ctrl_out;
        reg reset, lcd_reset;
        reg [1:0] round_color;

        //  State Machine Outputs
        //  color selection
        reg [1:0] color;
        wire [1:0] rand_color;
        wire [1:0] sel_color, compare_color;
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
        reg pulse, non_seq_b;
        wire non_seq_pulse;

        // score counting
        reg score_count_reset, score_count_enable;
        wire [7:0] score_count;

        reg seq_flag, score_flag, round_flag;
        reg [7:0] seg_val, score_val, round_val;

        // Speaker / Tones
        reg tone_enable;
        wire [17:0] note_wr;
        wire [1:0] note_sel;

        // LCD
        reg [8*16-1:0] topline, bottomline;
        reg lcd_string_print;

        // state machine internal
        reg [4:0] c_state, n_state; 

        // score
        reg [7:0] player_score;
        wire [3:0] player_tens, player_ones;
        wire [7:0] player_tens_converted = {4'b0011, player_tens};
        wire [7:0] player_ones_converted = {4'b0011, player_ones};

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
                .pressed(non_seq_pulse), 
                .button(non_seq_b),
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
        
        wire [1:0] rand_to_store;
        reg reg_clear;
        /*
        shift_reg rand_store(
                .bits_out(rand_color),
                .bits_in(rand_to_store),
                .clk(clk),
                .clear(reg_clear),
                .shift(pulse)    
        );
        */
        PRNG simon_rand(
                .random(rand_color),
                .step(pulse),
                .rerun(rerun),
                .randomize(randomize),
                .clk(clk),
                .reset(rand_reset)
        );

        scale_decoder simon_scl_dec (
                .note(note_wr),
                .sel(color),
                .enable(1)       
        );

        speakerselect simon_spk (
                .speaker(speaker),
                .note(note_wr),
                .enable(led_enable),
                .clk(clk)
        );

        counter seq_ct (
                .count(key_sequence_count),
                .pulse_in(pulse),
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

        binary_to_BCD converter (
                .A(player_score),
                .ONES(player_ones),
                .TENS(player_tens)
        );

        assign led [1] = non_seq_b;
        assign led [3:2] = rand_color;
        assign led [13:4] = key_sequence_count;
        assign led [15:14] = sel_color;

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
                        reg_clear = 1;
                        pulse = non_seq_pulse;
                        rand_reset = 0;
                        // lcd_reset = 0;
                        round_count_reset = 1;
                        seq_count_reset = 1;
                        // this is our RESET state
                        led_enable = 0;  // keeps leds dim
                        lcd_string_print = 1;
                        topline = "WELCOME TO SIMON";
                        bottomline = "UH. PRESS GREEN?";
                        player_score = 8'b0;
                        led_enable = 0;
                        rerun = 0;
                        seq_count_reset = 1;
                        round_count_reset = 1;
                        color = sel_color;
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
                        reg_clear = 0;
                        pulse = non_seq_pulse;
                        color = sel_color;
                        rand_reset = 0;
                        randomize = 0;
                        n_state = RANDOMIZE;
                        if (deb_held[0]) begin
                                topline = "RANDOMIZING NOW ";
                                bottomline = "RANDOMIZING NOW ";
                                randomize = 1;

                        end else begin
                                topline = "RANDOMIZING DONE";
                                bottomline = "RANDOMIZING DONE";
                                n_state = WAIT;
                                //                                        seq_timer_enable = 1; 
                                seq_timer_reset = 1;
                                seq_count_reset = 1;
                        end
                        // randomize LFSR
                        // print score message to LCD, this should
                        // not really change until incorrect input
                        // prompts a return to IDLE
                end

                WAIT: begin
                        led_enable = 0;
                        seq_timer_reset = 0;
                        seq_count_reset = 0;
                        seq_timer_enable = 1; 
                        seq_count_enable = 1;
                        pulse = seq_timer_pulse;
                        topline =    "INITIALIZING....";
                        bottomline = {"PLAYER SCORE: ", player_tens_converted, player_ones_converted};
                        n_state = WAIT;
                        if ((key_sequence_count >  1 )) begin
                                seq_timer_reset = 1;
                                seq_count_reset = 1;
                                seq_timer_enable = 0;
                                seq_count_enable = 0;
                                rerun = 1;
                                n_state = SEQUENCE;

                        end
                end

                SEQUENCE: begin
                        rerun = 0;
                        seq_timer_enable = 1; 
                        seq_count_enable = 1; 

                        pulse = seq_timer_pulse;
                        non_seq_b = 0;
                        round_count_reset = 0;
                        randomize = 0; // turns off randomization
                        topline = "WATCH CLOSELY...";
                        bottomline = {"PLAYER SCORE: ", player_tens_converted, player_ones_converted};
                        seq_count_reset = 0; 
                        led_enable = 0; // turns off LEDs
                        seq_timer_reset = 0;
                        n_state = SEQUENCE; // keeps in sequence state
                        if (key_sequence_count < 3) begin
                                led_enable = seq_timer_hold; // turns LEDs on while seq_timer_pulse is high
                                // enables timer, which will output pulse (every sec) and hold (for 3/4 sec)
                                color = rand_color; // selects the random color for simon
                                rerun = 0; 
                                seq_count_reset = 0;  
                                round_count_reset = 0; 
                        end else begin
                                pulse = 0;
                                seq_count_reset = 1;
                                //seq_timer_reset = 1;
                                seq_timer_enable = 0;
                                rerun = 1;
                                n_state = USERINPUT;
                        end
                end

                USERINPUT: begin
                        pulse = non_seq_pulse;
                        rerun = 0;
                        seq_timer_enable = 1;
                        seq_count_enable = 1;
                        non_seq_b = 0;
                        color = sel_color;
                        topline =    "AWAITING INPUT..";
                        bottomline = {"PLAYER SCORE: ", player_tens_converted, player_ones_converted};
                        led_enable = 0;
                        n_state = USERINPUT;
//                        color = sel_color;
                        // cheat mode reset 
                        if (deb_press != 4'b0000) n_state = HOLD;
                        if (btnR) begin
                                seq_timer_enable = 1;
                                rerun = 1;
                                seq_timer_reset = 1;
                                seq_count_reset = 1;
                                n_state = WAIT;
                        end
                        
                        // when user presses a button, it lights up and plays tone
                        // button debouncing necessary so that each is only registered once
                        // once button released, compare to appropriate key in sequence 
                        // if user presses the correct key, go to CORRECT.
                        // if user presses correct key and key_sequence_count == round_count, 
                        // go to SEQUENCECOMPLETE
                        // if they don't, go to INCORRECT

                end
                
                HOLD: begin
                    seq_count_enable = 1;
                    topline =    "HOLDING INPUT.. ";
                    bottomline = {"PLAYER SCORE: ", player_tens_converted, player_ones_converted};
                    led_enable = 1;
                    color = rand_color;
                    n_state = HOLD;
                    if (deb_held == 4'b0000) begin
                        if (sel_color == rand_color) begin
                            seq_count_enable = 1;
                            n_state = CORRECT;
                        end else begin
                            n_state = INCORRECT;
                        end
                    end
                end

                CORRECT: begin
                        seq_count_enable = 1;
                        pulse = non_seq_pulse;
                        non_seq_b = 1;
                        led_enable = 0;
                        n_state = CORRECT;
                        if (key_sequence_count < 3) begin
                            n_state = USERINPUT;
                        end else begin
                            n_state = SEQUENCECOMPLETE;
                        end
                        // increment key_sequence_count
                        // go back to USERINPUT, unless
                        topline =    "INPUT CORRECT :)";
                        bottomline = {"PLAYER SCORE: ", player_tens_converted, player_ones_converted};



                end

                SEQUENCECOMPLETE: begin
                        n_state = SEQUENCECOMPLETE;
                        topline =     "SCORE INCREASED!";
                        bottomline = {"PLAYER SCORE: ", player_tens_converted, player_ones_converted};

                        // if USERINPUT is successful, play a success tone
                        // update score_count and LCD message
                        // increment round_count and go to SEQUENCE
                end

                INCORRECT: begin
                        player_score = 0;
                        topline = "YOU MESSED UP...";
                        bottomline = {"PLAYER SCORE: ", player_tens_converted, player_ones_converted};
                        n_state = INCORRECT;
                        // play failure tone
                        // wait a second
                        // return to IDLE
                end

                default: begin
                        n_state = IDLE;
                end
        endcase
end
endmodule