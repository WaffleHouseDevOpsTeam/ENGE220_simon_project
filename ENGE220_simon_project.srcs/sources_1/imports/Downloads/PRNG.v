module PRNG (output [9:0] random, input step, rerun, randomize, clk, reset);
    LFSR u1 (.random(random[0]), .step(step), .rerun(rerun), .randomize(randomize), .clk(clk), .reset(reset));
    LFSR #(.FILL(16'h0001)) u2 (.random(random[1]), .step(step), .rerun(rerun), .randomize(randomize), .clk(clk), .reset(reset));
    LFSR #(.FILL(16'h0000)) u3 (.random(random[2]), .step(step), .rerun(rerun), .randomize(randomize), .clk(clk), .reset(reset));
    LFSR #(.FILL(16'h0011)) u4 (.random(random[3]), .step(step), .rerun(rerun), .randomize(randomize), .clk(clk), .reset(reset));
    LFSR #(.FILL(16'h0010)) u5 (.random(random[4]), .step(step), .rerun(rerun), .randomize(randomize), .clk(clk), .reset(reset));
    LFSR #(.FILL(16'h0101)) u6 (.random(random[5]), .step(step), .rerun(rerun), .randomize(randomize), .clk(clk), .reset(reset));
    LFSR #(.FILL(16'h0100)) u7 (.random(random[6]), .step(step), .rerun(rerun), .randomize(randomize), .clk(clk), .reset(reset));
    LFSR #(.FILL(16'h0111)) u8 (.random(random[7]), .step(step), .rerun(rerun), .randomize(randomize), .clk(clk), .reset(reset));
    LFSR #(.FILL(16'h0110)) u9 (.random(random[8]), .step(step), .rerun(rerun), .randomize(randomize), .clk(clk), .reset(reset));
    LFSR #(.FILL(16'h1001)) u10 (.random(random[9]), .step(step), .rerun(rerun), .randomize(randomize), .clk(clk), .reset(reset));
endmodule
