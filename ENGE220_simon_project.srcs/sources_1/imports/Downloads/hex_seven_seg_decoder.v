module hex_seven_seg_decoder ( output [7:1] seg,
																input [2:0] hex,
														  	input   		blank );

reg [7:1] seg_tmp;

always @*
	case (hex)

		1: seg_tmp = 7'b1110111;// A
		2: seg_tmp = 7'b1111100;// B
		3: seg_tmp = 7'b0111001;// C
		4: seg_tmp = 7'b1011110;// D
		default: seg_tmp = 7'b1000000;// "-" for invalid code
	endcase
	assign seg = blank ? 7'b0000000 : seg_tmp;
	endmodule
