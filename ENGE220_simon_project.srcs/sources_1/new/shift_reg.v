`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2024 01:47:22 AM
// Design Name: 
// Module Name: shift_reg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module shift_reg(
        output reg [9:0] bits_out,
        input [1:0] bits_in,
        input shift, clear, clk 
        );
        // high out, low in
        always @(posedge clk) begin
                bits_out <= bits_in;
                if (clear) bits_out <= 10'b0;
                if (shift) begin
                        bits_out <= {bits_out [7:0], bits_in};
                end
        end



endmodule
