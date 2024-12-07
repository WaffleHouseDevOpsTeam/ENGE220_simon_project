// just module instances and the state machine!
module top(
        output [2:0] simon_led0, simon_led1, simon_led2, simon_led3,
        output [7:0] seg_n,
        output [3:0] an_n,
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

        //  State Machine Inputs
        wire [3:0] deb_held;
        wire [3:0] deb_press;
        wire deb_held_enable = deb_held[0] | deb_held[1] | deb_held[2] | deb_held[3];
        wire button_ctrl_out;
        reg reset, lcd_reset;
        reg [1:0] round_color;
        
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

        lcd_string LCDstringer (
                .lcd_regsel(lcd_regsel),
                .lcd_enable(lcd_enable),
                .lcd_data(lcd_data),
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
        
        
        counter user_ct (
                .count(user_seq_count),
                .pulse_in(non_seq_pulse),
                .reset(non_seq_count_reset),
                .enable(non_seq_count_enable),
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

        state_machine sm (
        );