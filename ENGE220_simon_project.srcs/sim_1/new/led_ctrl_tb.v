module led_ctrl_tb();

    // Testbench signals
    reg [1:0] color;
    reg clk;
    reg enable;
    wire [2:0] led0, led1, led2, led3;

    // Instantiate the led_ctrl module
    led_ctrl uut (
        .led0(led0), 
        .led1(led1), 
        .led2(led2), 
        .led3(led3), 
        .color(color), 
        .clk(clk), 
        .enable(enable)
    );

    // Clock generation: 10 ns period
    always begin
        #5 clk = ~clk;
    end

    // Stimulus process
    initial begin
        // Initialize signals
        clk = 0;
        enable = 0;
        color = 2'b00;
        
        // Reset sequence
        $display("Starting test...");
        
        // Case 1: Test when enable is low, LEDs should be BLACK
        #10;
        $display("Case 1: enable = 0 (LEDs should be BLACK)");
        enable = 0;
        color = 2'b00;
        #100;
        
        // Case 2: Test when enable is high, LEDs should show selected color
        #10;
        $display("Case 2: enable = 1 (LEDs should show selected colors)");
        enable = 1;
        color = 2'b00; // GREEN
        #100;
        
        color = 2'b01; // RED
        #100;
        
        color = 2'b10; // BLUE
        #100;
        
        color = 2'b11;
    end
endmodule