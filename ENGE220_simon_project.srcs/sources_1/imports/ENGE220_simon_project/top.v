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
        output servo,
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
        wire [3:0] deb_released;

        wire lcd_reset = sw [0];
        wire deb_press_tot = deb_press [0] | deb_press [1] | deb_press [2] | deb_press [3];
        wire deb_held_tot = deb_held [0] | deb_held [1] | deb_held [2] | deb_held [3];        
        wire deb_released_tot =  deb_released [0] | deb_released [1] | deb_released [2] | deb_released [3];
        wire reset = btnC;
        
        // LCD
        wire [8*16-1:0] lcd_msg;
        wire [8*16-1:0] lcd_score;
        reg lcd_string_print;

        // state machine internal
        wire [4:0] c_state, n_state; 
        wire [1:0] btn_loc;
        
        wire [9:0] seq_rand_val;
        // score
        reg [7:0] player_score;
        wire [3:0] player_tens, player_ones;
        wire [7:0] player_tens_converted = {4'b0011, player_tens};
        wire [7:0] player_ones_converted = {4'b0011, player_ones};

        assign lcd_score = {"SCORE:        ", player_tens_converted, player_ones_converted};
        wire [7:0] seq_count_int, rnd_count_int, usr_count_int;
        wire [1:0] color;
        wire [1:0] loc;
        wire       led_speaker_en;
        wire [1:0] seq_rand_loc;
        wire      seq_timer_rt, seq_timer_en;
        wire      wait_timer_rt, wait_timer_en;
        wire      rnd_count_rt, rnd_count_en;
        wire      seq_count_rt, seq_count_en;
        wire      usr_count_rt, usr_count_en;
        wire      seq_count_pulse, rnd_count_pulse, usr_count_pulse;
        wire [17:0] note_wr;
        wire      seq_rand_step, seq_rand_rr, seq_rand_rt, seq_rand_rz, seq_rand_en;
        assign seq_rand_loc = seq_rand_val [1:0];
        wire [3:0] wait_time;
        assign led [5:0] = c_state;
        assign led [10:5] = n_state;
        assign led [12:11] = seq_rand_loc;
        assign led [13] = seq_rand_rz;
        assign led [15:14] = btn_loc;
        wire [1:0] cheat = {btnR, sw [1]};
        wire wait_timer_hold;
        assign servo = wait_timer_hold;
        
        //periodicly updates lcd on pos edge of clock
        always @(posedge clk) begin
                lcd_string_print <= 0;
                if (lcd_avail) begin
                        lcd_string_print<= 1;
                end
        end            

        lcd_string LCDstringer (
                .lcd_regsel(lcd_regsel),
                .lcd_enable(lcd_enable),
                .lcd_data(lcd_data),
                .available(lcd_avail),
                .print(lcd_string_print), 
                .topline(lcd_msg), 
                .bottomline(lcd_score),
                .reset(lcd_reset),
                .clk(clk)
                );
        
        debouncer deb_s0 (
                .pressed(deb_press[0]), 
                .held(deb_held[0]),
                .button(simon_buttons[0]), 
                .released(deb_released [0]),
                .reset(reset),
                .clk(clk)
        );

        debouncer deb_s1 (
                .pressed(deb_press[1]), 
                .held(deb_held[1]),
                .button(simon_buttons[1]), 
                .released(deb_released [1]),
                .reset(reset),
                .clk(clk)
        );

        debouncer deb_s2 (
                .pressed(deb_press[2]), 
                .held(deb_held[2]), 
                .released(deb_released [2]),
                .button(simon_buttons[2]),
                .reset(reset),
                .clk(clk)
        );

        debouncer deb_s3 (
                .pressed(deb_press[3]), 
                .held(deb_held[3]),                
                .released(deb_released [3]),
                .button(simon_buttons[3]),

                .reset(reset),
                .clk(clk)

        );

        button_ctrl simon_button_loc (
                .button_loc(btn_loc),
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
                .enable(led_speaker_en)
        );
        
        PRNG simon_rand(
                .random(seq_rand_val),
                .step(seq_rand_step),
                .rerun(seq_rand_rr),
                .randomize(seq_rand_rz),
                .clk(clk),
                .reset(seq_rand_rt)
        );


        wire sound_sel;
        scale_decoder simon_scl_dec (
                .note(note_wr),
                .sel(note_encode),
                .enable(1)       
        );

        speakerselect simon_spk (
                .speaker(speaker),
                .note(note_wr),
                .enable(speaker_enable),
                .clk(clk)
        );

        counter seq_ct (
                .count(seq_count_int),
                .pulse_in(seq_count_pulse),
                .reset(seq_count_rt),
                .enable(seq_count_en),
                .clk(clk)
        );
        
        
        counter usr_ct (
                .count(usr_count_int),
                .pulse_in(usr_count_pulse),
                .reset(usr_count_rt),
                .enable(usr_count_en),
                .clk(clk)
        );
        counter rnd_ct (
                .count(rnd_count_int),
                .pulse_in(rnd_count_pulse),
                .reset(rnd_count_rt),
                .enable(rnd_count_en),
                .clk(clk)
        );

        timer seq_t (
                .pulse(seq_timer_pulse),
                .hold(seq_timer_hold),
                .reset(seq_timer_rt),
                .enable(seq_timer_en),
                .factor(1),
                .clk(clk)
        );
        
        wire jingle_rt, jingle_hold;
        wire [1:0] jingle;
        wire win;

        jingle_timer jingle_t (
                .note(jingle),
                .hold(jingle_hold),
                .reset(jingle_rt),
                .win(win),
                .enable(1),
                .clk(clk)
        );

        timer wait_t (
                .pulse(wait_timer_pulse),
                .hold(wait_timer_hold),
                .reset(wait_timer_rt),
                .enable(1),
                .factor(wait_time),
                .clk(clk)
        );

        binary_to_BCD converter (
                .A(rnd_count_int),
                .ONES(player_ones),
                .TENS(player_tens)
        );

        wire [7:0] seg_disp;
        assign seg_disp = cheat [0] ? seq_rand_val [9:2] : 8'b0;

        seg_ctrl seven_seg (
                .seg_n(seg_n),
                .an_n(an_n),
                .D(seg_disp [1:0]),
                .C(seg_disp [3:2]),
                .B(seg_disp [6:4]),
                .A(seg_disp [7:6]),
                .clk(clk)
        );
        wire [1:0] note_encode = sound_sel ? color : jingle;
        wire speaker_enable = sound_sel ? led_speaker_en : jingle_hold; 
        
        state_machine sm (
                .n_state(n_state), .c_state(c_state),
                .loc(color),
                .led_speaker_en(led_speaker_en),
                .seq_timer_rt(seq_timer_rt), .seq_timer_en(seq_timer_en),
                .wait_timer_rt(wait_timer_rt), .wait_timer_en(wait_timer_en),
                .rnd_count_rt(rnd_count_rt), .rnd_count_en(rnd_count_en),
                .seq_count_rt(seq_count_rt), .seq_count_en(seq_count_en),
                .usr_count_rt(usr_count_rt), .usr_count_en(usr_count_en),
                .seq_count_pulse(seq_count_pulse), .rnd_count_pulse(rnd_count_pulse), .usr_count_pulse(usr_count_pulse),
                .seq_rand_step(seq_rand_step), .seq_rand_rr(seq_rand_rr), .seq_rand_rt(seq_rand_rt), .seq_rand_rz(seq_rand_rz),
                .wait_time(wait_time),
                .lcd_msg(lcd_msg), .sound_sel(sound_sel), .jingle_rt(jingle_rt), .win(win),

                .btn_loc(btn_loc), 
                .btn_press(deb_press_tot), .btn_held(deb_held_tot), .btn_released(deb_released_tot),
                .reset(reset), .enable(1),
                .clk(clk),
                .seq_count_int(seq_count_int), .rnd_count_int(rnd_count_int), 
                .usr_count_int(usr_count_int),
                .seq_timer_pulse(seq_timer_pulse), .seq_timer_hold(seq_timer_hold), 
                .wait_timer_pulse(wait_timer_pulse),
                .seq_rand_loc(seq_rand_loc), .cheat(cheat)
        );
endmodule
