module not_top(
        output [2:0] simon_led0, simon_led1, simon_led2, simon_led3,
        output [3:0] led,
        input [3:0] simon_buttons_n,
        input btnU, btnR, btnD, btnL,
        input clk,
        input [3:0] sw
);

        wire [3:0] simon_buttons = {btnR, btnD, btnL, btnU};
        
        reg [1:0] sel_color;

        always @(posedge clk) begin
            case (simon_buttons)
                4'b0001:  sel_color <= 2'b00;
                4'b0010:  sel_color <= 2'b01;
                4'b0100:  sel_color <= 2'b10;
                4'b1000:  sel_color <= 2'b11;
                default: sel_color <= sel_color;
            endcase
        end 
        
        assign led [1:0] = sel_color;
endmodule