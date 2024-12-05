module seven_seg(output [7:0] seg, input [3:0] hex);
reg [7:0] seg_tmp;

always @*
	case (hex)
		0: seg_tmp = 8'b00111111;// 0, leftmost 0 is decimal point
		1: seg_tmp = 8'b00000110;// 1
		2: seg_tmp = 8'b01011011;// 2
		3: seg_tmp = 8'b01001111;// 3
		4: seg_tmp = 8'b01100110;// 4
		5: seg_tmp = 8'b01101101;// 5
		6: seg_tmp = 8'b01111101;// 6
		7: seg_tmp = 8'b00000111;// 7 
		8: seg_tmp = 8'b01111111;// 8
		9: seg_tmp = 8'b01101111;// 9
		10: seg_tmp = 8'b01110111;// A
		11: seg_tmp = 8'b01111100;// B
		12: seg_tmp = 8'b00111001;// C
		13: seg_tmp = 8'b01011110;// D
		14: seg_tmp = 8'b01111001;// E
		15: seg_tmp = 8'b01110001;// F
		default: seg_tmp = 8'b011000000;// "-" for invalid code
	endcase
	assign seg = ~seg_tmp;
	endmodule
