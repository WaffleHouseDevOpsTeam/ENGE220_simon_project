module counter(
	output reg [7:0] count,
	input pulse_in,
	input clk,
	input reset,
	input enable
	);

	always @(posedge clk) begin
            if (pulse_in && enable) begin
                count <= count + 1;
            end
            if ((count >= 100) || (reset)) begin
                count <= 0;
            end
        end

endmodule
