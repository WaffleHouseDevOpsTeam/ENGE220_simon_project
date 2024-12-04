`timescale 1ns / 1ps
`timescale 1ns/1ps

module button_ctrl_tb;
    // Testbench signals
    reg [3:0] button_in;
    wire [1:0] button_loc;

    // Instantiate the module under test (MUT)
    button_ctrl uut (
        .button_loc(button_loc),
        .button_in(button_in)
    );

    // Testbench logic
    initial begin
        // Initialize inputs
        button_in = 4'b0000;

        // Apply test cases
        $display("Starting Testbench...");

        // Test 1: No button pressed, enable = 0
        #20;
      
        // Test 2: Button 0 pressed, enable = 1
        button_in = 4'b0001;
        #5;
       
				button_in = 4'b0000;
				#20;
        // Test 3: Button 1 pressed, enable = 1
        button_in = 4'b0010;
        #5;
        
				button_in = 4'b0000;
				#20;
        // Test 4: Button 2 pressed, enable = 1
        button_in = 4'b0100;
        #5;
        
				button_in = 4'b0000;
				#20;
        // Test 5: Button 3 pressed, enable = 1
        button_in = 4'b1000;
        #5;

				button_in = 4'b0000;
				#20;

				
        button_in = 4'b1001;
        #5;

				button_in = 4'b0000;
				#10;
		end
endmodule
  

