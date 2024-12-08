module state_machine(
    output reg [5:0] c_state, n_state, 

    output     [1:0] loc,
    output reg       led_speaker_en,

    output reg       seq_timer_rt, seq_timer_en,
    output reg       wait_timer_rt, wait_timer_en,
    output reg       rnd_count_rt, rnd_count_en,
    output reg       seq_count_rt, seq_count_en,
    output reg       usr_count_rt, usr_count_en,
    output reg       seq_count_pulse, rnd_count_pulse, usr_count_pulse,
    output reg       win, jingle_rt, sound_sel, 

    output reg       seq_rand_step, seq_rand_rr, seq_rand_rt, seq_rand_rz, seq_rand_en,

    output reg [3:0] wait_time,

    output reg [8*16-1:0] lcd_msg,
    
    input [1:0] btn_loc, 
    input       btn_press, btn_held, btn_released,
    input       reset, enable,
    input       clk,

    input [4:0] seq_count_int, rnd_count_int, usr_count_int,
    input       seq_timer_pulse, seq_timer_hold, wait_timer_pulse,
    input [1:0] seq_rand_loc,
    input [1:0] cheat
);

// defined states as local params
localparam IDLE=1, RAND=2, WAIT_SEQ=3, SEQ=4, USR_IN=5, PASS=6,
           FAIL=7, SEQ_COMP=8, WAIT_USR=9, USR_SCORE=10, HOLD=11, CHECK=12, CHECK_COMP=13;

// switches loc to eithier btn_loc or seq_rand_loc using a mux
// default is 0, switches on sequence
reg select_loc;
assign loc = select_loc ? btn_loc : seq_rand_loc;

reg [29:0] seq_count;   
reg hold, pulse,  seq_reset;
localparam ONESEC = 100_000_000, HALFSEC = 50_000_000, TRIPLESEC = 75_000_000;

always @(posedge clk) begin
    seq_count = seq_count + 1;
    if ((seq_count == ONESEC)  ||  (seq_reset))begin
        seq_count = 0;
    end
end

always @* begin
    hold = 0;
    pulse = 0;
    if (seq_count == 0) begin
        pulse = 1;
    end
    if ((seq_count <= TRIPLESEC)) begin
        hold = 1;
    end
end
always @(posedge clk) begin
    c_state <= n_state;
    if (reset) begin
        c_state <= IDLE;
    end
end

// makes sure we don't have to keep manually
// turning things off or on when we want them by default to be one way
// should also mean things get pulled down (or up) one clock pulse later
wire hold_fall_edge;
debouncer deb_hold(
    .pressed(hold_fall_edge), 
    .button(~hold),
    .reset(reset),
    .clk(clk)

);
always @* begin
    // default off
    usr_count_rt = 0;
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
    usr_count_pulse = 0;
    usr_count_rt = 0;
    seq_reset = 0; 
    jingle_rt = 1;
    sound_sel = 1;
    // default on
    rnd_count_en = 1;
    seq_count_en = 1;
    seq_timer_en = 1;
    wait_timer_en = 1;
    seq_rand_en = 1;
    usr_count_en = 1;

    // misc
    lcd_msg = "default         ";
    wait_time = 0;
    select_loc = 1;

    case (c_state)
        IDLE:  begin
            n_state = IDLE;
            lcd_msg = "Green to play   ";

            rnd_count_rt = 1;
            seq_count_rt = 1;
            seq_timer_rt = 1;
            wait_timer_rt = 1;
            usr_count_rt = 1;
            seq_rand_rt = 1;

            if ((btn_loc == 2'b00) && (btn_held)) begin 
                led_speaker_en = 1;
                n_state = RAND;
            end
        end
        RAND: begin

            n_state = RAND;
            lcd_msg = "Randomizing    ";
            
            seq_rand_rz = 1; //enables our randomizer
            led_speaker_en = 1;

            if (!btn_held) begin
                n_state = WAIT_SEQ;
                wait_timer_rt = 0;
            end
        end
        WAIT_SEQ: begin
            n_state = WAIT_SEQ;
            lcd_msg = "WAIT           ";

            wait_time = 1;

            if (wait_timer_pulse) begin
                seq_reset = 1;
                n_state = SEQ;
            end
        end
        SEQ: begin
            n_state = SEQ;
            lcd_msg = "WATCH CLOSELY...";
            
            if (hold) led_speaker_en = 1;
           
            select_loc = 0;

            if (hold_fall_edge) begin
                seq_count_pulse = 1;
                seq_rand_step = 1;
            end
            
            if (seq_count_int >= rnd_count_int+1) n_state = WAIT_USR;

        end
        WAIT_USR: begin
            n_state = WAIT_USR;
            lcd_msg = "               ";

            if (wait_timer_pulse) n_state = USR_IN;
        end
        USR_IN: begin
            n_state = USR_IN;
            lcd_msg = "Repeat!         ";
            if (cheat [1]) begin
                n_state = WAIT_SEQ;
                seq_rand_rr = 1;
                seq_count_rt = 1;
                usr_count_rt = 1;
            end
            if (btn_press) begin
               n_state = HOLD; 
            end 

            if (usr_count_int == 0) seq_rand_rr = 1;

        end
        HOLD: begin 
            n_state = HOLD;
            lcd_msg = "HOLDING         ";
            led_speaker_en = 1;
            if (btn_released) n_state = CHECK;
        end
        CHECK: begin
            n_state = CHECK;
            if (btn_loc == seq_rand_loc) begin
                n_state = PASS;
            end else
            if (btn_loc != seq_rand_loc) begin
                n_state = FAIL;
            end
        end
        PASS: begin
            n_state = PASS;
            lcd_msg = "Correct        ";

            if (usr_count_int < seq_count_int) begin
                usr_count_pulse = 1;
                seq_rand_step = 1;
                n_state = CHECK_COMP;
            end
        
        end
        CHECK_COMP: begin
            n_state = USR_IN;
            lcd_msg = "CHECKING        ";
            if (usr_count_int == seq_count_int) begin
                n_state = USR_SCORE;
            end
        end
        FAIL: begin
            n_state = FAIL;
            lcd_msg = "WRONG CHOICE   ";
            jingle_rt = 0;
            win = 1;
            sound_sel = 0;
            wait_time = 2;
            if (wait_timer_pulse) n_state = IDLE;
        end
        USR_SCORE: begin
            n_state = SEQ_COMP;
            rnd_count_pulse = 1;
        end
        SEQ_COMP: begin
            n_state = SEQ_COMP;
            lcd_msg = "Score Increased";
            jingle_rt = 0;
            sound_sel = 0;
            win = 0;
            seq_count_rt = 1;
            usr_count_rt = 1;
            seq_rand_rr = 1;
            wait_time = 2;
            
            if (wait_timer_pulse) n_state = WAIT_SEQ;
        end
        default: n_state = IDLE; 
    endcase
end

endmodule
