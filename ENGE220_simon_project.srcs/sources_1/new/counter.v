module counter(
	output reg [7:0] count,
	output reg countflag,
	input [7:0] countval,
	input pulse, reset, enable,
	input clk
	);

	always @(posedge clk) begin
		if (enable) begin
			count <= count;
			countflag <= 0;
			if (reset) begin
				count <= 0;
			end
			if (pulse) begin
				count <= count + 1;
				if (count >= countval) countflag <= 1;
			end
		end	
	end
endmodule
