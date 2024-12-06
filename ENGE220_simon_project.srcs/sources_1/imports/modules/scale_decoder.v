module scale_decoder( 
	output reg [17:0] note,
	input  [1:0] sel,
	input enable
	);

	always @* begin
		if (enable) begin
			case (sel)
				2'b00: note <= 227272;
				2'b01: note <= 202478;
				2'b10: note <= 180384;
				2'b11: note <= 170262;
				
//				3'b100: note <= 151686;
//				3'b101: note <= 135136;
//				3'b110: note <= 120392;
//				3'b111: note <= 113536;
			endcase
		end else begin
			note <= 0;
		end

	end
endmodule
