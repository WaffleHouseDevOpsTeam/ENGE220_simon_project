`timescale 1ns / 1ps

module timer_tb();
    reg reset, clk, enable, hold, pulse;
    
    timer uut (
        .pulse(pulse),
        .hold(hold),
        .clk(clk),
        .reset(reset),
        .enable(enable)
        );  
        
        
    always #5 clk = ~clk;
    
    initial begin
        enable = 1;
        
        reset = 1;
        #5;
        reset = 0;        
    end  
    
endmodule
