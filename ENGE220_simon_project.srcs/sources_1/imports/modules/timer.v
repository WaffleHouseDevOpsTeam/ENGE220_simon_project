module timer (output reg pulse, output reg hold,
input clk, reset, enable);

localparam ONESEC = 100_000_000, HALFSEC = 50_000_000, TRIPLESEC = 75_000_000;
reg [29:0] counter;

always @(posedge clk) begin
    if (enable) begin
        counter <= counter + 1;
        if ((counter == ONESEC) || (reset)) begin
            counter <= 0;
        end
	end
end

// pulse
always @* begin
	if (counter == 0) begin
		pulse = 1;
	end else begin
	   pulse = 0;
	end
end	

always @* begin
    hold = 0;
    if (counter <= TRIPLESEC) begin
        hold = 1;
    end
end
endmodule

