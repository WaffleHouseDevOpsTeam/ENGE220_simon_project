`timescale 1ns / 1ps

module tb_top();

    // Declare inputs as reg and outputs as wire
    reg clk;
    reg [3:0] simon_buttons_n;
    reg [3:0] sw;
    wire [2:0] simon_led0, simon_led1, simon_led2, simon_led3;
    wire [3:0] led;

    // Instantiate the top module
    top uut (
        .simon_led0(simon_led0), 
        .simon_led1(simon_led1), 
        .simon_led2(simon_led2), 
        .simon_led3(simon_led3),
        .led(led),
        .simon_buttons_n(simon_buttons_n),
        .clk(clk),
        .sw(sw)
    );

    // Clock generation (100 MHz clock for simulation)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Period = 10ns, 100MHz clock
    end

    // Test stimulus
    initial begin
        // Initialize inputs
        simon_buttons_n = 4'b1111;  // Buttons are initially not pressed
        sw = 4'b0000;                // Switches in a default state

        // Apply reset
        reset_test;

        // Start test sequence
        #20;
        
        // Test: Press button 0 to start the game (IDLE -> RANDOMIZE)
        simon_buttons_n = 4'b1110;  // Button 0 pressed
        #20;
        
        // Test: Button 0 should randomize the color and show sequence
        simon_buttons_n = 4'b1111;  // Button 0 released
        #40;
        
        // Test: Simulate the sequence playing (SEQUENCE -> USERINPUT)
        simon_buttons_n = 4'b1110;  // Simulate a button press for input (pressing button 0)
        #20;
        
        // Test: Pressing the correct button should lead to the CORRECT state
        simon_buttons_n = 4'b1111;  // Release button
        #20;

        // Simulate incorrect press (INCORRECT state)
        simon_buttons_n = 4'b1101;  // Simulate button press for incorrect input
        #20;

        // Test: Final state should lead back to IDLE after failure
        simon_buttons_n = 4'b1111;  // Release all buttons
        #20;

        // End simulation
        $stop;
    end

    // Reset procedure
    task reset_test;
        begin
            // Apply reset and release buttons
            simon_buttons_n = 4'b1111;  // No button pressed
            sw = 4'b0000;               // Switches off
            #5;
            // Reset sequence
            simon_buttons_n = 4'b1111;
            #20;
        end
    endtask

endmodule
