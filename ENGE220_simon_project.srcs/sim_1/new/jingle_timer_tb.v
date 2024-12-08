`timescale 1ns/1ps

module tb_jingle_timer;

    // Test bench signals
    reg clk;
    reg reset;
    reg enable;
    reg win;
    wire [1:0] note;
    wire hold;

    // Instantiate the module under test (MUT)
    jingle_timer uut (
        .note(note),
        .hold(hold),
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .win(win)
    );

    // Clock generation (10ns period, 100MHz frequency)
    initial clk = 0;
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        // Initialize inputs
        reset = 0;
        enable = 0;
        win = 0;

        // Apply reset
        $display("Starting simulation...");
        reset = 1;
        #20;  // Wait for 20ns
        reset = 0;

        // Enable the timer
        enable = 1;

        // Test win sequence
        win = 1;
        #1000000;  // Simulate for some time

        // Test lose sequence
        win = 0;
        #1000000;  // Simulate for some time

        // Disable the timer
        enable = 0;
        #100000;

        $display("Simulation completed.");
        $stop;
    end

    // Monitor output signals
    initial begin
        $monitor("Time: %0dns | Reset: %b | Enable: %b | Win: %b | Note: %b | Hold: %b",
                 $time, reset, enable, win, note, hold);
    end

endmodule
