module hex_seven_seg_decoder ( output [7:1] seg,
																input [3:0] hex,
														  	input   		blank );

reg [7:1] seg_tmp;

always @*
	case (hex)
		0: seg_tmp = 7'b0111111;// 0
		1: seg_tmp = 7'b0000110;// 1
		2: seg_tmp = 7'b1011011;// 2
		3: seg_tmp = 7'b1001111;// 3
		4: seg_tmp = 7'b1100110;// 4
		5: seg_tmp = 7'b1101101;// 5
		6: seg_tmp = 7'b1111101;// 6
		7: seg_tmp = 7'b0000111;// 7
		8: seg_tmp = 7'b1111111;// 8
		9: seg_tmp = 7'b1101111;// 9
		10: seg_tmp = 7'b1110111;// A
		11: seg_tmp = 7'b1111100;// B
		12: seg_tmp = 7'b0111001;// C
		13: seg_tmp = 7'b1011110;// D
		14: seg_tmp = 7'b1111001;// E
		15: seg_tmp = 7'b1110001;// F
		default: seg_tmp = 7'b1000000;// "-" for invalid code
	endcase
	assign seg = blank ? 7'b0000000 : seg_tmp;
	endmodule
