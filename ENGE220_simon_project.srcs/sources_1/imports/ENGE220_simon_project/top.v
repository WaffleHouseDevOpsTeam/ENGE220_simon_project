// Nothing goes in this module
// just module instances and the state machine!
module top(
    output [2:0] simon_led0, simon_led1, simon_led2, simon_led3,
    output [3:0] led,
    input [3:0] simon_buttons_n,
    input clk
	);

//  debounced simon buttons, the state machine inputs	
    wire [3:0] deb_s1_held;
    wire [3:0] deb_s1_press;

//  state machine outputs
//  missing lcd out and a few others, will probably be reg
    wire [1:0] color;
    wire led_enable, step, randomize, play_seq;
    wire reset;

    debouncer deb_s0 (
	    .pressed(deb_s1_press [0]), 
	    .held(deb_s1_held [0]),
	    .button(simon_buttons_n[0]),
	    .reset(reset)
    );

    debouncer deb_s1 (
	    .pressed(deb_s1_press [1]), 
	    .held(deb_s1_held [1]),
	    .button(simon_buttons_n[1]),
	    .reset(reset)
    );
    
    debouncer deb_s2 (
	    .pressed(deb_s1_press [2]), 
	    .held(deb_s1_held [2]),
	    .button(simon_buttons_n[2]),
	    .reset(reset)
    );

    debouncer deb_s3 (
	    .pressed(deb_s1_press [3]), 
	    .held(deb_s1_held [3]),
	    .button(simon_buttons_n[3]),
	    .reset(reset)
    );

    button_ctrl simon_button_loc (
        .button_loc(color),
        .button_in(deb_s1_press)
    );
    
    led_ctrl simon_color_ctrl (
        .led0(simon_led0), 
        .led1(simon_led1), 
        .led2(simon_led2), 
        .led3(simon_led3), 
        .clk(clk), 
        .color(color), 
        .enable()
        );
        
endmodule