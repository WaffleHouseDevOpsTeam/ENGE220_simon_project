module test_top(
    output [2:0] led,
    input clk, btnR
    );
jingle_timer jt (
    .note(led [1:0]),
    .hold (led [2] ),
    .win(1),
    .enable(1),
    .reset(btnR),
    .clk(clk)
);    
    
endmodule