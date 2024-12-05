// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Dec  4 21:33:11 2024
// Host        : WM106-ST08_01 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.sim/sim_1/synth/func/xsim/LFSR_tb_func_synth.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LFSR
   (led_OBUF,
    randomize,
    clk_IBUF_BUFG);
  output [0:0]led_OBUF;
  input randomize;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire [0:0]led_OBUF;
  wire [5:1]lfsr;
  wire \lfsr_reg[6]_srl10_n_0 ;
  wire [15:15]p_0_out__0;
  wire randomize;

  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(randomize),
        .D(lfsr[1]),
        .Q(led_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(randomize),
        .D(lfsr[2]),
        .Q(lfsr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(randomize),
        .D(lfsr[3]),
        .Q(lfsr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(randomize),
        .D(lfsr[4]),
        .Q(lfsr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(randomize),
        .D(lfsr[5]),
        .Q(lfsr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(randomize),
        .D(\lfsr_reg[6]_srl10_n_0 ),
        .Q(lfsr[5]),
        .R(1'b0));
  (* srl_bus_name = "\\simon_rand/u1/lfsr_reg " *) 
  (* srl_name = "\\simon_rand/u1/lfsr_reg[6]_srl10 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \lfsr_reg[6]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(randomize),
        .CLK(clk_IBUF_BUFG),
        .D(p_0_out__0),
        .Q(\lfsr_reg[6]_srl10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    p_0_out
       (.I0(lfsr[3]),
        .I1(lfsr[2]),
        .I2(led_OBUF),
        .I3(lfsr[5]),
        .O(p_0_out__0));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module LFSR__parameterized0
   (led_OBUF,
    randomize,
    clk_IBUF_BUFG);
  output [0:0]led_OBUF;
  input randomize;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire [0:0]led_OBUF;
  wire [5:1]lfsr__0;
  wire \lfsr_reg[6]_srl10_n_0 ;
  wire p_0_out_n_0;
  wire randomize;

  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(randomize),
        .D(lfsr__0[1]),
        .Q(led_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(randomize),
        .D(lfsr__0[2]),
        .Q(lfsr__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(randomize),
        .D(lfsr__0[3]),
        .Q(lfsr__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(randomize),
        .D(lfsr__0[4]),
        .Q(lfsr__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(randomize),
        .D(lfsr__0[5]),
        .Q(lfsr__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(randomize),
        .D(\lfsr_reg[6]_srl10_n_0 ),
        .Q(lfsr__0[5]),
        .R(1'b0));
  (* srl_bus_name = "\\simon_rand/u2/lfsr_reg " *) 
  (* srl_name = "\\simon_rand/u2/lfsr_reg[6]_srl10 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \lfsr_reg[6]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(randomize),
        .CLK(clk_IBUF_BUFG),
        .D(p_0_out_n_0),
        .Q(\lfsr_reg[6]_srl10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    p_0_out
       (.I0(lfsr__0[3]),
        .I1(lfsr__0[2]),
        .I2(led_OBUF),
        .I3(lfsr__0[5]),
        .O(p_0_out_n_0));
endmodule

module PRNG
   (led_OBUF,
    randomize,
    clk_IBUF_BUFG);
  output [1:0]led_OBUF;
  input randomize;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire [1:0]led_OBUF;
  wire randomize;

  LFSR u1
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[0]),
        .randomize(randomize));
  LFSR__parameterized0 u2
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[1]),
        .randomize(randomize));
endmodule

module button_ctrl
   (simon_led3_OBUF,
    simon_led2_OBUF,
    simon_led1_OBUF,
    simon_led0_OBUF,
    led_enable,
    \simon_led3[0] ,
    \button_loc_reg[1]_0 ,
    bt_deb_d,
    \button_loc_reg[1]_1 ,
    bt_deb_d_0,
    \button_loc_reg[1]_2 ,
    \button_loc_reg[0]_0 ,
    bt_deb_d_1,
    clk_IBUF_BUFG);
  output [0:0]simon_led3_OBUF;
  output [0:0]simon_led2_OBUF;
  output [0:0]simon_led1_OBUF;
  output [0:0]simon_led0_OBUF;
  input led_enable;
  input \simon_led3[0] ;
  input \button_loc_reg[1]_0 ;
  input bt_deb_d;
  input \button_loc_reg[1]_1 ;
  input bt_deb_d_0;
  input \button_loc_reg[1]_2 ;
  input \button_loc_reg[0]_0 ;
  input bt_deb_d_1;
  input clk_IBUF_BUFG;

  wire bt_deb_d;
  wire bt_deb_d_0;
  wire bt_deb_d_1;
  wire \button_loc[0]_i_1_n_0 ;
  wire \button_loc[1]_i_1_n_0 ;
  wire \button_loc_reg[0]_0 ;
  wire \button_loc_reg[1]_0 ;
  wire \button_loc_reg[1]_1 ;
  wire \button_loc_reg[1]_2 ;
  wire clk_IBUF_BUFG;
  wire led_enable;
  wire [1:0]sel_color;
  wire [0:0]simon_led0_OBUF;
  wire [0:0]simon_led1_OBUF;
  wire [0:0]simon_led2_OBUF;
  wire \simon_led3[0] ;
  wire [0:0]simon_led3_OBUF;

  LUT6 #(
    .INIT(64'h22F2FFFF22F20000)) 
    \button_loc[0]_i_1 
       (.I0(\button_loc_reg[0]_0 ),
        .I1(bt_deb_d_1),
        .I2(\button_loc_reg[1]_1 ),
        .I3(bt_deb_d_0),
        .I4(\button_loc_reg[1]_2 ),
        .I5(sel_color[0]),
        .O(\button_loc[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F20000)) 
    \button_loc[1]_i_1 
       (.I0(\button_loc_reg[1]_0 ),
        .I1(bt_deb_d),
        .I2(\button_loc_reg[1]_1 ),
        .I3(bt_deb_d_0),
        .I4(\button_loc_reg[1]_2 ),
        .I5(sel_color[1]),
        .O(\button_loc[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \button_loc_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\button_loc[0]_i_1_n_0 ),
        .Q(sel_color[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_loc_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\button_loc[1]_i_1_n_0 ),
        .Q(sel_color[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'hFF02)) 
    \simon_led0_OBUF[1]_inst_i_1 
       (.I0(led_enable),
        .I1(sel_color[0]),
        .I2(sel_color[1]),
        .I3(\simon_led3[0] ),
        .O(simon_led0_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    \simon_led1_OBUF[0]_inst_i_1 
       (.I0(led_enable),
        .I1(sel_color[0]),
        .I2(sel_color[1]),
        .I3(\simon_led3[0] ),
        .O(simon_led1_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    \simon_led2_OBUF[2]_inst_i_1 
       (.I0(led_enable),
        .I1(sel_color[1]),
        .I2(sel_color[0]),
        .I3(\simon_led3[0] ),
        .O(simon_led2_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \simon_led3_OBUF[1]_inst_i_1 
       (.I0(led_enable),
        .I1(sel_color[0]),
        .I2(sel_color[1]),
        .I3(\simon_led3[0] ),
        .O(simon_led3_OBUF));
endmodule

module counter
   (\c_state_reg[0] ,
    D,
    \count_reg[5]_0 ,
    Q,
    led_OBUF_0_sp_1,
    led_OBUF,
    deb_held_0,
    seq_count_reset,
    E,
    clk_IBUF_BUFG);
  output \c_state_reg[0] ;
  output [0:0]D;
  output \count_reg[5]_0 ;
  output [6:0]Q;
  input led_OBUF_0_sp_1;
  input [0:0]led_OBUF;
  input deb_held_0;
  input seq_count_reset;
  input [0:0]E;
  input clk_IBUF_BUFG;

  wire [0:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire \c_state_reg[0] ;
  wire clk_IBUF_BUFG;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[6]_i_1_n_0 ;
  wire \count[7]_i_10_n_0 ;
  wire \count[7]_i_1_n_0 ;
  wire \count[7]_i_3_n_0 ;
  wire \count[7]_i_4_n_0 ;
  wire \count_reg[5]_0 ;
  wire \count_reg_n_0_[7] ;
  wire deb_held_0;
  wire [0:0]led_OBUF;
  wire led_OBUF_0_sn_1;
  wire \n_state_reg[0]_i_2_n_0 ;
  wire seq_count_reset;

  assign led_OBUF_0_sn_1 = led_OBUF_0_sp_1;
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(Q[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(\count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_1 
       (.I0(\count[7]_i_10_n_0 ),
        .I1(Q[6]),
        .O(\count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEEEEEEEEE)) 
    \count[7]_i_1 
       (.I0(\count_reg_n_0_[7] ),
        .I1(seq_count_reset),
        .I2(\count[7]_i_4_n_0 ),
        .I3(Q[2]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \count[7]_i_10 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[7]_i_3 
       (.I0(Q[6]),
        .I1(\count[7]_i_10_n_0 ),
        .O(\count[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[7]_i_4 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\count[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\count[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\count[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\count[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\count[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\count[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\count[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\count[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\count[7]_i_3_n_0 ),
        .Q(\count_reg_n_0_[7] ),
        .R(\count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \n_state_reg[0]_i_1 
       (.I0(\n_state_reg[0]_i_2_n_0 ),
        .I1(led_OBUF),
        .I2(deb_held_0),
        .O(D));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \n_state_reg[0]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(Q[5]),
        .O(\n_state_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010001)) 
    seq_count_enable_reg_i_1
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\count_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h04)) 
    seq_count_enable_reg_i_2
       (.I0(led_OBUF_0_sn_1),
        .I1(led_OBUF),
        .I2(\n_state_reg[0]_i_2_n_0 ),
        .O(\c_state_reg[0] ));
endmodule

module debouncer
   (bt_deb_d,
    deb_held_0,
    \c_state_reg[1] ,
    bt_deb_reg_0,
    bt_deb_reg_1,
    bt_deb_reg_2,
    bt_deb_reg_3,
    bt_deb_reg_4,
    D,
    bt_deb_reg_5,
    clk_IBUF_BUFG,
    led_OBUF,
    \line1_reg[0] ,
    led_OBUF_0_sp_1,
    simon_buttons_n_IBUF);
  output bt_deb_d;
  output deb_held_0;
  output \c_state_reg[1] ;
  output bt_deb_reg_0;
  output bt_deb_reg_1;
  output bt_deb_reg_2;
  output bt_deb_reg_3;
  output bt_deb_reg_4;
  output [0:0]D;
  output bt_deb_reg_5;
  input clk_IBUF_BUFG;
  input [0:0]led_OBUF;
  input [0:0]\line1_reg[0] ;
  input led_OBUF_0_sp_1;
  input [0:0]simon_buttons_n_IBUF;

  wire [0:0]D;
  wire bt_deb_d;
  wire bt_deb_i_1_n_0;
  wire bt_deb_reg_0;
  wire bt_deb_reg_1;
  wire bt_deb_reg_2;
  wire bt_deb_reg_3;
  wire bt_deb_reg_4;
  wire bt_deb_reg_5;
  wire bt_samp;
  wire bt_samp_i_1_n_0;
  wire bt_samp_reg_n_0;
  wire \c_state_reg[1] ;
  wire clk_IBUF_BUFG;
  wire deb_held_0;
  wire [0:0]led_OBUF;
  wire led_OBUF_0_sn_1;
  wire [0:0]\line1_reg[0] ;
  wire [0:0]simon_buttons_n_IBUF;
  wire [21:0]timer;
  wire timer0_carry__0_i_1_n_0;
  wire timer0_carry__0_i_2_n_0;
  wire timer0_carry__0_i_3_n_0;
  wire timer0_carry__0_i_4_n_0;
  wire timer0_carry__0_n_0;
  wire timer0_carry__0_n_1;
  wire timer0_carry__0_n_2;
  wire timer0_carry__0_n_3;
  wire timer0_carry__0_n_4;
  wire timer0_carry__0_n_5;
  wire timer0_carry__0_n_6;
  wire timer0_carry__0_n_7;
  wire timer0_carry__1_i_1_n_0;
  wire timer0_carry__1_i_2_n_0;
  wire timer0_carry__1_i_3_n_0;
  wire timer0_carry__1_i_4_n_0;
  wire timer0_carry__1_n_0;
  wire timer0_carry__1_n_1;
  wire timer0_carry__1_n_2;
  wire timer0_carry__1_n_3;
  wire timer0_carry__1_n_4;
  wire timer0_carry__1_n_5;
  wire timer0_carry__1_n_6;
  wire timer0_carry__1_n_7;
  wire timer0_carry__2_i_1_n_0;
  wire timer0_carry__2_i_2_n_0;
  wire timer0_carry__2_i_3_n_0;
  wire timer0_carry__2_i_4_n_0;
  wire timer0_carry__2_n_0;
  wire timer0_carry__2_n_1;
  wire timer0_carry__2_n_2;
  wire timer0_carry__2_n_3;
  wire timer0_carry__2_n_4;
  wire timer0_carry__2_n_5;
  wire timer0_carry__2_n_6;
  wire timer0_carry__2_n_7;
  wire timer0_carry__3_i_1_n_0;
  wire timer0_carry__3_i_2_n_0;
  wire timer0_carry__3_i_3_n_0;
  wire timer0_carry__3_i_4_n_0;
  wire timer0_carry__3_n_0;
  wire timer0_carry__3_n_1;
  wire timer0_carry__3_n_2;
  wire timer0_carry__3_n_3;
  wire timer0_carry__3_n_4;
  wire timer0_carry__3_n_5;
  wire timer0_carry__3_n_6;
  wire timer0_carry__3_n_7;
  wire timer0_carry__4_i_1_n_0;
  wire timer0_carry__4_n_7;
  wire timer0_carry_i_1_n_0;
  wire timer0_carry_i_2_n_0;
  wire timer0_carry_i_3_n_0;
  wire timer0_carry_i_4_n_0;
  wire timer0_carry_n_0;
  wire timer0_carry_n_1;
  wire timer0_carry_n_2;
  wire timer0_carry_n_3;
  wire timer0_carry_n_4;
  wire timer0_carry_n_5;
  wire timer0_carry_n_6;
  wire timer0_carry_n_7;
  wire \timer[0]__0_i_1_n_0 ;
  wire \timer[21]__0_i_2_n_0 ;
  wire \timer[21]__0_i_3_n_0 ;
  wire \timer[21]__0_i_4_n_0 ;
  wire \timer[21]__0_i_5_n_0 ;
  wire \timer[21]__0_i_6_n_0 ;
  wire \timer[21]__0_i_7_n_0 ;
  wire [3:0]NLW_timer0_carry__4_CO_UNCONNECTED;
  wire [3:1]NLW_timer0_carry__4_O_UNCONNECTED;

  assign led_OBUF_0_sn_1 = led_OBUF_0_sp_1;
  FDRE #(
    .INIT(1'b0)) 
    bt_deb_d_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(deb_held_0),
        .Q(bt_deb_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'hFB02)) 
    bt_deb_i_1
       (.I0(bt_samp_reg_n_0),
        .I1(simon_buttons_n_IBUF),
        .I2(\timer[21]__0_i_2_n_0 ),
        .I3(deb_held_0),
        .O(bt_deb_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bt_deb_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(bt_deb_i_1_n_0),
        .Q(deb_held_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    bt_samp_i_1
       (.I0(bt_samp_reg_n_0),
        .I1(\timer[21]__0_i_2_n_0 ),
        .I2(simon_buttons_n_IBUF),
        .O(bt_samp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bt_samp_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(bt_samp_i_1_n_0),
        .Q(bt_samp_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'hE)) 
    led_enable_reg_i_1
       (.I0(led_OBUF),
        .I1(deb_held_0),
        .O(\c_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h010C)) 
    \line1[0]_i_1 
       (.I0(deb_held_0),
        .I1(led_OBUF),
        .I2(\line1_reg[0] ),
        .I3(led_OBUF_0_sn_1),
        .O(bt_deb_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h0F08)) 
    \line1[5]_i_1 
       (.I0(deb_held_0),
        .I1(led_OBUF_0_sn_1),
        .I2(\line1_reg[0] ),
        .I3(led_OBUF),
        .O(bt_deb_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h001F)) 
    \line1[6]_i_1 
       (.I0(deb_held_0),
        .I1(led_OBUF),
        .I2(led_OBUF_0_sn_1),
        .I3(\line1_reg[0] ),
        .O(bt_deb_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h0103)) 
    \line2[2]_i_1 
       (.I0(deb_held_0),
        .I1(led_OBUF),
        .I2(\line1_reg[0] ),
        .I3(led_OBUF_0_sn_1),
        .O(bt_deb_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h3323)) 
    \line2[5]_i_1 
       (.I0(deb_held_0),
        .I1(\line1_reg[0] ),
        .I2(led_OBUF_0_sn_1),
        .I3(led_OBUF),
        .O(bt_deb_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \n_state_reg[1]_i_1 
       (.I0(deb_held_0),
        .I1(led_OBUF_0_sn_1),
        .I2(led_OBUF),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    seq_count_reset_reg_i_2
       (.I0(deb_held_0),
        .I1(led_OBUF),
        .I2(led_OBUF_0_sn_1),
        .O(bt_deb_reg_5));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry
       (.CI(1'b0),
        .CO({timer0_carry_n_0,timer0_carry_n_1,timer0_carry_n_2,timer0_carry_n_3}),
        .CYINIT(timer[0]),
        .DI(timer[4:1]),
        .O({timer0_carry_n_4,timer0_carry_n_5,timer0_carry_n_6,timer0_carry_n_7}),
        .S({timer0_carry_i_1_n_0,timer0_carry_i_2_n_0,timer0_carry_i_3_n_0,timer0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__0
       (.CI(timer0_carry_n_0),
        .CO({timer0_carry__0_n_0,timer0_carry__0_n_1,timer0_carry__0_n_2,timer0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(timer[8:5]),
        .O({timer0_carry__0_n_4,timer0_carry__0_n_5,timer0_carry__0_n_6,timer0_carry__0_n_7}),
        .S({timer0_carry__0_i_1_n_0,timer0_carry__0_i_2_n_0,timer0_carry__0_i_3_n_0,timer0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__0_i_1
       (.I0(timer[8]),
        .O(timer0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__0_i_2
       (.I0(timer[7]),
        .O(timer0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__0_i_3
       (.I0(timer[6]),
        .O(timer0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__0_i_4
       (.I0(timer[5]),
        .O(timer0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__1
       (.CI(timer0_carry__0_n_0),
        .CO({timer0_carry__1_n_0,timer0_carry__1_n_1,timer0_carry__1_n_2,timer0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(timer[12:9]),
        .O({timer0_carry__1_n_4,timer0_carry__1_n_5,timer0_carry__1_n_6,timer0_carry__1_n_7}),
        .S({timer0_carry__1_i_1_n_0,timer0_carry__1_i_2_n_0,timer0_carry__1_i_3_n_0,timer0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__1_i_1
       (.I0(timer[12]),
        .O(timer0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__1_i_2
       (.I0(timer[11]),
        .O(timer0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__1_i_3
       (.I0(timer[10]),
        .O(timer0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__1_i_4
       (.I0(timer[9]),
        .O(timer0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__2
       (.CI(timer0_carry__1_n_0),
        .CO({timer0_carry__2_n_0,timer0_carry__2_n_1,timer0_carry__2_n_2,timer0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(timer[16:13]),
        .O({timer0_carry__2_n_4,timer0_carry__2_n_5,timer0_carry__2_n_6,timer0_carry__2_n_7}),
        .S({timer0_carry__2_i_1_n_0,timer0_carry__2_i_2_n_0,timer0_carry__2_i_3_n_0,timer0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__2_i_1
       (.I0(timer[16]),
        .O(timer0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__2_i_2
       (.I0(timer[15]),
        .O(timer0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__2_i_3
       (.I0(timer[14]),
        .O(timer0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__2_i_4
       (.I0(timer[13]),
        .O(timer0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__3
       (.CI(timer0_carry__2_n_0),
        .CO({timer0_carry__3_n_0,timer0_carry__3_n_1,timer0_carry__3_n_2,timer0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(timer[20:17]),
        .O({timer0_carry__3_n_4,timer0_carry__3_n_5,timer0_carry__3_n_6,timer0_carry__3_n_7}),
        .S({timer0_carry__3_i_1_n_0,timer0_carry__3_i_2_n_0,timer0_carry__3_i_3_n_0,timer0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__3_i_1
       (.I0(timer[20]),
        .O(timer0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__3_i_2
       (.I0(timer[19]),
        .O(timer0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__3_i_3
       (.I0(timer[18]),
        .O(timer0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__3_i_4
       (.I0(timer[17]),
        .O(timer0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__4
       (.CI(timer0_carry__3_n_0),
        .CO(NLW_timer0_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_timer0_carry__4_O_UNCONNECTED[3:1],timer0_carry__4_n_7}),
        .S({1'b0,1'b0,1'b0,timer0_carry__4_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__4_i_1
       (.I0(timer[21]),
        .O(timer0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry_i_1
       (.I0(timer[4]),
        .O(timer0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry_i_2
       (.I0(timer[3]),
        .O(timer0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry_i_3
       (.I0(timer[2]),
        .O(timer0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry_i_4
       (.I0(timer[1]),
        .O(timer0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[0]__0_i_1 
       (.I0(timer[0]),
        .O(\timer[0]__0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[21]__0_i_1 
       (.I0(\timer[21]__0_i_2_n_0 ),
        .O(bt_samp));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer[21]__0_i_2 
       (.I0(\timer[21]__0_i_3_n_0 ),
        .I1(\timer[21]__0_i_4_n_0 ),
        .I2(\timer[21]__0_i_5_n_0 ),
        .I3(\timer[21]__0_i_6_n_0 ),
        .I4(\timer[21]__0_i_7_n_0 ),
        .O(\timer[21]__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer[21]__0_i_3 
       (.I0(timer[20]),
        .I1(timer[21]),
        .I2(timer[18]),
        .I3(timer[19]),
        .I4(timer[1]),
        .I5(timer[0]),
        .O(\timer[21]__0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[21]__0_i_4 
       (.I0(timer[11]),
        .I1(timer[10]),
        .I2(timer[13]),
        .I3(timer[12]),
        .O(\timer[21]__0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[21]__0_i_5 
       (.I0(timer[15]),
        .I1(timer[14]),
        .I2(timer[17]),
        .I3(timer[16]),
        .O(\timer[21]__0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[21]__0_i_6 
       (.I0(timer[7]),
        .I1(timer[6]),
        .I2(timer[9]),
        .I3(timer[8]),
        .O(\timer[21]__0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[21]__0_i_7 
       (.I0(timer[3]),
        .I1(timer[2]),
        .I2(timer[5]),
        .I3(timer[4]),
        .O(\timer[21]__0_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[0]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer[0]__0_i_1_n_0 ),
        .Q(timer[0]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[10]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__1_n_6),
        .Q(timer[10]),
        .S(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[11]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__1_n_5),
        .Q(timer[11]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[12]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__1_n_4),
        .Q(timer[12]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[13]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__2_n_7),
        .Q(timer[13]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[14]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__2_n_6),
        .Q(timer[14]),
        .R(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[15]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__2_n_5),
        .Q(timer[15]),
        .S(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[16]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__2_n_4),
        .Q(timer[16]),
        .R(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[17]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__3_n_7),
        .Q(timer[17]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[18]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__3_n_6),
        .Q(timer[18]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[19]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__3_n_5),
        .Q(timer[19]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[1]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry_n_7),
        .Q(timer[1]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[20]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__3_n_4),
        .Q(timer[20]),
        .S(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[21]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__4_n_7),
        .Q(timer[21]),
        .R(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[2]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry_n_6),
        .Q(timer[2]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[3]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry_n_5),
        .Q(timer[3]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[4]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry_n_4),
        .Q(timer[4]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[5]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__0_n_7),
        .Q(timer[5]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[6]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__0_n_6),
        .Q(timer[6]),
        .S(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[7]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__0_n_5),
        .Q(timer[7]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[8]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__0_n_4),
        .Q(timer[8]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[9]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__1_n_7),
        .Q(timer[9]),
        .R(bt_samp));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_0
   (bt_deb_d,
    bt_deb_reg_0,
    bt_deb_reg_1,
    clk_IBUF_BUFG,
    \button_loc_reg[1] ,
    deb_held_0,
    bt_deb_d_0,
    \button_loc_reg[1]_0 ,
    simon_buttons_n_IBUF);
  output bt_deb_d;
  output bt_deb_reg_0;
  output bt_deb_reg_1;
  input clk_IBUF_BUFG;
  input \button_loc_reg[1] ;
  input deb_held_0;
  input bt_deb_d_0;
  input \button_loc_reg[1]_0 ;
  input [0:0]simon_buttons_n_IBUF;

  wire bt_deb_d;
  wire bt_deb_d_0;
  wire bt_deb_i_1__0_n_0;
  wire bt_deb_reg_0;
  wire bt_deb_reg_1;
  wire bt_samp;
  wire bt_samp_i_1__0_n_0;
  wire bt_samp_reg_n_0;
  wire \button_loc_reg[1] ;
  wire \button_loc_reg[1]_0 ;
  wire clk_IBUF_BUFG;
  wire deb_held_0;
  wire [0:0]simon_buttons_n_IBUF;
  wire [21:0]timer;
  wire timer0_carry__0_i_1__0_n_0;
  wire timer0_carry__0_i_2__0_n_0;
  wire timer0_carry__0_i_3__0_n_0;
  wire timer0_carry__0_i_4__0_n_0;
  wire timer0_carry__0_n_0;
  wire timer0_carry__0_n_1;
  wire timer0_carry__0_n_2;
  wire timer0_carry__0_n_3;
  wire timer0_carry__0_n_4;
  wire timer0_carry__0_n_5;
  wire timer0_carry__0_n_6;
  wire timer0_carry__0_n_7;
  wire timer0_carry__1_i_1__0_n_0;
  wire timer0_carry__1_i_2__0_n_0;
  wire timer0_carry__1_i_3__0_n_0;
  wire timer0_carry__1_i_4__0_n_0;
  wire timer0_carry__1_n_0;
  wire timer0_carry__1_n_1;
  wire timer0_carry__1_n_2;
  wire timer0_carry__1_n_3;
  wire timer0_carry__1_n_4;
  wire timer0_carry__1_n_5;
  wire timer0_carry__1_n_6;
  wire timer0_carry__1_n_7;
  wire timer0_carry__2_i_1__0_n_0;
  wire timer0_carry__2_i_2__0_n_0;
  wire timer0_carry__2_i_3__0_n_0;
  wire timer0_carry__2_i_4__0_n_0;
  wire timer0_carry__2_n_0;
  wire timer0_carry__2_n_1;
  wire timer0_carry__2_n_2;
  wire timer0_carry__2_n_3;
  wire timer0_carry__2_n_4;
  wire timer0_carry__2_n_5;
  wire timer0_carry__2_n_6;
  wire timer0_carry__2_n_7;
  wire timer0_carry__3_i_1__0_n_0;
  wire timer0_carry__3_i_2__0_n_0;
  wire timer0_carry__3_i_3__0_n_0;
  wire timer0_carry__3_i_4__0_n_0;
  wire timer0_carry__3_n_0;
  wire timer0_carry__3_n_1;
  wire timer0_carry__3_n_2;
  wire timer0_carry__3_n_3;
  wire timer0_carry__3_n_4;
  wire timer0_carry__3_n_5;
  wire timer0_carry__3_n_6;
  wire timer0_carry__3_n_7;
  wire timer0_carry__4_i_1__0_n_0;
  wire timer0_carry__4_n_7;
  wire timer0_carry_i_1__0_n_0;
  wire timer0_carry_i_2__0_n_0;
  wire timer0_carry_i_3__0_n_0;
  wire timer0_carry_i_4__0_n_0;
  wire timer0_carry_n_0;
  wire timer0_carry_n_1;
  wire timer0_carry_n_2;
  wire timer0_carry_n_3;
  wire timer0_carry_n_4;
  wire timer0_carry_n_5;
  wire timer0_carry_n_6;
  wire timer0_carry_n_7;
  wire \timer[0]__0_i_1__0_n_0 ;
  wire \timer[21]__0_i_2__0_n_0 ;
  wire \timer[21]__0_i_3__0_n_0 ;
  wire \timer[21]__0_i_4__0_n_0 ;
  wire \timer[21]__0_i_5__0_n_0 ;
  wire \timer[21]__0_i_6__0_n_0 ;
  wire \timer[21]__0_i_7__0_n_0 ;
  wire [3:0]NLW_timer0_carry__4_CO_UNCONNECTED;
  wire [3:1]NLW_timer0_carry__4_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    bt_deb_d_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(bt_deb_reg_0),
        .Q(bt_deb_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'hFB02)) 
    bt_deb_i_1__0
       (.I0(bt_samp_reg_n_0),
        .I1(simon_buttons_n_IBUF),
        .I2(\timer[21]__0_i_2__0_n_0 ),
        .I3(bt_deb_reg_0),
        .O(bt_deb_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bt_deb_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(bt_deb_i_1__0_n_0),
        .Q(bt_deb_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    bt_samp_i_1__0
       (.I0(bt_samp_reg_n_0),
        .I1(\timer[21]__0_i_2__0_n_0 ),
        .I2(simon_buttons_n_IBUF),
        .O(bt_samp_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bt_samp_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(bt_samp_i_1__0_n_0),
        .Q(bt_samp_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2D2DD02DD0D000D0)) 
    \button_loc[1]_i_2 
       (.I0(bt_deb_reg_0),
        .I1(bt_deb_d),
        .I2(\button_loc_reg[1] ),
        .I3(deb_held_0),
        .I4(bt_deb_d_0),
        .I5(\button_loc_reg[1]_0 ),
        .O(bt_deb_reg_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry
       (.CI(1'b0),
        .CO({timer0_carry_n_0,timer0_carry_n_1,timer0_carry_n_2,timer0_carry_n_3}),
        .CYINIT(timer[0]),
        .DI(timer[4:1]),
        .O({timer0_carry_n_4,timer0_carry_n_5,timer0_carry_n_6,timer0_carry_n_7}),
        .S({timer0_carry_i_1__0_n_0,timer0_carry_i_2__0_n_0,timer0_carry_i_3__0_n_0,timer0_carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__0
       (.CI(timer0_carry_n_0),
        .CO({timer0_carry__0_n_0,timer0_carry__0_n_1,timer0_carry__0_n_2,timer0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(timer[8:5]),
        .O({timer0_carry__0_n_4,timer0_carry__0_n_5,timer0_carry__0_n_6,timer0_carry__0_n_7}),
        .S({timer0_carry__0_i_1__0_n_0,timer0_carry__0_i_2__0_n_0,timer0_carry__0_i_3__0_n_0,timer0_carry__0_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__0_i_1__0
       (.I0(timer[8]),
        .O(timer0_carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__0_i_2__0
       (.I0(timer[7]),
        .O(timer0_carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__0_i_3__0
       (.I0(timer[6]),
        .O(timer0_carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__0_i_4__0
       (.I0(timer[5]),
        .O(timer0_carry__0_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__1
       (.CI(timer0_carry__0_n_0),
        .CO({timer0_carry__1_n_0,timer0_carry__1_n_1,timer0_carry__1_n_2,timer0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(timer[12:9]),
        .O({timer0_carry__1_n_4,timer0_carry__1_n_5,timer0_carry__1_n_6,timer0_carry__1_n_7}),
        .S({timer0_carry__1_i_1__0_n_0,timer0_carry__1_i_2__0_n_0,timer0_carry__1_i_3__0_n_0,timer0_carry__1_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__1_i_1__0
       (.I0(timer[12]),
        .O(timer0_carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__1_i_2__0
       (.I0(timer[11]),
        .O(timer0_carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__1_i_3__0
       (.I0(timer[10]),
        .O(timer0_carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__1_i_4__0
       (.I0(timer[9]),
        .O(timer0_carry__1_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__2
       (.CI(timer0_carry__1_n_0),
        .CO({timer0_carry__2_n_0,timer0_carry__2_n_1,timer0_carry__2_n_2,timer0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(timer[16:13]),
        .O({timer0_carry__2_n_4,timer0_carry__2_n_5,timer0_carry__2_n_6,timer0_carry__2_n_7}),
        .S({timer0_carry__2_i_1__0_n_0,timer0_carry__2_i_2__0_n_0,timer0_carry__2_i_3__0_n_0,timer0_carry__2_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__2_i_1__0
       (.I0(timer[16]),
        .O(timer0_carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__2_i_2__0
       (.I0(timer[15]),
        .O(timer0_carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__2_i_3__0
       (.I0(timer[14]),
        .O(timer0_carry__2_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__2_i_4__0
       (.I0(timer[13]),
        .O(timer0_carry__2_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__3
       (.CI(timer0_carry__2_n_0),
        .CO({timer0_carry__3_n_0,timer0_carry__3_n_1,timer0_carry__3_n_2,timer0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(timer[20:17]),
        .O({timer0_carry__3_n_4,timer0_carry__3_n_5,timer0_carry__3_n_6,timer0_carry__3_n_7}),
        .S({timer0_carry__3_i_1__0_n_0,timer0_carry__3_i_2__0_n_0,timer0_carry__3_i_3__0_n_0,timer0_carry__3_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__3_i_1__0
       (.I0(timer[20]),
        .O(timer0_carry__3_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__3_i_2__0
       (.I0(timer[19]),
        .O(timer0_carry__3_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__3_i_3__0
       (.I0(timer[18]),
        .O(timer0_carry__3_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__3_i_4__0
       (.I0(timer[17]),
        .O(timer0_carry__3_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__4
       (.CI(timer0_carry__3_n_0),
        .CO(NLW_timer0_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_timer0_carry__4_O_UNCONNECTED[3:1],timer0_carry__4_n_7}),
        .S({1'b0,1'b0,1'b0,timer0_carry__4_i_1__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__4_i_1__0
       (.I0(timer[21]),
        .O(timer0_carry__4_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry_i_1__0
       (.I0(timer[4]),
        .O(timer0_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry_i_2__0
       (.I0(timer[3]),
        .O(timer0_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry_i_3__0
       (.I0(timer[2]),
        .O(timer0_carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry_i_4__0
       (.I0(timer[1]),
        .O(timer0_carry_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[0]__0_i_1__0 
       (.I0(timer[0]),
        .O(\timer[0]__0_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[21]__0_i_1__0 
       (.I0(\timer[21]__0_i_2__0_n_0 ),
        .O(bt_samp));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer[21]__0_i_2__0 
       (.I0(\timer[21]__0_i_3__0_n_0 ),
        .I1(\timer[21]__0_i_4__0_n_0 ),
        .I2(\timer[21]__0_i_5__0_n_0 ),
        .I3(\timer[21]__0_i_6__0_n_0 ),
        .I4(\timer[21]__0_i_7__0_n_0 ),
        .O(\timer[21]__0_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer[21]__0_i_3__0 
       (.I0(timer[20]),
        .I1(timer[21]),
        .I2(timer[18]),
        .I3(timer[19]),
        .I4(timer[1]),
        .I5(timer[0]),
        .O(\timer[21]__0_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[21]__0_i_4__0 
       (.I0(timer[11]),
        .I1(timer[10]),
        .I2(timer[13]),
        .I3(timer[12]),
        .O(\timer[21]__0_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[21]__0_i_5__0 
       (.I0(timer[15]),
        .I1(timer[14]),
        .I2(timer[17]),
        .I3(timer[16]),
        .O(\timer[21]__0_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[21]__0_i_6__0 
       (.I0(timer[7]),
        .I1(timer[6]),
        .I2(timer[9]),
        .I3(timer[8]),
        .O(\timer[21]__0_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[21]__0_i_7__0 
       (.I0(timer[3]),
        .I1(timer[2]),
        .I2(timer[5]),
        .I3(timer[4]),
        .O(\timer[21]__0_i_7__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[0]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer[0]__0_i_1__0_n_0 ),
        .Q(timer[0]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[10]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__1_n_6),
        .Q(timer[10]),
        .S(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[11]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__1_n_5),
        .Q(timer[11]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[12]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__1_n_4),
        .Q(timer[12]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[13]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__2_n_7),
        .Q(timer[13]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[14]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__2_n_6),
        .Q(timer[14]),
        .R(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[15]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__2_n_5),
        .Q(timer[15]),
        .S(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[16]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__2_n_4),
        .Q(timer[16]),
        .R(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[17]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__3_n_7),
        .Q(timer[17]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[18]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__3_n_6),
        .Q(timer[18]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[19]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__3_n_5),
        .Q(timer[19]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[1]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry_n_7),
        .Q(timer[1]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[20]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__3_n_4),
        .Q(timer[20]),
        .S(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[21]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__4_n_7),
        .Q(timer[21]),
        .R(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[2]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry_n_6),
        .Q(timer[2]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[3]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry_n_5),
        .Q(timer[3]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[4]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry_n_4),
        .Q(timer[4]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[5]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__0_n_7),
        .Q(timer[5]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[6]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__0_n_6),
        .Q(timer[6]),
        .S(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[7]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__0_n_5),
        .Q(timer[7]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[8]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__0_n_4),
        .Q(timer[8]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[9]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__1_n_7),
        .Q(timer[9]),
        .R(bt_samp));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_1
   (bt_deb_d,
    bt_deb_reg_0,
    bt_deb_d_reg_0,
    clk_IBUF_BUFG,
    simon_buttons_n_IBUF);
  output bt_deb_d;
  output bt_deb_reg_0;
  output bt_deb_d_reg_0;
  input clk_IBUF_BUFG;
  input [0:0]simon_buttons_n_IBUF;

  wire bt_deb_d;
  wire bt_deb_d_reg_0;
  wire bt_deb_i_1__1_n_0;
  wire bt_deb_reg_0;
  wire bt_samp;
  wire bt_samp_i_1__1_n_0;
  wire bt_samp_reg_n_0;
  wire clk_IBUF_BUFG;
  wire [0:0]simon_buttons_n_IBUF;
  wire [21:0]timer;
  wire timer0_carry__0_i_1__1_n_0;
  wire timer0_carry__0_i_2__2_n_0;
  wire timer0_carry__0_i_3__1_n_0;
  wire timer0_carry__0_i_4__1_n_0;
  wire timer0_carry__0_n_0;
  wire timer0_carry__0_n_1;
  wire timer0_carry__0_n_2;
  wire timer0_carry__0_n_3;
  wire timer0_carry__0_n_4;
  wire timer0_carry__0_n_5;
  wire timer0_carry__0_n_6;
  wire timer0_carry__0_n_7;
  wire timer0_carry__1_i_1__1_n_0;
  wire timer0_carry__1_i_2__1_n_0;
  wire timer0_carry__1_i_3__2_n_0;
  wire timer0_carry__1_i_4__1_n_0;
  wire timer0_carry__1_n_0;
  wire timer0_carry__1_n_1;
  wire timer0_carry__1_n_2;
  wire timer0_carry__1_n_3;
  wire timer0_carry__1_n_4;
  wire timer0_carry__1_n_5;
  wire timer0_carry__1_n_6;
  wire timer0_carry__1_n_7;
  wire timer0_carry__2_i_1__2_n_0;
  wire timer0_carry__2_i_2__1_n_0;
  wire timer0_carry__2_i_3__1_n_0;
  wire timer0_carry__2_i_4__2_n_0;
  wire timer0_carry__2_n_0;
  wire timer0_carry__2_n_1;
  wire timer0_carry__2_n_2;
  wire timer0_carry__2_n_3;
  wire timer0_carry__2_n_4;
  wire timer0_carry__2_n_5;
  wire timer0_carry__2_n_6;
  wire timer0_carry__2_n_7;
  wire timer0_carry__3_i_1__1_n_0;
  wire timer0_carry__3_i_2__2_n_0;
  wire timer0_carry__3_i_3__1_n_0;
  wire timer0_carry__3_i_4__1_n_0;
  wire timer0_carry__3_n_0;
  wire timer0_carry__3_n_1;
  wire timer0_carry__3_n_2;
  wire timer0_carry__3_n_3;
  wire timer0_carry__3_n_4;
  wire timer0_carry__3_n_5;
  wire timer0_carry__3_n_6;
  wire timer0_carry__3_n_7;
  wire timer0_carry__4_i_1__2_n_0;
  wire timer0_carry__4_n_7;
  wire timer0_carry_i_1__2_n_0;
  wire timer0_carry_i_2__1_n_0;
  wire timer0_carry_i_3__1_n_0;
  wire timer0_carry_i_4__2_n_0;
  wire timer0_carry_n_0;
  wire timer0_carry_n_1;
  wire timer0_carry_n_2;
  wire timer0_carry_n_3;
  wire timer0_carry_n_4;
  wire timer0_carry_n_5;
  wire timer0_carry_n_6;
  wire timer0_carry_n_7;
  wire \timer[0]__0_i_1__1_n_0 ;
  wire \timer[21]__0_i_2__1_n_0 ;
  wire \timer[21]__0_i_3__1_n_0 ;
  wire \timer[21]__0_i_4__1_n_0 ;
  wire \timer[21]__0_i_5__1_n_0 ;
  wire \timer[21]__0_i_6__1_n_0 ;
  wire \timer[21]__0_i_7__1_n_0 ;
  wire [3:0]NLW_timer0_carry__4_CO_UNCONNECTED;
  wire [3:1]NLW_timer0_carry__4_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    bt_deb_d_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(bt_deb_reg_0),
        .Q(bt_deb_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'hFB02)) 
    bt_deb_i_1__1
       (.I0(bt_samp_reg_n_0),
        .I1(simon_buttons_n_IBUF),
        .I2(\timer[21]__0_i_2__1_n_0 ),
        .I3(bt_deb_reg_0),
        .O(bt_deb_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bt_deb_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(bt_deb_i_1__1_n_0),
        .Q(bt_deb_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    bt_samp_i_1__1
       (.I0(bt_samp_reg_n_0),
        .I1(\timer[21]__0_i_2__1_n_0 ),
        .I2(simon_buttons_n_IBUF),
        .O(bt_samp_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bt_samp_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(bt_samp_i_1__1_n_0),
        .Q(bt_samp_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \button_loc[1]_i_4 
       (.I0(bt_deb_d),
        .I1(bt_deb_reg_0),
        .O(bt_deb_d_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry
       (.CI(1'b0),
        .CO({timer0_carry_n_0,timer0_carry_n_1,timer0_carry_n_2,timer0_carry_n_3}),
        .CYINIT(timer[0]),
        .DI(timer[4:1]),
        .O({timer0_carry_n_4,timer0_carry_n_5,timer0_carry_n_6,timer0_carry_n_7}),
        .S({timer0_carry_i_1__2_n_0,timer0_carry_i_2__1_n_0,timer0_carry_i_3__1_n_0,timer0_carry_i_4__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__0
       (.CI(timer0_carry_n_0),
        .CO({timer0_carry__0_n_0,timer0_carry__0_n_1,timer0_carry__0_n_2,timer0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(timer[8:5]),
        .O({timer0_carry__0_n_4,timer0_carry__0_n_5,timer0_carry__0_n_6,timer0_carry__0_n_7}),
        .S({timer0_carry__0_i_1__1_n_0,timer0_carry__0_i_2__2_n_0,timer0_carry__0_i_3__1_n_0,timer0_carry__0_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__0_i_1__1
       (.I0(timer[8]),
        .O(timer0_carry__0_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__0_i_2__2
       (.I0(timer[7]),
        .O(timer0_carry__0_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__0_i_3__1
       (.I0(timer[6]),
        .O(timer0_carry__0_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__0_i_4__1
       (.I0(timer[5]),
        .O(timer0_carry__0_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__1
       (.CI(timer0_carry__0_n_0),
        .CO({timer0_carry__1_n_0,timer0_carry__1_n_1,timer0_carry__1_n_2,timer0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(timer[12:9]),
        .O({timer0_carry__1_n_4,timer0_carry__1_n_5,timer0_carry__1_n_6,timer0_carry__1_n_7}),
        .S({timer0_carry__1_i_1__1_n_0,timer0_carry__1_i_2__1_n_0,timer0_carry__1_i_3__2_n_0,timer0_carry__1_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__1_i_1__1
       (.I0(timer[12]),
        .O(timer0_carry__1_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__1_i_2__1
       (.I0(timer[11]),
        .O(timer0_carry__1_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__1_i_3__2
       (.I0(timer[10]),
        .O(timer0_carry__1_i_3__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__1_i_4__1
       (.I0(timer[9]),
        .O(timer0_carry__1_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__2
       (.CI(timer0_carry__1_n_0),
        .CO({timer0_carry__2_n_0,timer0_carry__2_n_1,timer0_carry__2_n_2,timer0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(timer[16:13]),
        .O({timer0_carry__2_n_4,timer0_carry__2_n_5,timer0_carry__2_n_6,timer0_carry__2_n_7}),
        .S({timer0_carry__2_i_1__2_n_0,timer0_carry__2_i_2__1_n_0,timer0_carry__2_i_3__1_n_0,timer0_carry__2_i_4__2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__2_i_1__2
       (.I0(timer[16]),
        .O(timer0_carry__2_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__2_i_2__1
       (.I0(timer[15]),
        .O(timer0_carry__2_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__2_i_3__1
       (.I0(timer[14]),
        .O(timer0_carry__2_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__2_i_4__2
       (.I0(timer[13]),
        .O(timer0_carry__2_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__3
       (.CI(timer0_carry__2_n_0),
        .CO({timer0_carry__3_n_0,timer0_carry__3_n_1,timer0_carry__3_n_2,timer0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(timer[20:17]),
        .O({timer0_carry__3_n_4,timer0_carry__3_n_5,timer0_carry__3_n_6,timer0_carry__3_n_7}),
        .S({timer0_carry__3_i_1__1_n_0,timer0_carry__3_i_2__2_n_0,timer0_carry__3_i_3__1_n_0,timer0_carry__3_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__3_i_1__1
       (.I0(timer[20]),
        .O(timer0_carry__3_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__3_i_2__2
       (.I0(timer[19]),
        .O(timer0_carry__3_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__3_i_3__1
       (.I0(timer[18]),
        .O(timer0_carry__3_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__3_i_4__1
       (.I0(timer[17]),
        .O(timer0_carry__3_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__4
       (.CI(timer0_carry__3_n_0),
        .CO(NLW_timer0_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_timer0_carry__4_O_UNCONNECTED[3:1],timer0_carry__4_n_7}),
        .S({1'b0,1'b0,1'b0,timer0_carry__4_i_1__2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__4_i_1__2
       (.I0(timer[21]),
        .O(timer0_carry__4_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry_i_1__2
       (.I0(timer[4]),
        .O(timer0_carry_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry_i_2__1
       (.I0(timer[3]),
        .O(timer0_carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry_i_3__1
       (.I0(timer[2]),
        .O(timer0_carry_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry_i_4__2
       (.I0(timer[1]),
        .O(timer0_carry_i_4__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[0]__0_i_1__1 
       (.I0(timer[0]),
        .O(\timer[0]__0_i_1__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[21]__0_i_1__1 
       (.I0(\timer[21]__0_i_2__1_n_0 ),
        .O(bt_samp));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer[21]__0_i_2__1 
       (.I0(\timer[21]__0_i_3__1_n_0 ),
        .I1(\timer[21]__0_i_4__1_n_0 ),
        .I2(\timer[21]__0_i_5__1_n_0 ),
        .I3(\timer[21]__0_i_6__1_n_0 ),
        .I4(\timer[21]__0_i_7__1_n_0 ),
        .O(\timer[21]__0_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer[21]__0_i_3__1 
       (.I0(timer[20]),
        .I1(timer[21]),
        .I2(timer[18]),
        .I3(timer[19]),
        .I4(timer[1]),
        .I5(timer[0]),
        .O(\timer[21]__0_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[21]__0_i_4__1 
       (.I0(timer[11]),
        .I1(timer[10]),
        .I2(timer[13]),
        .I3(timer[12]),
        .O(\timer[21]__0_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[21]__0_i_5__1 
       (.I0(timer[15]),
        .I1(timer[14]),
        .I2(timer[17]),
        .I3(timer[16]),
        .O(\timer[21]__0_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[21]__0_i_6__1 
       (.I0(timer[7]),
        .I1(timer[6]),
        .I2(timer[9]),
        .I3(timer[8]),
        .O(\timer[21]__0_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[21]__0_i_7__1 
       (.I0(timer[3]),
        .I1(timer[2]),
        .I2(timer[5]),
        .I3(timer[4]),
        .O(\timer[21]__0_i_7__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[0]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer[0]__0_i_1__1_n_0 ),
        .Q(timer[0]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[10]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__1_n_6),
        .Q(timer[10]),
        .S(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[11]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__1_n_5),
        .Q(timer[11]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[12]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__1_n_4),
        .Q(timer[12]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[13]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__2_n_7),
        .Q(timer[13]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[14]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__2_n_6),
        .Q(timer[14]),
        .R(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[15]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__2_n_5),
        .Q(timer[15]),
        .S(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[16]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__2_n_4),
        .Q(timer[16]),
        .R(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[17]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__3_n_7),
        .Q(timer[17]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[18]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__3_n_6),
        .Q(timer[18]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[19]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__3_n_5),
        .Q(timer[19]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[1]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry_n_7),
        .Q(timer[1]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[20]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__3_n_4),
        .Q(timer[20]),
        .S(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[21]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__4_n_7),
        .Q(timer[21]),
        .R(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[2]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry_n_6),
        .Q(timer[2]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[3]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry_n_5),
        .Q(timer[3]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[4]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry_n_4),
        .Q(timer[4]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[5]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__0_n_7),
        .Q(timer[5]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[6]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__0_n_6),
        .Q(timer[6]),
        .S(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[7]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__0_n_5),
        .Q(timer[7]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[8]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__0_n_4),
        .Q(timer[8]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[9]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__1_n_7),
        .Q(timer[9]),
        .R(bt_samp));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_2
   (bt_deb_d,
    bt_deb_reg_0,
    bt_deb_d_reg_0,
    clk_IBUF_BUFG,
    simon_buttons_n_IBUF);
  output bt_deb_d;
  output bt_deb_reg_0;
  output bt_deb_d_reg_0;
  input clk_IBUF_BUFG;
  input [0:0]simon_buttons_n_IBUF;

  wire bt_deb_d;
  wire bt_deb_d_reg_0;
  wire bt_deb_i_1__2_n_0;
  wire bt_deb_reg_0;
  wire bt_samp;
  wire bt_samp_i_1__2_n_0;
  wire bt_samp_reg_n_0;
  wire clk_IBUF_BUFG;
  wire [0:0]simon_buttons_n_IBUF;
  wire [21:0]timer;
  wire timer0_carry__0_i_1__2_n_0;
  wire timer0_carry__0_i_2__1_n_0;
  wire timer0_carry__0_i_3__2_n_0;
  wire timer0_carry__0_i_4__2_n_0;
  wire timer0_carry__0_n_0;
  wire timer0_carry__0_n_1;
  wire timer0_carry__0_n_2;
  wire timer0_carry__0_n_3;
  wire timer0_carry__0_n_4;
  wire timer0_carry__0_n_5;
  wire timer0_carry__0_n_6;
  wire timer0_carry__0_n_7;
  wire timer0_carry__1_i_1__2_n_0;
  wire timer0_carry__1_i_2__2_n_0;
  wire timer0_carry__1_i_3__1_n_0;
  wire timer0_carry__1_i_4__2_n_0;
  wire timer0_carry__1_n_0;
  wire timer0_carry__1_n_1;
  wire timer0_carry__1_n_2;
  wire timer0_carry__1_n_3;
  wire timer0_carry__1_n_4;
  wire timer0_carry__1_n_5;
  wire timer0_carry__1_n_6;
  wire timer0_carry__1_n_7;
  wire timer0_carry__2_i_1__1_n_0;
  wire timer0_carry__2_i_2__2_n_0;
  wire timer0_carry__2_i_3__2_n_0;
  wire timer0_carry__2_i_4__1_n_0;
  wire timer0_carry__2_n_0;
  wire timer0_carry__2_n_1;
  wire timer0_carry__2_n_2;
  wire timer0_carry__2_n_3;
  wire timer0_carry__2_n_4;
  wire timer0_carry__2_n_5;
  wire timer0_carry__2_n_6;
  wire timer0_carry__2_n_7;
  wire timer0_carry__3_i_1__2_n_0;
  wire timer0_carry__3_i_2__1_n_0;
  wire timer0_carry__3_i_3__2_n_0;
  wire timer0_carry__3_i_4__2_n_0;
  wire timer0_carry__3_n_0;
  wire timer0_carry__3_n_1;
  wire timer0_carry__3_n_2;
  wire timer0_carry__3_n_3;
  wire timer0_carry__3_n_4;
  wire timer0_carry__3_n_5;
  wire timer0_carry__3_n_6;
  wire timer0_carry__3_n_7;
  wire timer0_carry__4_i_1__1_n_0;
  wire timer0_carry__4_n_7;
  wire timer0_carry_i_1__1_n_0;
  wire timer0_carry_i_2__2_n_0;
  wire timer0_carry_i_3__2_n_0;
  wire timer0_carry_i_4__1_n_0;
  wire timer0_carry_n_0;
  wire timer0_carry_n_1;
  wire timer0_carry_n_2;
  wire timer0_carry_n_3;
  wire timer0_carry_n_4;
  wire timer0_carry_n_5;
  wire timer0_carry_n_6;
  wire timer0_carry_n_7;
  wire \timer[0]__0_i_1__2_n_0 ;
  wire \timer[21]__0_i_2__2_n_0 ;
  wire \timer[21]__0_i_3__2_n_0 ;
  wire \timer[21]__0_i_4__2_n_0 ;
  wire \timer[21]__0_i_5__2_n_0 ;
  wire \timer[21]__0_i_6__2_n_0 ;
  wire \timer[21]__0_i_7__2_n_0 ;
  wire [3:0]NLW_timer0_carry__4_CO_UNCONNECTED;
  wire [3:1]NLW_timer0_carry__4_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    bt_deb_d_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(bt_deb_reg_0),
        .Q(bt_deb_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'hFB02)) 
    bt_deb_i_1__2
       (.I0(bt_samp_reg_n_0),
        .I1(simon_buttons_n_IBUF),
        .I2(\timer[21]__0_i_2__2_n_0 ),
        .I3(bt_deb_reg_0),
        .O(bt_deb_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bt_deb_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(bt_deb_i_1__2_n_0),
        .Q(bt_deb_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    bt_samp_i_1__2
       (.I0(bt_samp_reg_n_0),
        .I1(\timer[21]__0_i_2__2_n_0 ),
        .I2(simon_buttons_n_IBUF),
        .O(bt_samp_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bt_samp_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(bt_samp_i_1__2_n_0),
        .Q(bt_samp_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \button_loc[1]_i_3 
       (.I0(bt_deb_d),
        .I1(bt_deb_reg_0),
        .O(bt_deb_d_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry
       (.CI(1'b0),
        .CO({timer0_carry_n_0,timer0_carry_n_1,timer0_carry_n_2,timer0_carry_n_3}),
        .CYINIT(timer[0]),
        .DI(timer[4:1]),
        .O({timer0_carry_n_4,timer0_carry_n_5,timer0_carry_n_6,timer0_carry_n_7}),
        .S({timer0_carry_i_1__1_n_0,timer0_carry_i_2__2_n_0,timer0_carry_i_3__2_n_0,timer0_carry_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__0
       (.CI(timer0_carry_n_0),
        .CO({timer0_carry__0_n_0,timer0_carry__0_n_1,timer0_carry__0_n_2,timer0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(timer[8:5]),
        .O({timer0_carry__0_n_4,timer0_carry__0_n_5,timer0_carry__0_n_6,timer0_carry__0_n_7}),
        .S({timer0_carry__0_i_1__2_n_0,timer0_carry__0_i_2__1_n_0,timer0_carry__0_i_3__2_n_0,timer0_carry__0_i_4__2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__0_i_1__2
       (.I0(timer[8]),
        .O(timer0_carry__0_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__0_i_2__1
       (.I0(timer[7]),
        .O(timer0_carry__0_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__0_i_3__2
       (.I0(timer[6]),
        .O(timer0_carry__0_i_3__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__0_i_4__2
       (.I0(timer[5]),
        .O(timer0_carry__0_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__1
       (.CI(timer0_carry__0_n_0),
        .CO({timer0_carry__1_n_0,timer0_carry__1_n_1,timer0_carry__1_n_2,timer0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(timer[12:9]),
        .O({timer0_carry__1_n_4,timer0_carry__1_n_5,timer0_carry__1_n_6,timer0_carry__1_n_7}),
        .S({timer0_carry__1_i_1__2_n_0,timer0_carry__1_i_2__2_n_0,timer0_carry__1_i_3__1_n_0,timer0_carry__1_i_4__2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__1_i_1__2
       (.I0(timer[12]),
        .O(timer0_carry__1_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__1_i_2__2
       (.I0(timer[11]),
        .O(timer0_carry__1_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__1_i_3__1
       (.I0(timer[10]),
        .O(timer0_carry__1_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__1_i_4__2
       (.I0(timer[9]),
        .O(timer0_carry__1_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__2
       (.CI(timer0_carry__1_n_0),
        .CO({timer0_carry__2_n_0,timer0_carry__2_n_1,timer0_carry__2_n_2,timer0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(timer[16:13]),
        .O({timer0_carry__2_n_4,timer0_carry__2_n_5,timer0_carry__2_n_6,timer0_carry__2_n_7}),
        .S({timer0_carry__2_i_1__1_n_0,timer0_carry__2_i_2__2_n_0,timer0_carry__2_i_3__2_n_0,timer0_carry__2_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__2_i_1__1
       (.I0(timer[16]),
        .O(timer0_carry__2_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__2_i_2__2
       (.I0(timer[15]),
        .O(timer0_carry__2_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__2_i_3__2
       (.I0(timer[14]),
        .O(timer0_carry__2_i_3__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__2_i_4__1
       (.I0(timer[13]),
        .O(timer0_carry__2_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__3
       (.CI(timer0_carry__2_n_0),
        .CO({timer0_carry__3_n_0,timer0_carry__3_n_1,timer0_carry__3_n_2,timer0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(timer[20:17]),
        .O({timer0_carry__3_n_4,timer0_carry__3_n_5,timer0_carry__3_n_6,timer0_carry__3_n_7}),
        .S({timer0_carry__3_i_1__2_n_0,timer0_carry__3_i_2__1_n_0,timer0_carry__3_i_3__2_n_0,timer0_carry__3_i_4__2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__3_i_1__2
       (.I0(timer[20]),
        .O(timer0_carry__3_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__3_i_2__1
       (.I0(timer[19]),
        .O(timer0_carry__3_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__3_i_3__2
       (.I0(timer[18]),
        .O(timer0_carry__3_i_3__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__3_i_4__2
       (.I0(timer[17]),
        .O(timer0_carry__3_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__4
       (.CI(timer0_carry__3_n_0),
        .CO(NLW_timer0_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_timer0_carry__4_O_UNCONNECTED[3:1],timer0_carry__4_n_7}),
        .S({1'b0,1'b0,1'b0,timer0_carry__4_i_1__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry__4_i_1__1
       (.I0(timer[21]),
        .O(timer0_carry__4_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry_i_1__1
       (.I0(timer[4]),
        .O(timer0_carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry_i_2__2
       (.I0(timer[3]),
        .O(timer0_carry_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry_i_3__2
       (.I0(timer[2]),
        .O(timer0_carry_i_3__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer0_carry_i_4__1
       (.I0(timer[1]),
        .O(timer0_carry_i_4__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[0]__0_i_1__2 
       (.I0(timer[0]),
        .O(\timer[0]__0_i_1__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[21]__0_i_1__2 
       (.I0(\timer[21]__0_i_2__2_n_0 ),
        .O(bt_samp));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer[21]__0_i_2__2 
       (.I0(\timer[21]__0_i_3__2_n_0 ),
        .I1(\timer[21]__0_i_4__2_n_0 ),
        .I2(\timer[21]__0_i_5__2_n_0 ),
        .I3(\timer[21]__0_i_6__2_n_0 ),
        .I4(\timer[21]__0_i_7__2_n_0 ),
        .O(\timer[21]__0_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer[21]__0_i_3__2 
       (.I0(timer[20]),
        .I1(timer[21]),
        .I2(timer[18]),
        .I3(timer[19]),
        .I4(timer[1]),
        .I5(timer[0]),
        .O(\timer[21]__0_i_3__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[21]__0_i_4__2 
       (.I0(timer[11]),
        .I1(timer[10]),
        .I2(timer[13]),
        .I3(timer[12]),
        .O(\timer[21]__0_i_4__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[21]__0_i_5__2 
       (.I0(timer[15]),
        .I1(timer[14]),
        .I2(timer[17]),
        .I3(timer[16]),
        .O(\timer[21]__0_i_5__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[21]__0_i_6__2 
       (.I0(timer[7]),
        .I1(timer[6]),
        .I2(timer[9]),
        .I3(timer[8]),
        .O(\timer[21]__0_i_6__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[21]__0_i_7__2 
       (.I0(timer[3]),
        .I1(timer[2]),
        .I2(timer[5]),
        .I3(timer[4]),
        .O(\timer[21]__0_i_7__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[0]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer[0]__0_i_1__2_n_0 ),
        .Q(timer[0]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[10]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__1_n_6),
        .Q(timer[10]),
        .S(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[11]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__1_n_5),
        .Q(timer[11]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[12]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__1_n_4),
        .Q(timer[12]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[13]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__2_n_7),
        .Q(timer[13]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[14]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__2_n_6),
        .Q(timer[14]),
        .R(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[15]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__2_n_5),
        .Q(timer[15]),
        .S(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[16]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__2_n_4),
        .Q(timer[16]),
        .R(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[17]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__3_n_7),
        .Q(timer[17]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[18]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__3_n_6),
        .Q(timer[18]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[19]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__3_n_5),
        .Q(timer[19]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[1]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry_n_7),
        .Q(timer[1]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[20]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__3_n_4),
        .Q(timer[20]),
        .S(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[21]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__4_n_7),
        .Q(timer[21]),
        .R(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[2]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry_n_6),
        .Q(timer[2]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[3]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry_n_5),
        .Q(timer[3]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[4]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry_n_4),
        .Q(timer[4]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[5]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__0_n_7),
        .Q(timer[5]),
        .S(bt_samp));
  FDSE #(
    .INIT(1'b1)) 
    \timer_reg[6]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__0_n_6),
        .Q(timer[6]),
        .S(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[7]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__0_n_5),
        .Q(timer[7]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[8]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__0_n_4),
        .Q(timer[8]),
        .R(bt_samp));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[9]__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timer0_carry__1_n_7),
        .Q(timer[9]),
        .R(bt_samp));
endmodule

module lcd_ctrl
   (\state_reg[1] ,
    lcd_regsel_OBUF,
    lcd_enable_OBUF,
    \state_reg[3] ,
    lcd_data_OBUF,
    clk_IBUF_BUFG,
    \data_reg[2]_0 ,
    \data_reg[7]_0 ,
    state,
    data2,
    data1,
    \data_reg[4]_0 ,
    \data_reg[5]_0 ,
    \data_reg[1]_0 ,
    \data_reg[6]_0 ,
    \data_reg[3]_0 ,
    \data_reg[0]_0 ,
    \data_reg[7]_1 );
  output \state_reg[1] ;
  output lcd_regsel_OBUF;
  output lcd_enable_OBUF;
  output \state_reg[3] ;
  output [7:0]lcd_data_OBUF;
  input clk_IBUF_BUFG;
  input \data_reg[2]_0 ;
  input \data_reg[7]_0 ;
  input [2:0]state;
  input [6:0]data2;
  input [6:0]data1;
  input \data_reg[4]_0 ;
  input \data_reg[5]_0 ;
  input \data_reg[1]_0 ;
  input \data_reg[6]_0 ;
  input \data_reg[3]_0 ;
  input \data_reg[0]_0 ;
  input \data_reg[7]_1 ;

  wire activate_d;
  wire clk_IBUF_BUFG;
  wire [6:0]data1;
  wire [6:0]data2;
  wire \data[0]_i_1_n_0 ;
  wire \data[0]_i_2_n_0 ;
  wire \data[1]_i_1_n_0 ;
  wire \data[1]_i_2_n_0 ;
  wire \data[2]_i_1_n_0 ;
  wire \data[2]_i_2_n_0 ;
  wire \data[3]_i_1_n_0 ;
  wire \data[3]_i_2_n_0 ;
  wire \data[4]_i_1_n_0 ;
  wire \data[4]_i_2_n_0 ;
  wire \data[5]_i_1_n_0 ;
  wire \data[5]_i_2_n_0 ;
  wire \data[6]_i_1_n_0 ;
  wire \data[6]_i_2_n_0 ;
  wire \data[7]_i_2_n_0 ;
  wire \data_reg[0]_0 ;
  wire \data_reg[1]_0 ;
  wire \data_reg[2]_0 ;
  wire \data_reg[3]_0 ;
  wire \data_reg[4]_0 ;
  wire \data_reg[5]_0 ;
  wire \data_reg[6]_0 ;
  wire \data_reg[7]_0 ;
  wire \data_reg[7]_1 ;
  wire [7:0]lcd_data_OBUF;
  wire lcd_enable;
  wire lcd_enable1_out;
  wire lcd_enable_OBUF;
  wire lcd_enable_i_3_n_0;
  wire lcd_enable_i_4_n_0;
  wire lcd_enable_i_5_n_0;
  wire lcd_enable_i_6_n_0;
  wire lcd_enable_i_7_n_0;
  wire lcd_enable_i_8_n_0;
  wire lcd_regsel0;
  wire lcd_regsel_OBUF;
  wire lcd_regsel_i_1_n_0;
  wire p_0_in;
  wire [17:0]p_0_in1_in;
  wire ready_inv_i_1_n_0;
  wire ready_inv_i_2_n_0;
  wire ready_inv_i_3_n_0;
  wire ready_inv_i_4_n_0;
  wire [2:0]state;
  wire \state_reg[1] ;
  wire \state_reg[3] ;
  wire [17:0]timer;
  wire [17:1]timer0;
  wire timer0_carry__0_n_0;
  wire timer0_carry__0_n_1;
  wire timer0_carry__0_n_2;
  wire timer0_carry__0_n_3;
  wire timer0_carry__1_n_0;
  wire timer0_carry__1_n_1;
  wire timer0_carry__1_n_2;
  wire timer0_carry__1_n_3;
  wire timer0_carry__2_n_0;
  wire timer0_carry__2_n_1;
  wire timer0_carry__2_n_2;
  wire timer0_carry__2_n_3;
  wire timer0_carry_n_0;
  wire timer0_carry_n_1;
  wire timer0_carry_n_2;
  wire timer0_carry_n_3;
  wire \timer[17]_i_2_n_0 ;
  wire \timer[17]_i_3_n_0 ;
  wire [3:0]NLW_timer0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_timer0_carry__3_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    activate_d_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_reg[1] ),
        .Q(activate_d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000A80)) 
    \data[0]_i_1 
       (.I0(\data_reg[0]_0 ),
        .I1(\data_reg[7]_0 ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(\data[0]_i_2_n_0 ),
        .O(\data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FC00F00A00000)) 
    \data[0]_i_2 
       (.I0(data1[0]),
        .I1(data2[0]),
        .I2(\data_reg[7]_0 ),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[2]),
        .O(\data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAEEEAAA)) 
    \data[1]_i_1 
       (.I0(\data[1]_i_2_n_0 ),
        .I1(\data_reg[1]_0 ),
        .I2(\data_reg[7]_0 ),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[1]),
        .O(\data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h20CC0C3020CC0030)) 
    \data[1]_i_2 
       (.I0(data2[1]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\data_reg[7]_0 ),
        .I4(state[0]),
        .I5(data1[1]),
        .O(\data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAEEEAAA)) 
    \data[2]_i_1 
       (.I0(\data[2]_i_2_n_0 ),
        .I1(\data_reg[2]_0 ),
        .I2(\data_reg[7]_0 ),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[1]),
        .O(\data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h200C0C30200C0030)) 
    \data[2]_i_2 
       (.I0(data2[2]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\data_reg[7]_0 ),
        .I4(state[0]),
        .I5(data1[2]),
        .O(\data[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0220)) 
    \data[3]_i_1 
       (.I0(\data_reg[3]_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\data[3]_i_2_n_0 ),
        .O(\data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000C00F00A00F00)) 
    \data[3]_i_2 
       (.I0(data1[3]),
        .I1(data2[3]),
        .I2(\data_reg[7]_0 ),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[2]),
        .O(\data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000A0800)) 
    \data[4]_i_1 
       (.I0(\data_reg[4]_0 ),
        .I1(\data_reg[7]_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(\data[4]_i_2_n_0 ),
        .O(\data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000C00000A00F00)) 
    \data[4]_i_2 
       (.I0(data1[4]),
        .I1(data2[4]),
        .I2(\data_reg[7]_0 ),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[2]),
        .O(\data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000A0800)) 
    \data[5]_i_1 
       (.I0(\data_reg[5]_0 ),
        .I1(\data_reg[7]_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(\data[5]_i_2_n_0 ),
        .O(\data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000C00000A00F00)) 
    \data[5]_i_2 
       (.I0(data1[5]),
        .I1(data2[5]),
        .I2(\data_reg[7]_0 ),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[2]),
        .O(\data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \data[6]_i_1 
       (.I0(data2[6]),
        .I1(\data_reg[7]_0 ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(\data[6]_i_2_n_0 ),
        .O(\data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0338000800000000)) 
    \data[6]_i_2 
       (.I0(data1[6]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\data_reg[6]_0 ),
        .I5(\data_reg[7]_0 ),
        .O(\data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0011011011011010)) 
    \data[7]_i_1 
       (.I0(activate_d),
        .I1(p_0_in),
        .I2(state[2]),
        .I3(\data_reg[7]_0 ),
        .I4(state[0]),
        .I5(state[1]),
        .O(lcd_regsel0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000880)) 
    \data[7]_i_2 
       (.I0(\data_reg[7]_0 ),
        .I1(\data_reg[7]_1 ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\data[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(lcd_regsel0),
        .D(\data[0]_i_1_n_0 ),
        .Q(lcd_data_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(lcd_regsel0),
        .D(\data[1]_i_1_n_0 ),
        .Q(lcd_data_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(lcd_regsel0),
        .D(\data[2]_i_1_n_0 ),
        .Q(lcd_data_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(lcd_regsel0),
        .D(\data[3]_i_1_n_0 ),
        .Q(lcd_data_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(lcd_regsel0),
        .D(\data[4]_i_1_n_0 ),
        .Q(lcd_data_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(lcd_regsel0),
        .D(\data[5]_i_1_n_0 ),
        .Q(lcd_data_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(lcd_regsel0),
        .D(\data[6]_i_1_n_0 ),
        .Q(lcd_data_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(lcd_regsel0),
        .D(\data[7]_i_2_n_0 ),
        .Q(lcd_data_OBUF[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    lcd_enable_i_1
       (.I0(lcd_enable_i_3_n_0),
        .I1(timer[12]),
        .I2(timer[13]),
        .I3(timer[14]),
        .I4(timer[0]),
        .I5(lcd_enable_i_4_n_0),
        .O(lcd_enable1_out));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    lcd_enable_i_2
       (.I0(timer[2]),
        .I1(timer[3]),
        .I2(timer[1]),
        .I3(lcd_enable_i_5_n_0),
        .I4(lcd_enable_i_6_n_0),
        .O(lcd_enable));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    lcd_enable_i_3
       (.I0(timer[8]),
        .I1(timer[11]),
        .I2(timer[3]),
        .I3(timer[4]),
        .I4(p_0_in),
        .I5(timer[17]),
        .O(lcd_enable_i_3_n_0));
  LUT5 #(
    .INIT(32'h30080008)) 
    lcd_enable_i_4
       (.I0(lcd_enable_i_7_n_0),
        .I1(timer[5]),
        .I2(timer[2]),
        .I3(timer[1]),
        .I4(lcd_enable_i_8_n_0),
        .O(lcd_enable_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    lcd_enable_i_5
       (.I0(timer[17]),
        .I1(timer[16]),
        .I2(timer[11]),
        .I3(timer[15]),
        .I4(timer[10]),
        .I5(ready_inv_i_4_n_0),
        .O(lcd_enable_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFF)) 
    lcd_enable_i_6
       (.I0(timer[7]),
        .I1(timer[6]),
        .I2(timer[8]),
        .I3(timer[9]),
        .I4(timer[5]),
        .I5(timer[4]),
        .O(lcd_enable_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    lcd_enable_i_7
       (.I0(timer[9]),
        .I1(timer[10]),
        .I2(timer[15]),
        .I3(timer[16]),
        .I4(timer[6]),
        .I5(timer[7]),
        .O(lcd_enable_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    lcd_enable_i_8
       (.I0(timer[9]),
        .I1(timer[10]),
        .I2(timer[15]),
        .I3(timer[16]),
        .I4(timer[7]),
        .I5(timer[6]),
        .O(lcd_enable_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    lcd_enable_reg
       (.C(clk_IBUF_BUFG),
        .CE(lcd_enable1_out),
        .D(lcd_enable),
        .Q(lcd_enable_OBUF),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2400)) 
    lcd_regsel_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\data_reg[7]_0 ),
        .O(lcd_regsel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    lcd_regsel_reg
       (.C(clk_IBUF_BUFG),
        .CE(lcd_regsel0),
        .D(lcd_regsel_i_1_n_0),
        .Q(lcd_regsel_OBUF),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5B6C)) 
    \pending_state[3]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\data_reg[7]_0 ),
        .I3(state[2]),
        .O(\state_reg[1] ));
  LUT5 #(
    .INIT(32'h3FFFAAAA)) 
    ready_inv_i_1
       (.I0(lcd_regsel0),
        .I1(ready_inv_i_2_n_0),
        .I2(timer[17]),
        .I3(timer[16]),
        .I4(p_0_in),
        .O(ready_inv_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAEAAA)) 
    ready_inv_i_2
       (.I0(timer[15]),
        .I1(timer[11]),
        .I2(timer[10]),
        .I3(timer[9]),
        .I4(ready_inv_i_3_n_0),
        .I5(ready_inv_i_4_n_0),
        .O(ready_inv_i_2_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    ready_inv_i_3
       (.I0(timer[7]),
        .I1(timer[6]),
        .I2(timer[8]),
        .O(ready_inv_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    ready_inv_i_4
       (.I0(timer[14]),
        .I1(timer[13]),
        .I2(timer[12]),
        .O(ready_inv_i_4_n_0));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    ready_reg_inv
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ready_inv_i_1_n_0),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5F5FBFFF)) 
    \state[3]_i_1 
       (.I0(\data_reg[7]_0 ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(p_0_in),
        .I4(state[1]),
        .O(\state_reg[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry
       (.CI(1'b0),
        .CO({timer0_carry_n_0,timer0_carry_n_1,timer0_carry_n_2,timer0_carry_n_3}),
        .CYINIT(timer[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timer0[4:1]),
        .S(timer[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__0
       (.CI(timer0_carry_n_0),
        .CO({timer0_carry__0_n_0,timer0_carry__0_n_1,timer0_carry__0_n_2,timer0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timer0[8:5]),
        .S(timer[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__1
       (.CI(timer0_carry__0_n_0),
        .CO({timer0_carry__1_n_0,timer0_carry__1_n_1,timer0_carry__1_n_2,timer0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timer0[12:9]),
        .S(timer[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__2
       (.CI(timer0_carry__1_n_0),
        .CO({timer0_carry__2_n_0,timer0_carry__2_n_1,timer0_carry__2_n_2,timer0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timer0[16:13]),
        .S(timer[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__3
       (.CI(timer0_carry__2_n_0),
        .CO(NLW_timer0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_timer0_carry__3_O_UNCONNECTED[3:1],timer0[17]}),
        .S({1'b0,1'b0,1'b0,timer[17]}));
  LUT5 #(
    .INIT(32'h0000D5FF)) 
    \timer[0]_i_1__0 
       (.I0(timer[17]),
        .I1(\timer[17]_i_2_n_0 ),
        .I2(\timer[17]_i_3_n_0 ),
        .I3(timer[16]),
        .I4(timer[0]),
        .O(p_0_in1_in[0]));
  LUT5 #(
    .INIT(32'hD5FF0000)) 
    \timer[10]_i_1 
       (.I0(timer[17]),
        .I1(\timer[17]_i_2_n_0 ),
        .I2(\timer[17]_i_3_n_0 ),
        .I3(timer[16]),
        .I4(timer0[10]),
        .O(p_0_in1_in[10]));
  LUT5 #(
    .INIT(32'hD5FF0000)) 
    \timer[11]_i_1 
       (.I0(timer[17]),
        .I1(\timer[17]_i_2_n_0 ),
        .I2(\timer[17]_i_3_n_0 ),
        .I3(timer[16]),
        .I4(timer0[11]),
        .O(p_0_in1_in[11]));
  LUT5 #(
    .INIT(32'hD5FF0000)) 
    \timer[12]_i_1 
       (.I0(timer[17]),
        .I1(\timer[17]_i_2_n_0 ),
        .I2(\timer[17]_i_3_n_0 ),
        .I3(timer[16]),
        .I4(timer0[12]),
        .O(p_0_in1_in[12]));
  LUT5 #(
    .INIT(32'hD5FF0000)) 
    \timer[13]_i_1 
       (.I0(timer[17]),
        .I1(\timer[17]_i_2_n_0 ),
        .I2(\timer[17]_i_3_n_0 ),
        .I3(timer[16]),
        .I4(timer0[13]),
        .O(p_0_in1_in[13]));
  LUT5 #(
    .INIT(32'hD5FF0000)) 
    \timer[14]_i_1 
       (.I0(timer[17]),
        .I1(\timer[17]_i_2_n_0 ),
        .I2(\timer[17]_i_3_n_0 ),
        .I3(timer[16]),
        .I4(timer0[14]),
        .O(p_0_in1_in[14]));
  LUT5 #(
    .INIT(32'hD5FF0000)) 
    \timer[15]_i_1 
       (.I0(timer[17]),
        .I1(\timer[17]_i_2_n_0 ),
        .I2(\timer[17]_i_3_n_0 ),
        .I3(timer[16]),
        .I4(timer0[15]),
        .O(p_0_in1_in[15]));
  LUT5 #(
    .INIT(32'hD5FF0000)) 
    \timer[16]_i_1 
       (.I0(timer[17]),
        .I1(\timer[17]_i_2_n_0 ),
        .I2(\timer[17]_i_3_n_0 ),
        .I3(timer[16]),
        .I4(timer0[16]),
        .O(p_0_in1_in[16]));
  LUT5 #(
    .INIT(32'hD5FF0000)) 
    \timer[17]_i_1 
       (.I0(timer[17]),
        .I1(\timer[17]_i_2_n_0 ),
        .I2(\timer[17]_i_3_n_0 ),
        .I3(timer[16]),
        .I4(timer0[17]),
        .O(p_0_in1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \timer[17]_i_2 
       (.I0(timer[13]),
        .I1(timer[12]),
        .I2(timer[15]),
        .I3(timer[14]),
        .O(\timer[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h555557FFFFFFFFFF)) 
    \timer[17]_i_3 
       (.I0(timer[11]),
        .I1(timer[7]),
        .I2(timer[6]),
        .I3(timer[8]),
        .I4(timer[9]),
        .I5(timer[10]),
        .O(\timer[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5FF0000)) 
    \timer[1]_i_1 
       (.I0(timer[17]),
        .I1(\timer[17]_i_2_n_0 ),
        .I2(\timer[17]_i_3_n_0 ),
        .I3(timer[16]),
        .I4(timer0[1]),
        .O(p_0_in1_in[1]));
  LUT5 #(
    .INIT(32'hD5FF0000)) 
    \timer[2]_i_1 
       (.I0(timer[17]),
        .I1(\timer[17]_i_2_n_0 ),
        .I2(\timer[17]_i_3_n_0 ),
        .I3(timer[16]),
        .I4(timer0[2]),
        .O(p_0_in1_in[2]));
  LUT5 #(
    .INIT(32'hD5FF0000)) 
    \timer[3]_i_1 
       (.I0(timer[17]),
        .I1(\timer[17]_i_2_n_0 ),
        .I2(\timer[17]_i_3_n_0 ),
        .I3(timer[16]),
        .I4(timer0[3]),
        .O(p_0_in1_in[3]));
  LUT5 #(
    .INIT(32'hD5FF0000)) 
    \timer[4]_i_1 
       (.I0(timer[17]),
        .I1(\timer[17]_i_2_n_0 ),
        .I2(\timer[17]_i_3_n_0 ),
        .I3(timer[16]),
        .I4(timer0[4]),
        .O(p_0_in1_in[4]));
  LUT5 #(
    .INIT(32'hD5FF0000)) 
    \timer[5]_i_1 
       (.I0(timer[17]),
        .I1(\timer[17]_i_2_n_0 ),
        .I2(\timer[17]_i_3_n_0 ),
        .I3(timer[16]),
        .I4(timer0[5]),
        .O(p_0_in1_in[5]));
  LUT5 #(
    .INIT(32'hD5FF0000)) 
    \timer[6]_i_1 
       (.I0(timer[17]),
        .I1(\timer[17]_i_2_n_0 ),
        .I2(\timer[17]_i_3_n_0 ),
        .I3(timer[16]),
        .I4(timer0[6]),
        .O(p_0_in1_in[6]));
  LUT5 #(
    .INIT(32'hD5FF0000)) 
    \timer[7]_i_1 
       (.I0(timer[17]),
        .I1(\timer[17]_i_2_n_0 ),
        .I2(\timer[17]_i_3_n_0 ),
        .I3(timer[16]),
        .I4(timer0[7]),
        .O(p_0_in1_in[7]));
  LUT5 #(
    .INIT(32'hD5FF0000)) 
    \timer[8]_i_1 
       (.I0(timer[17]),
        .I1(\timer[17]_i_2_n_0 ),
        .I2(\timer[17]_i_3_n_0 ),
        .I3(timer[16]),
        .I4(timer0[8]),
        .O(p_0_in1_in[8]));
  LUT5 #(
    .INIT(32'hD5FF0000)) 
    \timer[9]_i_1 
       (.I0(timer[17]),
        .I1(\timer[17]_i_2_n_0 ),
        .I2(\timer[17]_i_3_n_0 ),
        .I3(timer[16]),
        .I4(timer0[9]),
        .O(p_0_in1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(p_0_in1_in[0]),
        .Q(timer[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(p_0_in1_in[10]),
        .Q(timer[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(p_0_in1_in[11]),
        .Q(timer[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(p_0_in1_in[12]),
        .Q(timer[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(p_0_in1_in[13]),
        .Q(timer[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(p_0_in1_in[14]),
        .Q(timer[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(p_0_in1_in[15]),
        .Q(timer[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(p_0_in1_in[16]),
        .Q(timer[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(p_0_in1_in[17]),
        .Q(timer[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(p_0_in1_in[1]),
        .Q(timer[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(p_0_in1_in[2]),
        .Q(timer[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(p_0_in1_in[3]),
        .Q(timer[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(p_0_in1_in[4]),
        .Q(timer[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(p_0_in1_in[5]),
        .Q(timer[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(p_0_in1_in[6]),
        .Q(timer[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(p_0_in1_in[7]),
        .Q(timer[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(p_0_in1_in[8]),
        .Q(timer[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(p_0_in1_in[9]),
        .Q(timer[9]),
        .R(1'b0));
endmodule

module lcd_string
   (lcd_regsel_OBUF,
    lcd_enable_OBUF,
    \state_reg[3]_0 ,
    lcd_data_OBUF,
    clk_IBUF_BUFG,
    led_OBUF,
    led_OBUF_0_sp_1,
    deb_held_0,
    \line2_reg[0]_0 ,
    \line1_reg[5]_0 ,
    \line1_reg[0]_0 ,
    \line2_reg[5]_0 ,
    \line2_reg[2]_0 );
  output lcd_regsel_OBUF;
  output lcd_enable_OBUF;
  output [0:0]\state_reg[3]_0 ;
  output [7:0]lcd_data_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]led_OBUF;
  input led_OBUF_0_sp_1;
  input deb_held_0;
  input \line2_reg[0]_0 ;
  input \line1_reg[5]_0 ;
  input \line1_reg[0]_0 ;
  input \line2_reg[5]_0 ;
  input \line2_reg[2]_0 ;

  wire \address[4]_i_2_n_0 ;
  wire \address[5]_i_2_n_0 ;
  wire \address[7]_i_1_n_0 ;
  wire \address[7]_i_3_n_0 ;
  wire \address_reg_n_0_[0] ;
  wire \address_reg_n_0_[1] ;
  wire \address_reg_n_0_[2] ;
  wire \address_reg_n_0_[3] ;
  wire \address_reg_n_0_[4] ;
  wire \address_reg_n_0_[5] ;
  wire \address_reg_n_0_[6] ;
  wire \address_reg_n_0_[7] ;
  wire clk_IBUF_BUFG;
  wire [6:0]data1;
  wire [6:0]data2;
  wire deb_held_0;
  wire lcd1_n_0;
  wire lcd1_n_3;
  wire [7:0]lcd_data_OBUF;
  wire lcd_enable_OBUF;
  wire lcd_regsel_OBUF;
  wire [0:0]led_OBUF;
  wire led_OBUF_0_sn_1;
  wire \line1[100]_i_1_n_0 ;
  wire \line1[101]_i_1_n_0 ;
  wire \line1[102]_i_1_n_0 ;
  wire \line1[104]_i_1_n_0 ;
  wire \line1[105]_i_1_n_0 ;
  wire \line1[106]_i_1_n_0 ;
  wire \line1[107]_i_1_n_0 ;
  wire \line1[108]_i_1_n_0 ;
  wire \line1[109]_i_1_n_0 ;
  wire \line1[10]_i_1_n_0 ;
  wire \line1[110]_i_1_n_0 ;
  wire \line1[112]_i_1_n_0 ;
  wire \line1[113]_i_1_n_0 ;
  wire \line1[114]_i_1_n_0 ;
  wire \line1[115]_i_1_n_0 ;
  wire \line1[116]_i_1_n_0 ;
  wire \line1[117]_i_1_n_0 ;
  wire \line1[118]_i_1_n_0 ;
  wire \line1[11]_i_1_n_0 ;
  wire \line1[120]_i_1_n_0 ;
  wire \line1[121]_i_1_n_0 ;
  wire \line1[122]_i_1_n_0 ;
  wire \line1[123]_i_1_n_0 ;
  wire \line1[124]_i_1_n_0 ;
  wire \line1[125]_i_1_n_0 ;
  wire \line1[126]_i_1_n_0 ;
  wire \line1[126]_i_2_n_0 ;
  wire \line1[12]_i_1_n_0 ;
  wire \line1[13]_i_1_n_0 ;
  wire \line1[14]_i_1_n_0 ;
  wire \line1[16]_i_1_n_0 ;
  wire \line1[17]_i_1_n_0 ;
  wire \line1[18]_i_1_n_0 ;
  wire \line1[19]_i_1_n_0 ;
  wire \line1[20]_i_1_n_0 ;
  wire \line1[21]_i_1_n_0 ;
  wire \line1[22]_i_1_n_0 ;
  wire \line1[24]_i_1_n_0 ;
  wire \line1[25]_i_1_n_0 ;
  wire \line1[26]_i_1_n_0 ;
  wire \line1[27]_i_1_n_0 ;
  wire \line1[28]_i_1_n_0 ;
  wire \line1[29]_i_1_n_0 ;
  wire \line1[30]_i_1_n_0 ;
  wire \line1[32]_i_1_n_0 ;
  wire \line1[33]_i_1_n_0 ;
  wire \line1[34]_i_1_n_0 ;
  wire \line1[35]_i_1_n_0 ;
  wire \line1[36]_i_1_n_0 ;
  wire \line1[37]_i_1_n_0 ;
  wire \line1[38]_i_1_n_0 ;
  wire \line1[3]_i_1_n_0 ;
  wire \line1[40]_i_1_n_0 ;
  wire \line1[41]_i_1_n_0 ;
  wire \line1[42]_i_1_n_0 ;
  wire \line1[43]_i_1_n_0 ;
  wire \line1[44]_i_1_n_0 ;
  wire \line1[45]_i_1_n_0 ;
  wire \line1[46]_i_1_n_0 ;
  wire \line1[48]_i_1_n_0 ;
  wire \line1[49]_i_1_n_0 ;
  wire \line1[50]_i_1_n_0 ;
  wire \line1[51]_i_1_n_0 ;
  wire \line1[52]_i_1_n_0 ;
  wire \line1[53]_i_1_n_0 ;
  wire \line1[54]_i_1_n_0 ;
  wire \line1[56]_i_1_n_0 ;
  wire \line1[57]_i_1_n_0 ;
  wire \line1[58]_i_1_n_0 ;
  wire \line1[59]_i_1_n_0 ;
  wire \line1[60]_i_1_n_0 ;
  wire \line1[61]_i_1_n_0 ;
  wire \line1[62]_i_1_n_0 ;
  wire \line1[64]_i_1_n_0 ;
  wire \line1[65]_i_1_n_0 ;
  wire \line1[66]_i_1_n_0 ;
  wire \line1[67]_i_1_n_0 ;
  wire \line1[68]_i_1_n_0 ;
  wire \line1[69]_i_1_n_0 ;
  wire \line1[70]_i_1_n_0 ;
  wire \line1[72]_i_1_n_0 ;
  wire \line1[73]_i_1_n_0 ;
  wire \line1[74]_i_1_n_0 ;
  wire \line1[75]_i_1_n_0 ;
  wire \line1[76]_i_1_n_0 ;
  wire \line1[77]_i_1_n_0 ;
  wire \line1[78]_i_1_n_0 ;
  wire \line1[80]_i_1_n_0 ;
  wire \line1[81]_i_1_n_0 ;
  wire \line1[82]_i_1_n_0 ;
  wire \line1[83]_i_1_n_0 ;
  wire \line1[84]_i_1_n_0 ;
  wire \line1[85]_i_1_n_0 ;
  wire \line1[86]_i_1_n_0 ;
  wire \line1[88]_i_1_n_0 ;
  wire \line1[89]_i_1_n_0 ;
  wire \line1[8]_i_1_n_0 ;
  wire \line1[90]_i_1_n_0 ;
  wire \line1[91]_i_1_n_0 ;
  wire \line1[92]_i_1_n_0 ;
  wire \line1[93]_i_1_n_0 ;
  wire \line1[94]_i_1_n_0 ;
  wire \line1[96]_i_1_n_0 ;
  wire \line1[97]_i_1_n_0 ;
  wire \line1[98]_i_1_n_0 ;
  wire \line1[99]_i_1_n_0 ;
  wire \line1[9]_i_1_n_0 ;
  wire \line1_reg[0]_0 ;
  wire \line1_reg[5]_0 ;
  wire \line1_reg_n_0_[0] ;
  wire \line1_reg_n_0_[100] ;
  wire \line1_reg_n_0_[101] ;
  wire \line1_reg_n_0_[102] ;
  wire \line1_reg_n_0_[104] ;
  wire \line1_reg_n_0_[105] ;
  wire \line1_reg_n_0_[106] ;
  wire \line1_reg_n_0_[107] ;
  wire \line1_reg_n_0_[108] ;
  wire \line1_reg_n_0_[109] ;
  wire \line1_reg_n_0_[10] ;
  wire \line1_reg_n_0_[110] ;
  wire \line1_reg_n_0_[112] ;
  wire \line1_reg_n_0_[113] ;
  wire \line1_reg_n_0_[114] ;
  wire \line1_reg_n_0_[115] ;
  wire \line1_reg_n_0_[116] ;
  wire \line1_reg_n_0_[117] ;
  wire \line1_reg_n_0_[118] ;
  wire \line1_reg_n_0_[11] ;
  wire \line1_reg_n_0_[12] ;
  wire \line1_reg_n_0_[13] ;
  wire \line1_reg_n_0_[14] ;
  wire \line1_reg_n_0_[16] ;
  wire \line1_reg_n_0_[17] ;
  wire \line1_reg_n_0_[18] ;
  wire \line1_reg_n_0_[19] ;
  wire \line1_reg_n_0_[20] ;
  wire \line1_reg_n_0_[21] ;
  wire \line1_reg_n_0_[22] ;
  wire \line1_reg_n_0_[24] ;
  wire \line1_reg_n_0_[25] ;
  wire \line1_reg_n_0_[26] ;
  wire \line1_reg_n_0_[27] ;
  wire \line1_reg_n_0_[28] ;
  wire \line1_reg_n_0_[29] ;
  wire \line1_reg_n_0_[30] ;
  wire \line1_reg_n_0_[32] ;
  wire \line1_reg_n_0_[33] ;
  wire \line1_reg_n_0_[34] ;
  wire \line1_reg_n_0_[35] ;
  wire \line1_reg_n_0_[36] ;
  wire \line1_reg_n_0_[37] ;
  wire \line1_reg_n_0_[38] ;
  wire \line1_reg_n_0_[3] ;
  wire \line1_reg_n_0_[40] ;
  wire \line1_reg_n_0_[41] ;
  wire \line1_reg_n_0_[42] ;
  wire \line1_reg_n_0_[43] ;
  wire \line1_reg_n_0_[44] ;
  wire \line1_reg_n_0_[45] ;
  wire \line1_reg_n_0_[46] ;
  wire \line1_reg_n_0_[48] ;
  wire \line1_reg_n_0_[49] ;
  wire \line1_reg_n_0_[50] ;
  wire \line1_reg_n_0_[51] ;
  wire \line1_reg_n_0_[52] ;
  wire \line1_reg_n_0_[53] ;
  wire \line1_reg_n_0_[54] ;
  wire \line1_reg_n_0_[56] ;
  wire \line1_reg_n_0_[57] ;
  wire \line1_reg_n_0_[58] ;
  wire \line1_reg_n_0_[59] ;
  wire \line1_reg_n_0_[5] ;
  wire \line1_reg_n_0_[60] ;
  wire \line1_reg_n_0_[61] ;
  wire \line1_reg_n_0_[62] ;
  wire \line1_reg_n_0_[64] ;
  wire \line1_reg_n_0_[65] ;
  wire \line1_reg_n_0_[66] ;
  wire \line1_reg_n_0_[67] ;
  wire \line1_reg_n_0_[68] ;
  wire \line1_reg_n_0_[69] ;
  wire \line1_reg_n_0_[6] ;
  wire \line1_reg_n_0_[70] ;
  wire \line1_reg_n_0_[72] ;
  wire \line1_reg_n_0_[73] ;
  wire \line1_reg_n_0_[74] ;
  wire \line1_reg_n_0_[75] ;
  wire \line1_reg_n_0_[76] ;
  wire \line1_reg_n_0_[77] ;
  wire \line1_reg_n_0_[78] ;
  wire \line1_reg_n_0_[80] ;
  wire \line1_reg_n_0_[81] ;
  wire \line1_reg_n_0_[82] ;
  wire \line1_reg_n_0_[83] ;
  wire \line1_reg_n_0_[84] ;
  wire \line1_reg_n_0_[85] ;
  wire \line1_reg_n_0_[86] ;
  wire \line1_reg_n_0_[88] ;
  wire \line1_reg_n_0_[89] ;
  wire \line1_reg_n_0_[8] ;
  wire \line1_reg_n_0_[90] ;
  wire \line1_reg_n_0_[91] ;
  wire \line1_reg_n_0_[92] ;
  wire \line1_reg_n_0_[93] ;
  wire \line1_reg_n_0_[94] ;
  wire \line1_reg_n_0_[96] ;
  wire \line1_reg_n_0_[97] ;
  wire \line1_reg_n_0_[98] ;
  wire \line1_reg_n_0_[99] ;
  wire \line1_reg_n_0_[9] ;
  wire \line2[100]_i_1_n_0 ;
  wire \line2[101]_i_1_n_0 ;
  wire \line2[102]_i_1_n_0 ;
  wire \line2[104]_i_1_n_0 ;
  wire \line2[105]_i_1_n_0 ;
  wire \line2[106]_i_1_n_0 ;
  wire \line2[107]_i_1_n_0 ;
  wire \line2[108]_i_1_n_0 ;
  wire \line2[109]_i_1_n_0 ;
  wire \line2[10]_i_1_n_0 ;
  wire \line2[110]_i_1_n_0 ;
  wire \line2[112]_i_1_n_0 ;
  wire \line2[113]_i_1_n_0 ;
  wire \line2[114]_i_1_n_0 ;
  wire \line2[115]_i_1_n_0 ;
  wire \line2[116]_i_1_n_0 ;
  wire \line2[117]_i_1_n_0 ;
  wire \line2[118]_i_1_n_0 ;
  wire \line2[11]_i_1_n_0 ;
  wire \line2[120]_i_1_n_0 ;
  wire \line2[121]_i_1_n_0 ;
  wire \line2[122]_i_1_n_0 ;
  wire \line2[123]_i_1_n_0 ;
  wire \line2[124]_i_1_n_0 ;
  wire \line2[125]_i_1_n_0 ;
  wire \line2[126]_i_1_n_0 ;
  wire \line2[126]_i_2_n_0 ;
  wire \line2[12]_i_1_n_0 ;
  wire \line2[13]_i_1_n_0 ;
  wire \line2[14]_i_1_n_0 ;
  wire \line2[16]_i_1_n_0 ;
  wire \line2[17]_i_1_n_0 ;
  wire \line2[18]_i_1_n_0 ;
  wire \line2[19]_i_1_n_0 ;
  wire \line2[20]_i_1_n_0 ;
  wire \line2[21]_i_1_n_0 ;
  wire \line2[22]_i_1_n_0 ;
  wire \line2[24]_i_1_n_0 ;
  wire \line2[25]_i_1_n_0 ;
  wire \line2[26]_i_1_n_0 ;
  wire \line2[27]_i_1_n_0 ;
  wire \line2[28]_i_1_n_0 ;
  wire \line2[29]_i_1_n_0 ;
  wire \line2[30]_i_1_n_0 ;
  wire \line2[32]_i_1_n_0 ;
  wire \line2[33]_i_1_n_0 ;
  wire \line2[34]_i_1_n_0 ;
  wire \line2[35]_i_1_n_0 ;
  wire \line2[36]_i_1_n_0 ;
  wire \line2[37]_i_1_n_0 ;
  wire \line2[38]_i_1_n_0 ;
  wire \line2[40]_i_1_n_0 ;
  wire \line2[41]_i_1_n_0 ;
  wire \line2[42]_i_1_n_0 ;
  wire \line2[43]_i_1_n_0 ;
  wire \line2[44]_i_1_n_0 ;
  wire \line2[45]_i_1_n_0 ;
  wire \line2[46]_i_1_n_0 ;
  wire \line2[48]_i_1_n_0 ;
  wire \line2[49]_i_1_n_0 ;
  wire \line2[4]_i_1_n_0 ;
  wire \line2[50]_i_1_n_0 ;
  wire \line2[51]_i_1_n_0 ;
  wire \line2[52]_i_1_n_0 ;
  wire \line2[53]_i_1_n_0 ;
  wire \line2[54]_i_1_n_0 ;
  wire \line2[56]_i_1_n_0 ;
  wire \line2[57]_i_1_n_0 ;
  wire \line2[58]_i_1_n_0 ;
  wire \line2[59]_i_1_n_0 ;
  wire \line2[60]_i_1_n_0 ;
  wire \line2[61]_i_1_n_0 ;
  wire \line2[62]_i_1_n_0 ;
  wire \line2[64]_i_1_n_0 ;
  wire \line2[65]_i_1_n_0 ;
  wire \line2[66]_i_1_n_0 ;
  wire \line2[67]_i_1_n_0 ;
  wire \line2[68]_i_1_n_0 ;
  wire \line2[69]_i_1_n_0 ;
  wire \line2[70]_i_1_n_0 ;
  wire \line2[72]_i_1_n_0 ;
  wire \line2[73]_i_1_n_0 ;
  wire \line2[74]_i_1_n_0 ;
  wire \line2[75]_i_1_n_0 ;
  wire \line2[76]_i_1_n_0 ;
  wire \line2[77]_i_1_n_0 ;
  wire \line2[78]_i_1_n_0 ;
  wire \line2[80]_i_1_n_0 ;
  wire \line2[81]_i_1_n_0 ;
  wire \line2[82]_i_1_n_0 ;
  wire \line2[83]_i_1_n_0 ;
  wire \line2[84]_i_1_n_0 ;
  wire \line2[85]_i_1_n_0 ;
  wire \line2[86]_i_1_n_0 ;
  wire \line2[88]_i_1_n_0 ;
  wire \line2[89]_i_1_n_0 ;
  wire \line2[8]_i_1_n_0 ;
  wire \line2[90]_i_1_n_0 ;
  wire \line2[91]_i_1_n_0 ;
  wire \line2[92]_i_1_n_0 ;
  wire \line2[93]_i_1_n_0 ;
  wire \line2[94]_i_1_n_0 ;
  wire \line2[96]_i_1_n_0 ;
  wire \line2[97]_i_1_n_0 ;
  wire \line2[98]_i_1_n_0 ;
  wire \line2[99]_i_1_n_0 ;
  wire \line2[9]_i_1_n_0 ;
  wire \line2_reg[0]_0 ;
  wire \line2_reg[2]_0 ;
  wire \line2_reg[5]_0 ;
  wire \line2_reg_n_0_[0] ;
  wire \line2_reg_n_0_[100] ;
  wire \line2_reg_n_0_[101] ;
  wire \line2_reg_n_0_[102] ;
  wire \line2_reg_n_0_[104] ;
  wire \line2_reg_n_0_[105] ;
  wire \line2_reg_n_0_[106] ;
  wire \line2_reg_n_0_[107] ;
  wire \line2_reg_n_0_[108] ;
  wire \line2_reg_n_0_[109] ;
  wire \line2_reg_n_0_[10] ;
  wire \line2_reg_n_0_[110] ;
  wire \line2_reg_n_0_[112] ;
  wire \line2_reg_n_0_[113] ;
  wire \line2_reg_n_0_[114] ;
  wire \line2_reg_n_0_[115] ;
  wire \line2_reg_n_0_[116] ;
  wire \line2_reg_n_0_[117] ;
  wire \line2_reg_n_0_[118] ;
  wire \line2_reg_n_0_[11] ;
  wire \line2_reg_n_0_[12] ;
  wire \line2_reg_n_0_[13] ;
  wire \line2_reg_n_0_[14] ;
  wire \line2_reg_n_0_[16] ;
  wire \line2_reg_n_0_[17] ;
  wire \line2_reg_n_0_[18] ;
  wire \line2_reg_n_0_[19] ;
  wire \line2_reg_n_0_[1] ;
  wire \line2_reg_n_0_[20] ;
  wire \line2_reg_n_0_[21] ;
  wire \line2_reg_n_0_[22] ;
  wire \line2_reg_n_0_[24] ;
  wire \line2_reg_n_0_[25] ;
  wire \line2_reg_n_0_[26] ;
  wire \line2_reg_n_0_[27] ;
  wire \line2_reg_n_0_[28] ;
  wire \line2_reg_n_0_[29] ;
  wire \line2_reg_n_0_[2] ;
  wire \line2_reg_n_0_[30] ;
  wire \line2_reg_n_0_[32] ;
  wire \line2_reg_n_0_[33] ;
  wire \line2_reg_n_0_[34] ;
  wire \line2_reg_n_0_[35] ;
  wire \line2_reg_n_0_[36] ;
  wire \line2_reg_n_0_[37] ;
  wire \line2_reg_n_0_[38] ;
  wire \line2_reg_n_0_[40] ;
  wire \line2_reg_n_0_[41] ;
  wire \line2_reg_n_0_[42] ;
  wire \line2_reg_n_0_[43] ;
  wire \line2_reg_n_0_[44] ;
  wire \line2_reg_n_0_[45] ;
  wire \line2_reg_n_0_[46] ;
  wire \line2_reg_n_0_[48] ;
  wire \line2_reg_n_0_[49] ;
  wire \line2_reg_n_0_[4] ;
  wire \line2_reg_n_0_[50] ;
  wire \line2_reg_n_0_[51] ;
  wire \line2_reg_n_0_[52] ;
  wire \line2_reg_n_0_[53] ;
  wire \line2_reg_n_0_[54] ;
  wire \line2_reg_n_0_[56] ;
  wire \line2_reg_n_0_[57] ;
  wire \line2_reg_n_0_[58] ;
  wire \line2_reg_n_0_[59] ;
  wire \line2_reg_n_0_[5] ;
  wire \line2_reg_n_0_[60] ;
  wire \line2_reg_n_0_[61] ;
  wire \line2_reg_n_0_[62] ;
  wire \line2_reg_n_0_[64] ;
  wire \line2_reg_n_0_[65] ;
  wire \line2_reg_n_0_[66] ;
  wire \line2_reg_n_0_[67] ;
  wire \line2_reg_n_0_[68] ;
  wire \line2_reg_n_0_[69] ;
  wire \line2_reg_n_0_[6] ;
  wire \line2_reg_n_0_[70] ;
  wire \line2_reg_n_0_[72] ;
  wire \line2_reg_n_0_[73] ;
  wire \line2_reg_n_0_[74] ;
  wire \line2_reg_n_0_[75] ;
  wire \line2_reg_n_0_[76] ;
  wire \line2_reg_n_0_[77] ;
  wire \line2_reg_n_0_[78] ;
  wire \line2_reg_n_0_[80] ;
  wire \line2_reg_n_0_[81] ;
  wire \line2_reg_n_0_[82] ;
  wire \line2_reg_n_0_[83] ;
  wire \line2_reg_n_0_[84] ;
  wire \line2_reg_n_0_[85] ;
  wire \line2_reg_n_0_[86] ;
  wire \line2_reg_n_0_[88] ;
  wire \line2_reg_n_0_[89] ;
  wire \line2_reg_n_0_[8] ;
  wire \line2_reg_n_0_[90] ;
  wire \line2_reg_n_0_[91] ;
  wire \line2_reg_n_0_[92] ;
  wire \line2_reg_n_0_[93] ;
  wire \line2_reg_n_0_[94] ;
  wire \line2_reg_n_0_[96] ;
  wire \line2_reg_n_0_[97] ;
  wire \line2_reg_n_0_[98] ;
  wire \line2_reg_n_0_[99] ;
  wire \line2_reg_n_0_[9] ;
  wire [7:0]p_1_in;
  wire [3:0]pending_state;
  wire \pending_state[0]_i_1_n_0 ;
  wire \pending_state[1]_i_1_n_0 ;
  wire \pending_state[2]_i_1_n_0 ;
  wire \pending_state[3]_i_2_n_0 ;
  wire [2:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire [0:0]\state_reg[3]_0 ;

  assign led_OBUF_0_sn_1 = led_OBUF_0_sp_1;
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h002E)) 
    \address[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\address_reg_n_0_[0] ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00747400)) 
    \address[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\address_reg_n_0_[0] ),
        .I4(\address_reg_n_0_[1] ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h0074747474000000)) 
    \address[2]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\address_reg_n_0_[1] ),
        .I4(\address_reg_n_0_[0] ),
        .I5(\address_reg_n_0_[2] ),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \address[3]_i_1 
       (.I0(\address_reg_n_0_[1] ),
        .I1(\address_reg_n_0_[0] ),
        .I2(\address_reg_n_0_[2] ),
        .I3(\address[4]_i_2_n_0 ),
        .I4(\address_reg_n_0_[3] ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \address[4]_i_1 
       (.I0(\address_reg_n_0_[2] ),
        .I1(\address_reg_n_0_[0] ),
        .I2(\address_reg_n_0_[1] ),
        .I3(\address_reg_n_0_[3] ),
        .I4(\address[4]_i_2_n_0 ),
        .I5(\address_reg_n_0_[4] ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \address[4]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\address[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B0BBB000404440)) 
    \address[5]_i_1 
       (.I0(\address[5]_i_2_n_0 ),
        .I1(\address_reg_n_0_[4] ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\address_reg_n_0_[5] ),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \address[5]_i_2 
       (.I0(\address_reg_n_0_[2] ),
        .I1(\address_reg_n_0_[0] ),
        .I2(\address_reg_n_0_[1] ),
        .I3(\address_reg_n_0_[3] ),
        .O(\address[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF84A584)) 
    \address[6]_i_1 
       (.I0(\address_reg_n_0_[6] ),
        .I1(state[2]),
        .I2(\address[7]_i_3_n_0 ),
        .I3(state[1]),
        .I4(state[0]),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'h6030)) 
    \address[7]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\state_reg[3]_0 ),
        .I3(state[0]),
        .O(\address[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF9A9AFF)) 
    \address[7]_i_2 
       (.I0(\address_reg_n_0_[7] ),
        .I1(\address[7]_i_3_n_0 ),
        .I2(\address_reg_n_0_[6] ),
        .I3(state[1]),
        .I4(state[0]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \address[7]_i_3 
       (.I0(\address_reg_n_0_[4] ),
        .I1(\address_reg_n_0_[2] ),
        .I2(\address_reg_n_0_[0] ),
        .I3(\address_reg_n_0_[1] ),
        .I4(\address_reg_n_0_[3] ),
        .I5(\address_reg_n_0_[5] ),
        .O(\address[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\address_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\address_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\address_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\address_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\address_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\address_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\address_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\address[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\address_reg_n_0_[7] ),
        .R(1'b0));
  lcd_ctrl lcd1
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data1(data1),
        .data2(data2),
        .\data_reg[0]_0 (\address_reg_n_0_[0] ),
        .\data_reg[1]_0 (\address_reg_n_0_[1] ),
        .\data_reg[2]_0 (\address_reg_n_0_[2] ),
        .\data_reg[3]_0 (\address_reg_n_0_[3] ),
        .\data_reg[4]_0 (\address_reg_n_0_[4] ),
        .\data_reg[5]_0 (\address_reg_n_0_[5] ),
        .\data_reg[6]_0 (\address_reg_n_0_[6] ),
        .\data_reg[7]_0 (\state_reg[3]_0 ),
        .\data_reg[7]_1 (\address_reg_n_0_[7] ),
        .lcd_data_OBUF(lcd_data_OBUF),
        .lcd_enable_OBUF(lcd_enable_OBUF),
        .lcd_regsel_OBUF(lcd_regsel_OBUF),
        .state(state),
        .\state_reg[1] (lcd1_n_0),
        .\state_reg[3] (lcd1_n_3));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line1[100]_i_1 
       (.I0(\line1_reg_n_0_[92] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF),
        .O(\line1[100]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line1[101]_i_1 
       (.I0(\line1_reg_n_0_[93] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[101]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \line1[102]_i_1 
       (.I0(\line1_reg_n_0_[94] ),
        .I1(\state_reg[3]_0 ),
        .O(\line1[102]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line1[104]_i_1 
       (.I0(\line1_reg_n_0_[96] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF),
        .O(\line1[104]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line1[105]_i_1 
       (.I0(\line1_reg_n_0_[97] ),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF),
        .O(\line1[105]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hBB8B)) 
    \line1[106]_i_1 
       (.I0(\line1_reg_n_0_[98] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[106]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \line1[107]_i_1 
       (.I0(\line1_reg_n_0_[99] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF_0_sn_1),
        .I3(led_OBUF),
        .O(\line1[107]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line1[108]_i_1 
       (.I0(\state_reg[3]_0 ),
        .I1(\line1_reg_n_0_[100] ),
        .O(\line1[108]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line1[109]_i_1 
       (.I0(\line1_reg_n_0_[101] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[109]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line1[10]_i_1 
       (.I0(\line1_reg_n_0_[6] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .O(\line1[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \line1[110]_i_1 
       (.I0(\line1_reg_n_0_[102] ),
        .I1(\state_reg[3]_0 ),
        .O(\line1[110]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hBB8B)) 
    \line1[112]_i_1 
       (.I0(\line1_reg_n_0_[104] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[112]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \line1[113]_i_1 
       (.I0(\line1_reg_n_0_[105] ),
        .I1(led_OBUF_0_sn_1),
        .I2(led_OBUF),
        .I3(\state_reg[3]_0 ),
        .O(\line1[113]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hA0A3)) 
    \line1[114]_i_1 
       (.I0(\line1_reg_n_0_[106] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[114]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line1[115]_i_1 
       (.I0(\line1_reg_n_0_[107] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[115]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \line1[116]_i_1 
       (.I0(\line1_reg_n_0_[108] ),
        .I1(led_OBUF_0_sn_1),
        .I2(led_OBUF),
        .I3(\state_reg[3]_0 ),
        .O(\line1[116]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line1[117]_i_1 
       (.I0(\line1_reg_n_0_[109] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[117]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \line1[118]_i_1 
       (.I0(\line1_reg_n_0_[110] ),
        .I1(\state_reg[3]_0 ),
        .O(\line1[118]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hA0A3A0AF)) 
    \line1[11]_i_1 
       (.I0(\line1_reg_n_0_[3] ),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF),
        .I4(deb_held_0),
        .O(\line1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \line1[120]_i_1 
       (.I0(led_OBUF_0_sn_1),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .I3(\line1_reg_n_0_[112] ),
        .O(\line1[120]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line1[121]_i_1 
       (.I0(\line1_reg_n_0_[113] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .O(\line1[121]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hBB8B)) 
    \line1[122]_i_1 
       (.I0(\line1_reg_n_0_[114] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF_0_sn_1),
        .I3(led_OBUF),
        .O(\line1[122]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line1[123]_i_1 
       (.I0(\state_reg[3]_0 ),
        .I1(\line1_reg_n_0_[115] ),
        .O(\line1[123]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \line1[124]_i_1 
       (.I0(\line1_reg_n_0_[116] ),
        .I1(\state_reg[3]_0 ),
        .O(\line1[124]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line1[125]_i_1 
       (.I0(\line1_reg_n_0_[117] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[125]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \line1[126]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\line1[126]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \line1[126]_i_2 
       (.I0(\line1_reg_n_0_[118] ),
        .I1(\state_reg[3]_0 ),
        .O(\line1[126]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \line1[12]_i_1 
       (.I0(led_OBUF_0_sn_1),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF),
        .I3(deb_held_0),
        .O(\line1[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line1[13]_i_1 
       (.I0(\line1_reg_n_0_[5] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF),
        .O(\line1[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \line1[14]_i_1 
       (.I0(\line1_reg_n_0_[6] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF_0_sn_1),
        .I3(led_OBUF),
        .O(\line1[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line1[16]_i_1 
       (.I0(\line1_reg_n_0_[8] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .O(\line1[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hA3AC)) 
    \line1[17]_i_1 
       (.I0(\line1_reg_n_0_[9] ),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF),
        .O(\line1[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \line1[18]_i_1 
       (.I0(\line1_reg_n_0_[10] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF_0_sn_1),
        .I3(led_OBUF),
        .O(\line1[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \line1[19]_i_1 
       (.I0(\line1_reg_n_0_[11] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF_0_sn_1),
        .I3(led_OBUF),
        .O(\line1[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line1[20]_i_1 
       (.I0(\state_reg[3]_0 ),
        .I1(\line1_reg_n_0_[12] ),
        .O(\line1[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line1[21]_i_1 
       (.I0(\line1_reg_n_0_[13] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF),
        .O(\line1[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \line1[22]_i_1 
       (.I0(\line1_reg_n_0_[14] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF_0_sn_1),
        .I3(led_OBUF),
        .O(\line1[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line1[24]_i_1 
       (.I0(\line1_reg_n_0_[16] ),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .O(\line1[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA0CAA00)) 
    \line1[25]_i_1 
       (.I0(\line1_reg_n_0_[17] ),
        .I1(deb_held_0),
        .I2(led_OBUF),
        .I3(\state_reg[3]_0 ),
        .I4(led_OBUF_0_sn_1),
        .O(\line1[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hA3AC)) 
    \line1[26]_i_1 
       (.I0(\line1_reg_n_0_[18] ),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF),
        .O(\line1[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFF310031)) 
    \line1[27]_i_1 
       (.I0(led_OBUF_0_sn_1),
        .I1(led_OBUF),
        .I2(deb_held_0),
        .I3(\state_reg[3]_0 ),
        .I4(\line1_reg_n_0_[19] ),
        .O(\line1[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line1[28]_i_1 
       (.I0(\state_reg[3]_0 ),
        .I1(\line1_reg_n_0_[20] ),
        .O(\line1[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line1[29]_i_1 
       (.I0(\line1_reg_n_0_[21] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF),
        .O(\line1[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \line1[30]_i_1 
       (.I0(\line1_reg_n_0_[22] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF_0_sn_1),
        .I3(led_OBUF),
        .O(\line1[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hBB8B)) 
    \line1[32]_i_1 
       (.I0(\line1_reg_n_0_[24] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF_0_sn_1),
        .I3(led_OBUF),
        .O(\line1[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hA0A3)) 
    \line1[33]_i_1 
       (.I0(\line1_reg_n_0_[25] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line1[34]_i_1 
       (.I0(\line1_reg_n_0_[26] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \line1[35]_i_1 
       (.I0(\line1_reg_n_0_[27] ),
        .I1(led_OBUF_0_sn_1),
        .I2(led_OBUF),
        .I3(\state_reg[3]_0 ),
        .O(\line1[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line1[36]_i_1 
       (.I0(\line1_reg_n_0_[28] ),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .O(\line1[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hFE0E)) 
    \line1[37]_i_1 
       (.I0(led_OBUF),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .I3(\line1_reg_n_0_[29] ),
        .O(\line1[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line1[38]_i_1 
       (.I0(\line1_reg_n_0_[30] ),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .O(\line1[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \line1[3]_i_1 
       (.I0(led_OBUF_0_sn_1),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF),
        .O(\line1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hA3AC)) 
    \line1[40]_i_1 
       (.I0(\line1_reg_n_0_[32] ),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF),
        .O(\line1[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line1[41]_i_1 
       (.I0(\line1_reg_n_0_[33] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF_0_sn_1),
        .O(\line1[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line1[42]_i_1 
       (.I0(\line1_reg_n_0_[34] ),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF),
        .O(\line1[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \line1[43]_i_1 
       (.I0(\line1_reg_n_0_[35] ),
        .I1(led_OBUF_0_sn_1),
        .I2(led_OBUF),
        .I3(\state_reg[3]_0 ),
        .O(\line1[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line1[44]_i_1 
       (.I0(\line1_reg_n_0_[36] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF),
        .O(\line1[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hBB8B)) 
    \line1[45]_i_1 
       (.I0(\line1_reg_n_0_[37] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF_0_sn_1),
        .I3(led_OBUF),
        .O(\line1[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hA3AC)) 
    \line1[46]_i_1 
       (.I0(\line1_reg_n_0_[38] ),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF),
        .O(\line1[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line1[48]_i_1 
       (.I0(\line1_reg_n_0_[40] ),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .O(\line1[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line1[49]_i_1 
       (.I0(\line1_reg_n_0_[41] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .O(\line1[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \line1[50]_i_1 
       (.I0(\line1_reg_n_0_[42] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF_0_sn_1),
        .I3(led_OBUF),
        .O(\line1[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line1[51]_i_1 
       (.I0(\line1_reg_n_0_[43] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .O(\line1[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line1[52]_i_1 
       (.I0(\state_reg[3]_0 ),
        .I1(\line1_reg_n_0_[44] ),
        .O(\line1[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line1[53]_i_1 
       (.I0(\line1_reg_n_0_[45] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF),
        .O(\line1[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \line1[54]_i_1 
       (.I0(\line1_reg_n_0_[46] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF_0_sn_1),
        .I3(led_OBUF),
        .O(\line1[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hA3AC)) 
    \line1[56]_i_1 
       (.I0(\line1_reg_n_0_[48] ),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF),
        .O(\line1[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line1[57]_i_1 
       (.I0(\line1_reg_n_0_[49] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \line1[58]_i_1 
       (.I0(led_OBUF_0_sn_1),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .I3(\line1_reg_n_0_[50] ),
        .O(\line1[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line1[59]_i_1 
       (.I0(\line1_reg_n_0_[51] ),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF),
        .O(\line1[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hBB8B)) 
    \line1[60]_i_1 
       (.I0(\line1_reg_n_0_[52] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF_0_sn_1),
        .I3(led_OBUF),
        .O(\line1[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line1[61]_i_1 
       (.I0(\line1_reg_n_0_[53] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \line1[62]_i_1 
       (.I0(\line1_reg_n_0_[54] ),
        .I1(\state_reg[3]_0 ),
        .O(\line1[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \line1[64]_i_1 
       (.I0(\line1_reg_n_0_[56] ),
        .I1(led_OBUF_0_sn_1),
        .I2(led_OBUF),
        .I3(\state_reg[3]_0 ),
        .O(\line1[64]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line1[65]_i_1 
       (.I0(\line1_reg_n_0_[57] ),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF),
        .O(\line1[65]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \line1[66]_i_1 
       (.I0(\line1_reg_n_0_[58] ),
        .I1(led_OBUF_0_sn_1),
        .I2(led_OBUF),
        .I3(\state_reg[3]_0 ),
        .O(\line1[66]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line1[67]_i_1 
       (.I0(\line1_reg_n_0_[59] ),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF),
        .O(\line1[67]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line1[68]_i_1 
       (.I0(\line1_reg_n_0_[60] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF_0_sn_1),
        .O(\line1[68]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line1[69]_i_1 
       (.I0(\line1_reg_n_0_[61] ),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .O(\line1[69]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line1[70]_i_1 
       (.I0(\line1_reg_n_0_[62] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF_0_sn_1),
        .O(\line1[70]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \line1[72]_i_1 
       (.I0(\line1_reg_n_0_[64] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF_0_sn_1),
        .I3(led_OBUF),
        .O(\line1[72]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line1[73]_i_1 
       (.I0(\line1_reg_n_0_[65] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[73]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hA0A3)) 
    \line1[74]_i_1 
       (.I0(\line1_reg_n_0_[66] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[74]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line1[75]_i_1 
       (.I0(\line1_reg_n_0_[67] ),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF),
        .O(\line1[75]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line1[76]_i_1 
       (.I0(\line1_reg_n_0_[68] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF),
        .O(\line1[76]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line1[77]_i_1 
       (.I0(\line1_reg_n_0_[69] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[77]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \line1[78]_i_1 
       (.I0(\line1_reg_n_0_[70] ),
        .I1(\state_reg[3]_0 ),
        .O(\line1[78]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \line1[80]_i_1 
       (.I0(\line1_reg_n_0_[72] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF_0_sn_1),
        .I3(led_OBUF),
        .O(\line1[80]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \line1[81]_i_1 
       (.I0(\line1_reg_n_0_[73] ),
        .I1(led_OBUF_0_sn_1),
        .I2(led_OBUF),
        .I3(\state_reg[3]_0 ),
        .O(\line1[81]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hBB8B)) 
    \line1[82]_i_1 
       (.I0(\line1_reg_n_0_[74] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[82]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \line1[83]_i_1 
       (.I0(\line1_reg_n_0_[75] ),
        .I1(\state_reg[3]_0 ),
        .O(\line1[83]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line1[84]_i_1 
       (.I0(\state_reg[3]_0 ),
        .I1(\line1_reg_n_0_[76] ),
        .O(\line1[84]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line1[85]_i_1 
       (.I0(\line1_reg_n_0_[77] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[85]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \line1[86]_i_1 
       (.I0(\line1_reg_n_0_[78] ),
        .I1(\state_reg[3]_0 ),
        .O(\line1[86]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hBB8B)) 
    \line1[88]_i_1 
       (.I0(\line1_reg_n_0_[80] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[88]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line1[89]_i_1 
       (.I0(\line1_reg_n_0_[81] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .O(\line1[89]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hCC55CCF5)) 
    \line1[8]_i_1 
       (.I0(led_OBUF_0_sn_1),
        .I1(\line1_reg_n_0_[0] ),
        .I2(deb_held_0),
        .I3(\state_reg[3]_0 ),
        .I4(led_OBUF),
        .O(\line1[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line1[90]_i_1 
       (.I0(\line1_reg_n_0_[82] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .O(\line1[90]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hBB8B)) 
    \line1[91]_i_1 
       (.I0(\line1_reg_n_0_[83] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[91]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line1[92]_i_1 
       (.I0(\state_reg[3]_0 ),
        .I1(\line1_reg_n_0_[84] ),
        .O(\line1[92]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line1[93]_i_1 
       (.I0(\line1_reg_n_0_[85] ),
        .I1(led_OBUF),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[93]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hBB8B)) 
    \line1[94]_i_1 
       (.I0(\line1_reg_n_0_[86] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF),
        .I3(led_OBUF_0_sn_1),
        .O(\line1[94]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line1[96]_i_1 
       (.I0(\line1_reg_n_0_[88] ),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .O(\line1[96]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hBB8B)) 
    \line1[97]_i_1 
       (.I0(\line1_reg_n_0_[89] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF_0_sn_1),
        .I3(led_OBUF),
        .O(\line1[97]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line1[98]_i_1 
       (.I0(\line1_reg_n_0_[90] ),
        .I1(led_OBUF_0_sn_1),
        .I2(\state_reg[3]_0 ),
        .I3(led_OBUF),
        .O(\line1[98]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line1[99]_i_1 
       (.I0(\state_reg[3]_0 ),
        .I1(\line1_reg_n_0_[91] ),
        .O(\line1[99]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \line1[9]_i_1 
       (.I0(\line1_reg_n_0_[3] ),
        .I1(\state_reg[3]_0 ),
        .I2(led_OBUF_0_sn_1),
        .I3(led_OBUF),
        .O(\line1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1_reg[0]_0 ),
        .Q(\line1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[100] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[100]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[100] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[101] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[101]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[101] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[102] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[102]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[102] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[104] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[104]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[104] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[105] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[105]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[105] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[106] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[106]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[106] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[107] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[107]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[107] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[108] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[108]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[108] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[109] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[109]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[109] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[10]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[110] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[110]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[110] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[112] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[112]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[112] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[113] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[113]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[113] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[114] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[114]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[114] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[115] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[115]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[115] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[116] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[116]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[116] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[117] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[117]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[117] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[118] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[118]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[118] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[11]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[120] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[120]_i_1_n_0 ),
        .Q(data1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[121] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[121]_i_1_n_0 ),
        .Q(data1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[122] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[122]_i_1_n_0 ),
        .Q(data1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[123] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[123]_i_1_n_0 ),
        .Q(data1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[124] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[124]_i_1_n_0 ),
        .Q(data1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[125] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[125]_i_1_n_0 ),
        .Q(data1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[126] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[126]_i_2_n_0 ),
        .Q(data1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[12]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[13]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[14]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[16]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[17]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[18]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[19]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[20]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[21]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[22]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[24]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[25]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[26]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[27]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[28]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[29]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[30]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[32]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[33]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[34]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[35]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[36]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[37]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[38]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[3]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[40]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[40] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[41]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[41] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[42]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[42] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[43]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[43] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[44]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[44] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[45]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[45] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[46]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[46] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[48]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[48] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[49]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[49] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[50]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[50] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[51]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[51] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[52]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[52] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[53]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[53] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[54]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[54] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[56]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[56] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[57]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[57] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[58]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[58] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[59]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[59] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1_reg[5]_0 ),
        .Q(\line1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[60]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[60] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[61]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[61] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[62]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[62] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[64] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[64]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[64] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[65] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[65]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[65] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[66] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[66]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[66] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[67]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[67] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[68]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[68] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[69] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[69]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[69] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line2_reg[0]_0 ),
        .Q(\line1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[70] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[70]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[70] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[72] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[72]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[72] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[73] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[73]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[73] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[74] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[74]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[74] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[75]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[75] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[76]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[76] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[77] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[77]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[77] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[78] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[78]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[78] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[80] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[80]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[80] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[81] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[81]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[81] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[82] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[82]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[82] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[83] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[83]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[83] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[84] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[84]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[84] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[85] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[85]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[85] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[86] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[86]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[86] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[88] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[88]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[88] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[89] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[89]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[89] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[8]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[90] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[90]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[90] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[91] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[91]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[91] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[92] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[92]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[92] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[93] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[93]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[93] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[94] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[94]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[94] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[96] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[96]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[96] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[97] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[97]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[97] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[98] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[98]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[98] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[99] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[99]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[99] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line1_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\line1[126]_i_1_n_0 ),
        .D(\line1[9]_i_1_n_0 ),
        .Q(\line1_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line2[100]_i_1 
       (.I0(state[0]),
        .I1(\line2_reg_n_0_[92] ),
        .O(\line2[100]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hACAF)) 
    \line2[101]_i_1 
       (.I0(\line2_reg_n_0_[93] ),
        .I1(led_OBUF),
        .I2(state[0]),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[101]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hA3AC)) 
    \line2[102]_i_1 
       (.I0(\line2_reg_n_0_[94] ),
        .I1(led_OBUF),
        .I2(state[0]),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[102]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line2[104]_i_1 
       (.I0(\line2_reg_n_0_[96] ),
        .I1(state[0]),
        .I2(led_OBUF),
        .O(\line2[104]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFD0D)) 
    \line2[105]_i_1 
       (.I0(led_OBUF),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .I3(\line2_reg_n_0_[97] ),
        .O(\line2[105]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \line2[106]_i_1 
       (.I0(\line2_reg_n_0_[98] ),
        .I1(state[0]),
        .I2(led_OBUF),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[106]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line2[107]_i_1 
       (.I0(\line2_reg_n_0_[99] ),
        .I1(led_OBUF),
        .I2(state[0]),
        .O(\line2[107]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \line2[108]_i_1 
       (.I0(\line2_reg_n_0_[100] ),
        .I1(led_OBUF_0_sn_1),
        .I2(led_OBUF),
        .I3(state[0]),
        .O(\line2[108]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line2[109]_i_1 
       (.I0(\line2_reg_n_0_[101] ),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .O(\line2[109]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line2[10]_i_1 
       (.I0(\line2_reg_n_0_[2] ),
        .I1(led_OBUF),
        .I2(state[0]),
        .O(\line2[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hAFAC)) 
    \line2[110]_i_1 
       (.I0(\line2_reg_n_0_[102] ),
        .I1(led_OBUF),
        .I2(state[0]),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[110]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line2[112]_i_1 
       (.I0(\line2_reg_n_0_[104] ),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .I3(led_OBUF),
        .O(\line2[112]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line2[113]_i_1 
       (.I0(state[0]),
        .I1(\line2_reg_n_0_[105] ),
        .O(\line2[113]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line2[114]_i_1 
       (.I0(\line2_reg_n_0_[106] ),
        .I1(state[0]),
        .I2(led_OBUF),
        .O(\line2[114]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hACAF)) 
    \line2[115]_i_1 
       (.I0(\line2_reg_n_0_[107] ),
        .I1(led_OBUF),
        .I2(state[0]),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[115]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line2[116]_i_1 
       (.I0(state[0]),
        .I1(\line2_reg_n_0_[108] ),
        .O(\line2[116]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hAA30)) 
    \line2[117]_i_1 
       (.I0(\line2_reg_n_0_[109] ),
        .I1(led_OBUF_0_sn_1),
        .I2(led_OBUF),
        .I3(state[0]),
        .O(\line2[117]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \line2[118]_i_1 
       (.I0(\line2_reg_n_0_[110] ),
        .I1(state[0]),
        .O(\line2[118]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hCC55CC5F)) 
    \line2[11]_i_1 
       (.I0(led_OBUF_0_sn_1),
        .I1(\line2_reg_n_0_[4] ),
        .I2(deb_held_0),
        .I3(state[0]),
        .I4(led_OBUF),
        .O(\line2[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hA0A3)) 
    \line2[120]_i_1 
       (.I0(\line2_reg_n_0_[112] ),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .I3(led_OBUF),
        .O(\line2[120]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line2[121]_i_1 
       (.I0(\line2_reg_n_0_[113] ),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .I3(led_OBUF),
        .O(\line2[121]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hA0A3)) 
    \line2[122]_i_1 
       (.I0(\line2_reg_n_0_[114] ),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .I3(led_OBUF),
        .O(\line2[122]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line2[123]_i_1 
       (.I0(state[0]),
        .I1(\line2_reg_n_0_[115] ),
        .O(\line2[123]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \line2[124]_i_1 
       (.I0(\line2_reg_n_0_[116] ),
        .I1(state[0]),
        .O(\line2[124]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hAA30)) 
    \line2[125]_i_1 
       (.I0(\line2_reg_n_0_[117] ),
        .I1(led_OBUF_0_sn_1),
        .I2(led_OBUF),
        .I3(state[0]),
        .O(\line2[125]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2004)) 
    \line2[126]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\state_reg[3]_0 ),
        .O(\line2[126]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \line2[126]_i_2 
       (.I0(\line2_reg_n_0_[118] ),
        .I1(state[0]),
        .O(\line2[126]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAA0CAA00)) 
    \line2[12]_i_1 
       (.I0(\line2_reg_n_0_[4] ),
        .I1(deb_held_0),
        .I2(led_OBUF),
        .I3(state[0]),
        .I4(led_OBUF_0_sn_1),
        .O(\line2[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line2[13]_i_1 
       (.I0(\line2_reg_n_0_[5] ),
        .I1(state[0]),
        .I2(led_OBUF),
        .O(\line2[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \line2[14]_i_1 
       (.I0(\line2_reg_n_0_[6] ),
        .I1(state[0]),
        .I2(led_OBUF),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \line2[16]_i_1 
       (.I0(\line2_reg_n_0_[8] ),
        .I1(state[0]),
        .I2(led_OBUF),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line2[17]_i_1 
       (.I0(\line2_reg_n_0_[9] ),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .I3(led_OBUF),
        .O(\line2[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line2[18]_i_1 
       (.I0(\line2_reg_n_0_[10] ),
        .I1(led_OBUF),
        .I2(state[0]),
        .O(\line2[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line2[19]_i_1 
       (.I0(\line2_reg_n_0_[11] ),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .I3(led_OBUF),
        .O(\line2[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line2[20]_i_1 
       (.I0(state[0]),
        .I1(\line2_reg_n_0_[12] ),
        .O(\line2[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line2[21]_i_1 
       (.I0(\line2_reg_n_0_[13] ),
        .I1(state[0]),
        .I2(led_OBUF),
        .O(\line2[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \line2[22]_i_1 
       (.I0(\line2_reg_n_0_[14] ),
        .I1(state[0]),
        .I2(led_OBUF),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line2[24]_i_1 
       (.I0(\line2_reg_n_0_[16] ),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .O(\line2[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA0CAA00)) 
    \line2[25]_i_1 
       (.I0(\line2_reg_n_0_[17] ),
        .I1(deb_held_0),
        .I2(led_OBUF),
        .I3(state[0]),
        .I4(led_OBUF_0_sn_1),
        .O(\line2[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \line2[26]_i_1 
       (.I0(\line2_reg_n_0_[18] ),
        .I1(state[0]),
        .I2(led_OBUF),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA0CAA00)) 
    \line2[27]_i_1 
       (.I0(\line2_reg_n_0_[19] ),
        .I1(deb_held_0),
        .I2(led_OBUF),
        .I3(state[0]),
        .I4(led_OBUF_0_sn_1),
        .O(\line2[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line2[28]_i_1 
       (.I0(state[0]),
        .I1(\line2_reg_n_0_[20] ),
        .O(\line2[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line2[29]_i_1 
       (.I0(\line2_reg_n_0_[21] ),
        .I1(state[0]),
        .I2(led_OBUF),
        .O(\line2[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \line2[30]_i_1 
       (.I0(\line2_reg_n_0_[22] ),
        .I1(state[0]),
        .I2(led_OBUF),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line2[32]_i_1 
       (.I0(state[0]),
        .I1(\line2_reg_n_0_[24] ),
        .O(\line2[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line2[33]_i_1 
       (.I0(\line2_reg_n_0_[25] ),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .O(\line2[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line2[34]_i_1 
       (.I0(state[0]),
        .I1(\line2_reg_n_0_[26] ),
        .O(\line2[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line2[35]_i_1 
       (.I0(state[0]),
        .I1(\line2_reg_n_0_[27] ),
        .O(\line2[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line2[36]_i_1 
       (.I0(\line2_reg_n_0_[28] ),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .O(\line2[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hAFAC)) 
    \line2[37]_i_1 
       (.I0(\line2_reg_n_0_[29] ),
        .I1(led_OBUF),
        .I2(state[0]),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line2[38]_i_1 
       (.I0(\line2_reg_n_0_[30] ),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .O(\line2[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line2[40]_i_1 
       (.I0(\line2_reg_n_0_[32] ),
        .I1(led_OBUF),
        .I2(state[0]),
        .O(\line2[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \line2[41]_i_1 
       (.I0(\line2_reg_n_0_[33] ),
        .I1(state[0]),
        .I2(led_OBUF),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFD0D)) 
    \line2[42]_i_1 
       (.I0(led_OBUF),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .I3(\line2_reg_n_0_[34] ),
        .O(\line2[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line2[43]_i_1 
       (.I0(state[0]),
        .I1(\line2_reg_n_0_[35] ),
        .O(\line2[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line2[44]_i_1 
       (.I0(state[0]),
        .I1(\line2_reg_n_0_[36] ),
        .O(\line2[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hAA30)) 
    \line2[45]_i_1 
       (.I0(\line2_reg_n_0_[37] ),
        .I1(led_OBUF_0_sn_1),
        .I2(led_OBUF),
        .I3(state[0]),
        .O(\line2[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \line2[46]_i_1 
       (.I0(\line2_reg_n_0_[38] ),
        .I1(state[0]),
        .O(\line2[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \line2[48]_i_1 
       (.I0(\line2_reg_n_0_[40] ),
        .I1(led_OBUF_0_sn_1),
        .I2(led_OBUF),
        .I3(state[0]),
        .O(\line2[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line2[49]_i_1 
       (.I0(\line2_reg_n_0_[41] ),
        .I1(state[0]),
        .I2(led_OBUF_0_sn_1),
        .O(\line2[49]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line2[4]_i_1 
       (.I0(\state_reg[3]_0 ),
        .I1(led_OBUF_0_sn_1),
        .O(\line2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line2[50]_i_1 
       (.I0(\line2_reg_n_0_[42] ),
        .I1(state[0]),
        .I2(led_OBUF_0_sn_1),
        .O(\line2[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line2[51]_i_1 
       (.I0(\line2_reg_n_0_[43] ),
        .I1(state[0]),
        .I2(led_OBUF_0_sn_1),
        .O(\line2[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line2[52]_i_1 
       (.I0(state[0]),
        .I1(\line2_reg_n_0_[44] ),
        .O(\line2[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line2[53]_i_1 
       (.I0(\line2_reg_n_0_[45] ),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .O(\line2[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line2[54]_i_1 
       (.I0(\line2_reg_n_0_[46] ),
        .I1(state[0]),
        .I2(led_OBUF_0_sn_1),
        .O(\line2[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \line2[56]_i_1 
       (.I0(\line2_reg_n_0_[48] ),
        .I1(state[0]),
        .O(\line2[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hACAF)) 
    \line2[57]_i_1 
       (.I0(\line2_reg_n_0_[49] ),
        .I1(led_OBUF),
        .I2(state[0]),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line2[58]_i_1 
       (.I0(\line2_reg_n_0_[50] ),
        .I1(state[0]),
        .I2(led_OBUF),
        .O(\line2[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hAFAC)) 
    \line2[59]_i_1 
       (.I0(\line2_reg_n_0_[51] ),
        .I1(led_OBUF),
        .I2(state[0]),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hA0A3)) 
    \line2[60]_i_1 
       (.I0(\line2_reg_n_0_[52] ),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .I3(led_OBUF),
        .O(\line2[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hAA30)) 
    \line2[61]_i_1 
       (.I0(\line2_reg_n_0_[53] ),
        .I1(led_OBUF_0_sn_1),
        .I2(led_OBUF),
        .I3(state[0]),
        .O(\line2[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \line2[62]_i_1 
       (.I0(\line2_reg_n_0_[54] ),
        .I1(state[0]),
        .O(\line2[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \line2[64]_i_1 
       (.I0(led_OBUF),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .I3(\line2_reg_n_0_[56] ),
        .O(\line2[64]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \line2[65]_i_1 
       (.I0(\line2_reg_n_0_[57] ),
        .I1(state[0]),
        .O(\line2[65]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line2[66]_i_1 
       (.I0(\line2_reg_n_0_[58] ),
        .I1(state[0]),
        .I2(led_OBUF),
        .O(\line2[66]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hA3AC)) 
    \line2[67]_i_1 
       (.I0(\line2_reg_n_0_[59] ),
        .I1(led_OBUF),
        .I2(state[0]),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[67]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line2[68]_i_1 
       (.I0(\line2_reg_n_0_[60] ),
        .I1(led_OBUF),
        .I2(state[0]),
        .O(\line2[68]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hAA30)) 
    \line2[69]_i_1 
       (.I0(\line2_reg_n_0_[61] ),
        .I1(led_OBUF_0_sn_1),
        .I2(led_OBUF),
        .I3(state[0]),
        .O(\line2[69]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \line2[70]_i_1 
       (.I0(\line2_reg_n_0_[62] ),
        .I1(state[0]),
        .O(\line2[70]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line2[72]_i_1 
       (.I0(\line2_reg_n_0_[64] ),
        .I1(led_OBUF),
        .I2(state[0]),
        .O(\line2[72]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line2[73]_i_1 
       (.I0(state[0]),
        .I1(\line2_reg_n_0_[65] ),
        .O(\line2[73]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hA0A3)) 
    \line2[74]_i_1 
       (.I0(\line2_reg_n_0_[66] ),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .I3(led_OBUF),
        .O(\line2[74]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line2[75]_i_1 
       (.I0(\line2_reg_n_0_[67] ),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .I3(led_OBUF),
        .O(\line2[75]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line2[76]_i_1 
       (.I0(state[0]),
        .I1(\line2_reg_n_0_[68] ),
        .O(\line2[76]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line2[77]_i_1 
       (.I0(\line2_reg_n_0_[69] ),
        .I1(state[0]),
        .I2(led_OBUF),
        .O(\line2[77]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line2[78]_i_1 
       (.I0(\line2_reg_n_0_[70] ),
        .I1(led_OBUF),
        .I2(state[0]),
        .O(\line2[78]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hAFAC)) 
    \line2[80]_i_1 
       (.I0(\line2_reg_n_0_[72] ),
        .I1(led_OBUF),
        .I2(state[0]),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[80]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \line2[81]_i_1 
       (.I0(led_OBUF),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .I3(\line2_reg_n_0_[73] ),
        .O(\line2[81]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hAFAC)) 
    \line2[82]_i_1 
       (.I0(\line2_reg_n_0_[74] ),
        .I1(led_OBUF),
        .I2(state[0]),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[82]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line2[83]_i_1 
       (.I0(\line2_reg_n_0_[75] ),
        .I1(state[0]),
        .I2(led_OBUF_0_sn_1),
        .O(\line2[83]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hA0A3)) 
    \line2[84]_i_1 
       (.I0(\line2_reg_n_0_[76] ),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .I3(led_OBUF),
        .O(\line2[84]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hAA30)) 
    \line2[85]_i_1 
       (.I0(\line2_reg_n_0_[77] ),
        .I1(led_OBUF_0_sn_1),
        .I2(led_OBUF),
        .I3(state[0]),
        .O(\line2[85]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \line2[86]_i_1 
       (.I0(\line2_reg_n_0_[78] ),
        .I1(state[0]),
        .O(\line2[86]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hA3AC)) 
    \line2[88]_i_1 
       (.I0(\line2_reg_n_0_[80] ),
        .I1(led_OBUF),
        .I2(state[0]),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[88]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hA3AC)) 
    \line2[89]_i_1 
       (.I0(\line2_reg_n_0_[81] ),
        .I1(led_OBUF),
        .I2(state[0]),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[89]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF640064)) 
    \line2[8]_i_1 
       (.I0(led_OBUF_0_sn_1),
        .I1(led_OBUF),
        .I2(deb_held_0),
        .I3(state[0]),
        .I4(\line2_reg_n_0_[0] ),
        .O(\line2[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line2[90]_i_1 
       (.I0(\line2_reg_n_0_[82] ),
        .I1(state[0]),
        .I2(led_OBUF_0_sn_1),
        .O(\line2[90]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line2[91]_i_1 
       (.I0(\line2_reg_n_0_[83] ),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .I3(led_OBUF),
        .O(\line2[91]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \line2[92]_i_1 
       (.I0(\line2_reg_n_0_[84] ),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .O(\line2[92]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hAA30)) 
    \line2[93]_i_1 
       (.I0(\line2_reg_n_0_[85] ),
        .I1(led_OBUF_0_sn_1),
        .I2(led_OBUF),
        .I3(state[0]),
        .O(\line2[93]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \line2[94]_i_1 
       (.I0(\line2_reg_n_0_[86] ),
        .I1(state[0]),
        .O(\line2[94]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hAA30)) 
    \line2[96]_i_1 
       (.I0(\line2_reg_n_0_[88] ),
        .I1(led_OBUF_0_sn_1),
        .I2(led_OBUF),
        .I3(state[0]),
        .O(\line2[96]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line2[97]_i_1 
       (.I0(state[0]),
        .I1(\line2_reg_n_0_[89] ),
        .O(\line2[97]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hA0AC)) 
    \line2[98]_i_1 
       (.I0(\line2_reg_n_0_[90] ),
        .I1(led_OBUF_0_sn_1),
        .I2(state[0]),
        .I3(led_OBUF),
        .O(\line2[98]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line2[99]_i_1 
       (.I0(state[0]),
        .I1(\line2_reg_n_0_[91] ),
        .O(\line2[99]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \line2[9]_i_1 
       (.I0(\line2_reg_n_0_[1] ),
        .I1(state[0]),
        .I2(led_OBUF),
        .I3(led_OBUF_0_sn_1),
        .O(\line2[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2_reg[0]_0 ),
        .Q(\line2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[100] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[100]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[100] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[101] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[101]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[101] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[102] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[102]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[102] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[104] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[104]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[104] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[105] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[105]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[105] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[106] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[106]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[106] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[107] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[107]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[107] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[108] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[108]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[108] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[109] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[109]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[109] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[10]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[110] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[110]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[110] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[112] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[112]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[112] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[113] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[113]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[113] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[114] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[114]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[114] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[115] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[115]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[115] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[116] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[116]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[116] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[117] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[117]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[117] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[118] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[118]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[118] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[11]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[120] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[120]_i_1_n_0 ),
        .Q(data2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[121] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[121]_i_1_n_0 ),
        .Q(data2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[122] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[122]_i_1_n_0 ),
        .Q(data2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[123] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[123]_i_1_n_0 ),
        .Q(data2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[124] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[124]_i_1_n_0 ),
        .Q(data2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[125] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[125]_i_1_n_0 ),
        .Q(data2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[126] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[126]_i_2_n_0 ),
        .Q(data2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[12]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[13]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[14]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[16]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[17]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[18]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[19]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line1[3]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[20]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[21]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[22]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[24]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[25]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[26]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[27]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[28]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[29]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2_reg[2]_0 ),
        .Q(\line2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[30]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[32]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[33]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[34]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[35]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[36]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[37]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[38]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[40]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[40] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[41]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[41] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[42]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[42] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[43]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[43] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[44]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[44] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[45]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[45] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[46]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[46] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[48]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[48] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[49]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[49] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[4]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[50]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[50] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[51]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[51] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[52]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[52] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[53]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[53] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[54]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[54] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[56]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[56] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[57]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[57] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[58]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[58] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[59]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[59] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2_reg[5]_0 ),
        .Q(\line2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[60]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[60] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[61]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[61] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[62]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[62] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[64] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[64]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[64] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[65] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[65]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[65] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[66] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[66]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[66] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[67]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[67] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[68]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[68] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[69] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[69]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[69] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line1_reg[0]_0 ),
        .Q(\line2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[70] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[70]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[70] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[72] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[72]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[72] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[73] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[73]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[73] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[74] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[74]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[74] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[75]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[75] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[76]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[76] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[77] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[77]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[77] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[78] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[78]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[78] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[80] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[80]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[80] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[81] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[81]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[81] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[82] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[82]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[82] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[83] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[83]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[83] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[84] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[84]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[84] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[85] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[85]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[85] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[86] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[86]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[86] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[88] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[88]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[88] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[89] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[89]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[89] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[8]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[90] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[90]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[90] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[91] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[91]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[91] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[92] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[92]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[92] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[93] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[93]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[93] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[94] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[94]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[94] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[96] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[96]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[96] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[97] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[97]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[97] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[98] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[98]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[98] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[99] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[99]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[99] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line2_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\line2[126]_i_1_n_0 ),
        .D(\line2[9]_i_1_n_0 ),
        .Q(\line2_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hC2CE1199)) 
    \pending_state[0]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\address[5]_i_2_n_0 ),
        .I3(state[0]),
        .I4(\state_reg[3]_0 ),
        .O(\pending_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h3FDD33DD)) 
    \pending_state[1]_i_1 
       (.I0(state[1]),
        .I1(\state_reg[3]_0 ),
        .I2(\address[5]_i_2_n_0 ),
        .I3(state[2]),
        .I4(state[0]),
        .O(\pending_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hB0B03FF0)) 
    \pending_state[2]_i_1 
       (.I0(\address[5]_i_2_n_0 ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\state_reg[3]_0 ),
        .O(\pending_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hCC4C)) 
    \pending_state[3]_i_2 
       (.I0(state[2]),
        .I1(\state_reg[3]_0 ),
        .I2(state[0]),
        .I3(\address[5]_i_2_n_0 ),
        .O(\pending_state[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pending_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(lcd1_n_0),
        .D(\pending_state[0]_i_1_n_0 ),
        .Q(pending_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pending_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(lcd1_n_0),
        .D(\pending_state[1]_i_1_n_0 ),
        .Q(pending_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pending_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(lcd1_n_0),
        .D(\pending_state[2]_i_1_n_0 ),
        .Q(pending_state[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pending_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(lcd1_n_0),
        .D(\pending_state[3]_i_2_n_0 ),
        .Q(pending_state[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFB3CFF)) 
    \state[0]_i_1 
       (.I0(pending_state[0]),
        .I1(state[0]),
        .I2(\state_reg[3]_0 ),
        .I3(state[1]),
        .I4(state[2]),
        .O(\state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \state[1]_i_1 
       (.I0(\state_reg[3]_0 ),
        .I1(state[0]),
        .I2(pending_state[1]),
        .I3(state[1]),
        .I4(state[2]),
        .O(\state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFDEEAA)) 
    \state[2]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(pending_state[2]),
        .I3(\state_reg[3]_0 ),
        .I4(state[0]),
        .O(\state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0050850)) 
    \state[3]_i_2 
       (.I0(state[2]),
        .I1(pending_state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\state_reg[3]_0 ),
        .O(\state[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(lcd1_n_3),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(lcd1_n_3),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(lcd1_n_3),
        .D(\state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(lcd1_n_3),
        .D(\state[3]_i_2_n_0 ),
        .Q(\state_reg[3]_0 ),
        .R(1'b0));
endmodule

module led_ctrl
   (\timer_reg[18]_0 ,
    clk_IBUF_BUFG);
  output \timer_reg[18]_0 ;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire \simon_led0_OBUF[1]_inst_i_3_n_0 ;
  wire \simon_led0_OBUF[1]_inst_i_4_n_0 ;
  wire \timer[0]_i_1_n_0 ;
  wire \timer[0]_i_3_n_0 ;
  wire \timer[0]_i_4_n_0 ;
  wire \timer[0]_i_5_n_0 ;
  wire \timer[0]_i_6_n_0 ;
  wire \timer[0]_i_7_n_0 ;
  wire \timer[0]_i_8_n_0 ;
  wire [18:0]timer_reg;
  wire \timer_reg[0]_i_2_n_0 ;
  wire \timer_reg[0]_i_2_n_1 ;
  wire \timer_reg[0]_i_2_n_2 ;
  wire \timer_reg[0]_i_2_n_3 ;
  wire \timer_reg[0]_i_2_n_4 ;
  wire \timer_reg[0]_i_2_n_5 ;
  wire \timer_reg[0]_i_2_n_6 ;
  wire \timer_reg[0]_i_2_n_7 ;
  wire \timer_reg[12]_i_1_n_0 ;
  wire \timer_reg[12]_i_1_n_1 ;
  wire \timer_reg[12]_i_1_n_2 ;
  wire \timer_reg[12]_i_1_n_3 ;
  wire \timer_reg[12]_i_1_n_4 ;
  wire \timer_reg[12]_i_1_n_5 ;
  wire \timer_reg[12]_i_1_n_6 ;
  wire \timer_reg[12]_i_1_n_7 ;
  wire \timer_reg[16]_i_1_n_2 ;
  wire \timer_reg[16]_i_1_n_3 ;
  wire \timer_reg[16]_i_1_n_5 ;
  wire \timer_reg[16]_i_1_n_6 ;
  wire \timer_reg[16]_i_1_n_7 ;
  wire \timer_reg[18]_0 ;
  wire \timer_reg[4]_i_1_n_0 ;
  wire \timer_reg[4]_i_1_n_1 ;
  wire \timer_reg[4]_i_1_n_2 ;
  wire \timer_reg[4]_i_1_n_3 ;
  wire \timer_reg[4]_i_1_n_4 ;
  wire \timer_reg[4]_i_1_n_5 ;
  wire \timer_reg[4]_i_1_n_6 ;
  wire \timer_reg[4]_i_1_n_7 ;
  wire \timer_reg[8]_i_1_n_0 ;
  wire \timer_reg[8]_i_1_n_1 ;
  wire \timer_reg[8]_i_1_n_2 ;
  wire \timer_reg[8]_i_1_n_3 ;
  wire \timer_reg[8]_i_1_n_4 ;
  wire \timer_reg[8]_i_1_n_5 ;
  wire \timer_reg[8]_i_1_n_6 ;
  wire \timer_reg[8]_i_1_n_7 ;
  wire [3:2]\NLW_timer_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_timer_reg[16]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h1101010111111111)) 
    \simon_led0_OBUF[1]_inst_i_2 
       (.I0(timer_reg[18]),
        .I1(timer_reg[17]),
        .I2(timer_reg[15]),
        .I3(\simon_led0_OBUF[1]_inst_i_3_n_0 ),
        .I4(\simon_led0_OBUF[1]_inst_i_4_n_0 ),
        .I5(timer_reg[16]),
        .O(\timer_reg[18]_0 ));
  LUT6 #(
    .INIT(64'h5555777FFFFFFFFF)) 
    \simon_led0_OBUF[1]_inst_i_3 
       (.I0(timer_reg[10]),
        .I1(timer_reg[7]),
        .I2(timer_reg[5]),
        .I3(timer_reg[6]),
        .I4(timer_reg[8]),
        .I5(timer_reg[9]),
        .O(\simon_led0_OBUF[1]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \simon_led0_OBUF[1]_inst_i_4 
       (.I0(timer_reg[12]),
        .I1(timer_reg[11]),
        .I2(timer_reg[14]),
        .I3(timer_reg[13]),
        .O(\simon_led0_OBUF[1]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \timer[0]_i_1 
       (.I0(\timer[0]_i_3_n_0 ),
        .I1(timer_reg[8]),
        .I2(\timer[0]_i_4_n_0 ),
        .I3(\timer[0]_i_5_n_0 ),
        .I4(\timer[0]_i_6_n_0 ),
        .O(\timer[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \timer[0]_i_3 
       (.I0(timer_reg[0]),
        .I1(timer_reg[1]),
        .I2(timer_reg[2]),
        .I3(timer_reg[4]),
        .I4(timer_reg[3]),
        .O(\timer[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \timer[0]_i_4 
       (.I0(timer_reg[15]),
        .I1(timer_reg[16]),
        .I2(timer_reg[17]),
        .I3(timer_reg[18]),
        .I4(timer_reg[13]),
        .O(\timer[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F000F0E0F000)) 
    \timer[0]_i_5 
       (.I0(timer_reg[11]),
        .I1(timer_reg[10]),
        .I2(\timer[0]_i_8_n_0 ),
        .I3(timer_reg[14]),
        .I4(timer_reg[13]),
        .I5(timer_reg[12]),
        .O(\timer[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F000F0E0F000)) 
    \timer[0]_i_6 
       (.I0(timer_reg[6]),
        .I1(timer_reg[5]),
        .I2(\timer[0]_i_4_n_0 ),
        .I3(timer_reg[9]),
        .I4(timer_reg[8]),
        .I5(timer_reg[7]),
        .O(\timer[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[0]_i_7 
       (.I0(timer_reg[0]),
        .O(\timer[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \timer[0]_i_8 
       (.I0(timer_reg[18]),
        .I1(timer_reg[17]),
        .I2(timer_reg[16]),
        .I3(timer_reg[15]),
        .O(\timer[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_reg[0]_i_2_n_7 ),
        .Q(timer_reg[0]),
        .R(\timer[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \timer_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\timer_reg[0]_i_2_n_0 ,\timer_reg[0]_i_2_n_1 ,\timer_reg[0]_i_2_n_2 ,\timer_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\timer_reg[0]_i_2_n_4 ,\timer_reg[0]_i_2_n_5 ,\timer_reg[0]_i_2_n_6 ,\timer_reg[0]_i_2_n_7 }),
        .S({timer_reg[3:1],\timer[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_5 ),
        .Q(timer_reg[10]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_4 ),
        .Q(timer_reg[11]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_7 ),
        .Q(timer_reg[12]),
        .R(\timer[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \timer_reg[12]_i_1 
       (.CI(\timer_reg[8]_i_1_n_0 ),
        .CO({\timer_reg[12]_i_1_n_0 ,\timer_reg[12]_i_1_n_1 ,\timer_reg[12]_i_1_n_2 ,\timer_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[12]_i_1_n_4 ,\timer_reg[12]_i_1_n_5 ,\timer_reg[12]_i_1_n_6 ,\timer_reg[12]_i_1_n_7 }),
        .S(timer_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_6 ),
        .Q(timer_reg[13]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_5 ),
        .Q(timer_reg[14]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_4 ),
        .Q(timer_reg[15]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_reg[16]_i_1_n_7 ),
        .Q(timer_reg[16]),
        .R(\timer[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \timer_reg[16]_i_1 
       (.CI(\timer_reg[12]_i_1_n_0 ),
        .CO({\NLW_timer_reg[16]_i_1_CO_UNCONNECTED [3:2],\timer_reg[16]_i_1_n_2 ,\timer_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_timer_reg[16]_i_1_O_UNCONNECTED [3],\timer_reg[16]_i_1_n_5 ,\timer_reg[16]_i_1_n_6 ,\timer_reg[16]_i_1_n_7 }),
        .S({1'b0,timer_reg[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_reg[16]_i_1_n_6 ),
        .Q(timer_reg[17]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_reg[16]_i_1_n_5 ),
        .Q(timer_reg[18]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_reg[0]_i_2_n_6 ),
        .Q(timer_reg[1]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_reg[0]_i_2_n_5 ),
        .Q(timer_reg[2]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_reg[0]_i_2_n_4 ),
        .Q(timer_reg[3]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_7 ),
        .Q(timer_reg[4]),
        .R(\timer[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \timer_reg[4]_i_1 
       (.CI(\timer_reg[0]_i_2_n_0 ),
        .CO({\timer_reg[4]_i_1_n_0 ,\timer_reg[4]_i_1_n_1 ,\timer_reg[4]_i_1_n_2 ,\timer_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[4]_i_1_n_4 ,\timer_reg[4]_i_1_n_5 ,\timer_reg[4]_i_1_n_6 ,\timer_reg[4]_i_1_n_7 }),
        .S(timer_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_6 ),
        .Q(timer_reg[5]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_5 ),
        .Q(timer_reg[6]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_4 ),
        .Q(timer_reg[7]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_7 ),
        .Q(timer_reg[8]),
        .R(\timer[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \timer_reg[8]_i_1 
       (.CI(\timer_reg[4]_i_1_n_0 ),
        .CO({\timer_reg[8]_i_1_n_0 ,\timer_reg[8]_i_1_n_1 ,\timer_reg[8]_i_1_n_2 ,\timer_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[8]_i_1_n_4 ,\timer_reg[8]_i_1_n_5 ,\timer_reg[8]_i_1_n_6 ,\timer_reg[8]_i_1_n_7 }),
        .S(timer_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_6 ),
        .Q(timer_reg[9]),
        .R(\timer[0]_i_1_n_0 ));
endmodule

module timer
   (E,
    led_OBUF,
    clk_IBUF_BUFG);
  output [0:0]E;
  input [0:0]led_OBUF;
  input clk_IBUF_BUFG;

  wire [0:0]E;
  wire clk_IBUF_BUFG;
  wire \count[7]_i_5_n_0 ;
  wire \count[7]_i_6_n_0 ;
  wire \count[7]_i_7_n_0 ;
  wire \count[7]_i_8_n_0 ;
  wire \count[7]_i_9_n_0 ;
  wire \counter[0]_i_2_n_0 ;
  wire [25:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [0:0]led_OBUF;
  wire [3:1]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[24]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h80000000)) 
    \count[7]_i_2 
       (.I0(\count[7]_i_5_n_0 ),
        .I1(\count[7]_i_6_n_0 ),
        .I2(\count[7]_i_7_n_0 ),
        .I3(\count[7]_i_8_n_0 ),
        .I4(\count[7]_i_9_n_0 ),
        .O(E));
  LUT3 #(
    .INIT(8'h01)) 
    \count[7]_i_5 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .O(\count[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count[7]_i_6 
       (.I0(counter_reg[5]),
        .I1(counter_reg[6]),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(counter_reg[8]),
        .I5(counter_reg[7]),
        .O(\count[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count[7]_i_7 
       (.I0(counter_reg[17]),
        .I1(counter_reg[18]),
        .I2(counter_reg[15]),
        .I3(counter_reg[16]),
        .I4(counter_reg[20]),
        .I5(counter_reg[19]),
        .O(\count[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count[7]_i_8 
       (.I0(counter_reg[11]),
        .I1(counter_reg[12]),
        .I2(counter_reg[9]),
        .I3(counter_reg[10]),
        .I4(counter_reg[14]),
        .I5(counter_reg[13]),
        .O(\count[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \count[7]_i_9 
       (.I0(counter_reg[23]),
        .I1(counter_reg[24]),
        .I2(counter_reg[21]),
        .I3(counter_reg[22]),
        .I4(counter_reg[25]),
        .I5(led_OBUF),
        .O(\count[7]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S(counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [3:1],\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[24]_i_1_O_UNCONNECTED [3:2],\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,counter_reg[25:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(led_OBUF),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(1'b0));
endmodule

(* CORRECT = "4" *) (* HALFSEC = "50000000" *) (* IDLE = "0" *) 
(* INCORRECT = "6" *) (* ONESEC = "10000000" *) (* RANDOMIZE = "1" *) 
(* SEQUENCE = "2" *) (* SEQUENCECOMPLETE = "5" *) (* TRIPLESEC = "7500000" *) 
(* USERINPUT = "3" *) 
(* NotValidForBitStream *)
module top
   (simon_led0,
    simon_led1,
    simon_led2,
    simon_led3,
    led,
    lcd_data,
    lcd_regsel,
    lcd_enable,
    simon_buttons_n,
    clk,
    btnC,
    sw);
  output [2:0]simon_led0;
  output [2:0]simon_led1;
  output [2:0]simon_led2;
  output [2:0]simon_led3;
  output [15:0]led;
  output [7:0]lcd_data;
  output lcd_regsel;
  output lcd_enable;
  input [3:0]simon_buttons_n;
  input clk;
  input btnC;
  input [3:0]sw;

  wire bt_deb_d;
  wire bt_deb_d_0;
  wire bt_deb_d_1;
  wire bt_deb_d_2;
  wire btnC;
  wire btnC_IBUF;
  wire \c_state[0]_i_1_n_0 ;
  wire \c_state[1]_i_1_n_0 ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire deb_held_0;
  wire deb_s0_n_2;
  wire deb_s0_n_3;
  wire deb_s0_n_4;
  wire deb_s0_n_5;
  wire deb_s0_n_6;
  wire deb_s0_n_7;
  wire deb_s0_n_8;
  wire deb_s0_n_9;
  wire deb_s1_n_1;
  wire deb_s1_n_2;
  wire deb_s2_n_1;
  wire deb_s2_n_2;
  wire deb_s3_n_1;
  wire deb_s3_n_2;
  wire [7:0]lcd_data;
  wire [7:0]lcd_data_OBUF;
  wire lcd_enable;
  wire lcd_enable_OBUF;
  wire lcd_regsel;
  wire lcd_regsel_OBUF;
  wire [15:0]led;
  wire [13:1]led_OBUF;
  wire \led_OBUF[0] ;
  wire \led_OBUF_BUFG[0] ;
  wire led_enable;
  wire [1:0]n_state;
  wire \n_state_reg[1]_i_2_n_0 ;
  wire randomize;
  wire randomize_reg_i_1_n_0;
  wire seq_count_reset;
  wire seq_count_reset_reg_i_1_n_0;
  wire seq_ct_n_0;
  wire seq_ct_n_1;
  wire seq_ct_n_2;
  wire seq_t_n_0;
  wire [3:0]simon_buttons_n;
  wire [3:0]simon_buttons_n_IBUF;
  wire simon_color_ctrl_n_0;
  wire [2:0]simon_led0;
  wire [1:1]simon_led0_OBUF;
  wire [2:0]simon_led1;
  wire [0:0]simon_led1_OBUF;
  wire [2:0]simon_led2;
  wire [2:2]simon_led2_OBUF;
  wire [2:0]simon_led3;
  wire [0:0]simon_led3_OBUF;
  wire [3:3]state;

  lcd_string LCDstringer
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .deb_held_0(deb_held_0),
        .lcd_data_OBUF(lcd_data_OBUF),
        .lcd_enable_OBUF(lcd_enable_OBUF),
        .lcd_regsel_OBUF(lcd_regsel_OBUF),
        .led_OBUF(led_OBUF[1]),
        .led_OBUF_0_sp_1(\led_OBUF[0] ),
        .\line1_reg[0]_0 (deb_s0_n_3),
        .\line1_reg[5]_0 (deb_s0_n_7),
        .\line2_reg[0]_0 (deb_s0_n_6),
        .\line2_reg[2]_0 (deb_s0_n_5),
        .\line2_reg[5]_0 (deb_s0_n_4),
        .\state_reg[3]_0 (state));
  IBUF btnC_IBUF_inst
       (.I(btnC),
        .O(btnC_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_state[0]_i_1 
       (.I0(n_state[0]),
        .I1(btnC_IBUF),
        .O(\c_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_state[1]_i_1 
       (.I0(n_state[1]),
        .I1(btnC_IBUF),
        .O(\c_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_state[0]_i_1_n_0 ),
        .Q(\led_OBUF[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_state[1]_i_1_n_0 ),
        .Q(led_OBUF[1]),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  debouncer deb_s0
       (.D(deb_s0_n_8),
        .bt_deb_d(bt_deb_d),
        .bt_deb_reg_0(deb_s0_n_3),
        .bt_deb_reg_1(deb_s0_n_4),
        .bt_deb_reg_2(deb_s0_n_5),
        .bt_deb_reg_3(deb_s0_n_6),
        .bt_deb_reg_4(deb_s0_n_7),
        .bt_deb_reg_5(deb_s0_n_9),
        .\c_state_reg[1] (deb_s0_n_2),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .deb_held_0(deb_held_0),
        .led_OBUF(led_OBUF[1]),
        .led_OBUF_0_sp_1(\led_OBUF[0] ),
        .\line1_reg[0] (state),
        .simon_buttons_n_IBUF(simon_buttons_n_IBUF[0]));
  debouncer_0 deb_s1
       (.bt_deb_d(bt_deb_d_0),
        .bt_deb_d_0(bt_deb_d),
        .bt_deb_reg_0(deb_s1_n_1),
        .bt_deb_reg_1(deb_s1_n_2),
        .\button_loc_reg[1] (deb_s3_n_2),
        .\button_loc_reg[1]_0 (deb_s2_n_2),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .deb_held_0(deb_held_0),
        .simon_buttons_n_IBUF(simon_buttons_n_IBUF[1]));
  debouncer_1 deb_s2
       (.bt_deb_d(bt_deb_d_1),
        .bt_deb_d_reg_0(deb_s2_n_2),
        .bt_deb_reg_0(deb_s2_n_1),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .simon_buttons_n_IBUF(simon_buttons_n_IBUF[2]));
  debouncer_2 deb_s3
       (.bt_deb_d(bt_deb_d_2),
        .bt_deb_d_reg_0(deb_s3_n_2),
        .bt_deb_reg_0(deb_s3_n_1),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .simon_buttons_n_IBUF(simon_buttons_n_IBUF[3]));
  OBUF \lcd_data_OBUF[0]_inst 
       (.I(lcd_data_OBUF[0]),
        .O(lcd_data[0]));
  OBUF \lcd_data_OBUF[1]_inst 
       (.I(lcd_data_OBUF[1]),
        .O(lcd_data[1]));
  OBUF \lcd_data_OBUF[2]_inst 
       (.I(lcd_data_OBUF[2]),
        .O(lcd_data[2]));
  OBUF \lcd_data_OBUF[3]_inst 
       (.I(lcd_data_OBUF[3]),
        .O(lcd_data[3]));
  OBUF \lcd_data_OBUF[4]_inst 
       (.I(lcd_data_OBUF[4]),
        .O(lcd_data[4]));
  OBUF \lcd_data_OBUF[5]_inst 
       (.I(lcd_data_OBUF[5]),
        .O(lcd_data[5]));
  OBUF \lcd_data_OBUF[6]_inst 
       (.I(lcd_data_OBUF[6]),
        .O(lcd_data[6]));
  OBUF \lcd_data_OBUF[7]_inst 
       (.I(lcd_data_OBUF[7]),
        .O(lcd_data[7]));
  OBUF lcd_enable_OBUF_inst
       (.I(lcd_enable_OBUF),
        .O(lcd_enable));
  OBUF lcd_regsel_OBUF_inst
       (.I(lcd_regsel_OBUF),
        .O(lcd_regsel));
  OBUF \led_OBUF[0]_inst 
       (.I(\led_OBUF_BUFG[0] ),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(1'b0),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(1'b0),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUFT \led_OBUF[14]_inst 
       (.I(1'b0),
        .O(led[14]),
        .T(1'b1));
  OBUFT \led_OBUF[15]_inst 
       (.I(1'b0),
        .O(led[15]),
        .T(1'b1));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  BUFG \led_OBUF_BUFG[0]_inst 
       (.I(\led_OBUF[0] ),
        .O(\led_OBUF_BUFG[0] ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    led_enable_reg
       (.CLR(1'b0),
        .D(deb_s0_n_2),
        .G(\led_OBUF_BUFG[0] ),
        .GE(1'b1),
        .Q(led_enable));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \n_state_reg[0] 
       (.CLR(1'b0),
        .D(seq_ct_n_1),
        .G(\n_state_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(n_state[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \n_state_reg[1] 
       (.CLR(1'b0),
        .D(deb_s0_n_8),
        .G(\n_state_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(n_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \n_state_reg[1]_i_2 
       (.I0(\led_OBUF[0] ),
        .I1(led_OBUF[1]),
        .O(\n_state_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    randomize_reg
       (.CLR(1'b0),
        .D(deb_held_0),
        .G(randomize_reg_i_1_n_0),
        .GE(1'b1),
        .Q(randomize));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    randomize_reg_i_1
       (.I0(\led_OBUF[0] ),
        .I1(led_OBUF[1]),
        .O(randomize_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    seq_count_enable_reg
       (.CLR(1'b0),
        .D(seq_ct_n_2),
        .G(seq_ct_n_0),
        .GE(1'b1),
        .Q(led_OBUF[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    seq_count_reset_reg
       (.CLR(1'b0),
        .D(seq_count_reset_reg_i_1_n_0),
        .G(deb_s0_n_9),
        .GE(1'b1),
        .Q(seq_count_reset));
  LUT1 #(
    .INIT(2'h1)) 
    seq_count_reset_reg_i_1
       (.I0(led_OBUF[1]),
        .O(seq_count_reset_reg_i_1_n_0));
  counter seq_ct
       (.D(seq_ct_n_1),
        .E(seq_t_n_0),
        .Q(led_OBUF[10:4]),
        .\c_state_reg[0] (seq_ct_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\count_reg[5]_0 (seq_ct_n_2),
        .deb_held_0(deb_held_0),
        .led_OBUF(led_OBUF[1]),
        .led_OBUF_0_sp_1(\led_OBUF[0] ),
        .seq_count_reset(seq_count_reset));
  timer seq_t
       (.E(seq_t_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[13]));
  button_ctrl simon_button_loc
       (.bt_deb_d(bt_deb_d_1),
        .bt_deb_d_0(bt_deb_d_2),
        .bt_deb_d_1(bt_deb_d_0),
        .\button_loc_reg[0]_0 (deb_s1_n_1),
        .\button_loc_reg[1]_0 (deb_s2_n_1),
        .\button_loc_reg[1]_1 (deb_s3_n_1),
        .\button_loc_reg[1]_2 (deb_s1_n_2),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_enable(led_enable),
        .simon_led0_OBUF(simon_led0_OBUF),
        .simon_led1_OBUF(simon_led1_OBUF),
        .simon_led2_OBUF(simon_led2_OBUF),
        .\simon_led3[0] (simon_color_ctrl_n_0),
        .simon_led3_OBUF(simon_led3_OBUF));
  IBUF \simon_buttons_n_IBUF[0]_inst 
       (.I(simon_buttons_n[0]),
        .O(simon_buttons_n_IBUF[0]));
  IBUF \simon_buttons_n_IBUF[1]_inst 
       (.I(simon_buttons_n[1]),
        .O(simon_buttons_n_IBUF[1]));
  IBUF \simon_buttons_n_IBUF[2]_inst 
       (.I(simon_buttons_n[2]),
        .O(simon_buttons_n_IBUF[2]));
  IBUF \simon_buttons_n_IBUF[3]_inst 
       (.I(simon_buttons_n[3]),
        .O(simon_buttons_n_IBUF[3]));
  led_ctrl simon_color_ctrl
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\timer_reg[18]_0 (simon_color_ctrl_n_0));
  OBUF \simon_led0_OBUF[0]_inst 
       (.I(1'b0),
        .O(simon_led0[0]));
  OBUF \simon_led0_OBUF[1]_inst 
       (.I(simon_led0_OBUF),
        .O(simon_led0[1]));
  OBUF \simon_led0_OBUF[2]_inst 
       (.I(1'b0),
        .O(simon_led0[2]));
  OBUF \simon_led1_OBUF[0]_inst 
       (.I(simon_led1_OBUF),
        .O(simon_led1[0]));
  OBUF \simon_led1_OBUF[1]_inst 
       (.I(1'b0),
        .O(simon_led1[1]));
  OBUF \simon_led1_OBUF[2]_inst 
       (.I(1'b0),
        .O(simon_led1[2]));
  OBUF \simon_led2_OBUF[0]_inst 
       (.I(1'b0),
        .O(simon_led2[0]));
  OBUF \simon_led2_OBUF[1]_inst 
       (.I(1'b0),
        .O(simon_led2[1]));
  OBUF \simon_led2_OBUF[2]_inst 
       (.I(simon_led2_OBUF),
        .O(simon_led2[2]));
  OBUF \simon_led3_OBUF[0]_inst 
       (.I(simon_led3_OBUF),
        .O(simon_led3[0]));
  OBUF \simon_led3_OBUF[1]_inst 
       (.I(simon_led3_OBUF),
        .O(simon_led3[1]));
  OBUF \simon_led3_OBUF[2]_inst 
       (.I(1'b0),
        .O(simon_led3[2]));
  PRNG simon_rand
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[3:2]),
        .randomize(randomize));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
