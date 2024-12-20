module button_ctrl(
    output reg [1:0] button_loc,
    input [3:0] button_in,
    input clk
    );
  	
    always @(posedge clk) begin
	    case (button_in)
		    4'b0001: button_loc <= 2'b00;
		    4'b0010: button_loc <= 2'b01;
		    4'b0100: button_loc <= 2'b10;
		    4'b1000: button_loc <= 2'b11;
		    default: button_loc <= button_loc;
	    endcase
    end 
endmodule
