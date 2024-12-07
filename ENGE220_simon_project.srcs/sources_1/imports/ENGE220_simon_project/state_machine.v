module state_machine(
    output reg [5:0] c_state, n_state, 

    output reg [1:0] loc,
    output reg       led_speaker_en

    output reg       seq_timer_rt, seq_timer_en,
    output reg       wait_counter_rt, wait_counter_en,
    output reg       rnd_count_rt, rnd_count_en,
    output reg       seq_count_rt, seq_count_en,
    output reg       seq_count_pulse, rnd_count_pulse,

    output reg       seq_rand_step, seq_rand_rr, seq_rand_rt, seq_rand_rz,

    output reg [3:0] wait_time;

    output reg [8*16-1:0] lcd_msg,
    
    input [1:0] btn_loc, 
    input       btn_press, btn_held,
    input       reset, enable,
    input       clk,

    input [4:0] seq_count_int, rnd_count_int, usr_count_int,
    input       seq_timer_pulse, seq_timer_hold, wait_timer_pulse,
    input [2:0] seq_rand_loc
);

// defined states as local params
localparam IDLE=1, RAND=2, WAIT=3, SEQ=4, USR_IN=5, PASS=6, FAIL=6, SEQ_COMP=7;

always @(posedge clk) begin
    c_state <= n_state;
    if (reset) begin
        c_state = IDLE;
    end
end

// makes sure we don't have to keep manually
// turning things off or on when we want them by default to be one way
// should also mean things get pulled down (or up) one clock pulse later
always @* begin
    // default off
    rnd_count_rt = 0;
    seq_count_rt = 0;
    seq_timer_rt = 0;
    wait_timer_rt = 0;
    seq_rand_rt = 0;
    seq_rand_step = 0;
    seq_rand_rr = 0;
    seq_rand_rz = 0;
    led_speaker_en = 0;
    rnd_count_pulse = 0;
    seq_count_pulse = 0;
    
    // default on
    rnd_count_en = 1;
    seq_count_en = 1;
    seq_timer_en = 1;
    wait_timer_en = 1;
    seq_rand_en = 1;

    // misc
    wait_time = 0;
    loc = btn_loc;
end

always @* begin
    case (c_state)
        IDLE:  begin
            n_state = IDLE;
            lcd_msg = "Green to play  ";

            rnd_count_rt = 1;
            seq_count_rt = 1;
            seq_timer_rt = 1;
            wait_counter_rt = 1;
            seq_rand_rt = 1;

            if ((btn_loc == 2'b00) && (btn_press)) begin 
                led_speaker_enable = 1;
                n_state = RAND;
            end
        end
        RAND: begin
            n_state = RAND;
            lcd_msg = "Randomizing    ";
            
            seq_rand_rr = 1; //enables our randomizer

            if (!btn_held) n_state = WAIT;
        end
        WAIT: begin
            n_state = WAIT;
            lcd_msg = "               ";

            wait_time = 2;

            if (wait_timer_pulse) n_state = SEQ;
        end
        SEQ: begin
            n_state = SEQ;
            lcd_msg = "WATCH CLOSELY..."

            led_speaker_en = seq_timer_hold;
            loc = seq_rand_loc;

            if (seq_timer_pulse) begin
                seq_rand_step = 1;
                seq_count_pulse = 1;
            end

            if (seq_count_int == round_count_int) n_state = USR_IN;
        end
        USR_IN: begin
            n_state = USR_IN;
            lcd_msg = "Repeat!         ";

            if (btn_press) led_speaker_enable = 1;
            if (usr_count_int == 0) rerun = 1;

            if (btn_press && (btn_loc == seq_rand_loc)) begin
                seq_rand_step = 1;
                n_state = PASS;
            end else
            if (btn_press && (btn_loc != seq_rand_loc)) begin
                n_state = FAIL;
            end
        end

        default: n_state = IDLE; 
    endcase
end