module timer (
    output reg pulse, output reg hold,
    input clk, reset, enable,
    input [4:0] factor
    );

localparam ONESEC = 100_000_000, HALFSEC = 50_000_000, TRIPLESEC = 75_000_000;
reg [29:0] counter;

always @(posedge clk) begin
    if (enable) begin
        counter <= counter + 1;
        if ((counter == factor*ONESEC) || (reset)) begin
            counter <= 0;
        end
	end
end

// pulse
always @* begin
    pulse = 0;
	if (counter == (factor*ONESEC)) begin
		pulse = 1;
    end

end	

always @* begin
    hold = 0;
    if ((counter == (factor*ONESEC)) || counter == ((factor*TRIPLESEC)-1)) begin
        hold = 1;
    end
end
endmodule

