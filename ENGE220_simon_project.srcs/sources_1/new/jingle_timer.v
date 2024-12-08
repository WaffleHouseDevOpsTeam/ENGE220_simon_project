module jingle_timer (
    output [1:0] note, output reg hold,
    input clk, reset, enable, win
    );

localparam ONESEC = 100_000_000, QUARTERSEC = 25_000_000, TRIPLESEC = 75_000_000;
reg [29:0] counter;
wire [15:0] lose_sequence = 16'b0100011011100100; // buddy holly riff
wire [15:0] win_sequence = 16'b0100011011100100;
wire [15:0] sequence;
reg [15:0] count_seq;
reg pulse; 
assign sequence = win ? lose_sequence : win_sequence;

always @(posedge clk) begin
    if (enable) begin
        counter <= counter + 1;
        if ((counter == QUARTERSEC) || (reset)) begin
            
            counter <= 0;
        end
	end
end
assign note = count_seq [1:0];
// pulse
always @* begin
    pulse = 0;
	if (counter == QUARTERSEC) begin
		pulse = 1;
    end

end	
always @* begin
    count_seq = count_seq;
    if (reset) count_seq = sequence;
    if (pulse) count_seq = count_seq >> 2; 
end

always @* begin
    hold = 0;
    if ((counter == QUARTERSEC) || counter == (QUARTERSEC)) begin
        hold = 1;

    end
end
endmodule

