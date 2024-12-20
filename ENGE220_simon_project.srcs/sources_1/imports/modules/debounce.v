module debouncer(
	output pressed, held,
	input button, clk, reset
	);

	localparam SAMPLETIME = 1999999; //20ms
	reg [21:0] timer;
	reg bt_samp, bt_deb, bt_deb_d;

	always @(posedge clk) begin
		if (reset) begin
			timer <= SAMPLETIME;
		end
		else begin
			timer <= timer - 1;
			if (timer == 0) begin
				timer <= SAMPLETIME;
			end
		end
	end
	
	always @(posedge clk) begin
		bt_deb_d <= bt_deb;
		if (timer == 0) begin
			bt_samp <= button;
			if (bt_samp == button) begin
				bt_deb <= button;
			end else begin
				timer <= timer;
			end
		end
	end	
	
	assign held = bt_deb;
	assign pressed = bt_deb & ~bt_deb_d; // falling edge detection
endmodule
