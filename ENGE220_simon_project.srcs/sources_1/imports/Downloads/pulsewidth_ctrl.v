// This block can be used to vary the pulse width of a servo (or anything
// else that uses a pulse width). This block simply varies the 
// value ''pulsewidth'' based on the input signals ''up'' and ''down''.
// This value (''pulsewidth'') must be used as the pulse width variable
// in the main interval timer.

module pulsewidth_ctrl (output reg [17:0] pulsewidth, input up, down, clk);

// The servo should run from .6ms to 2.4ms pulse widths - however, the
// 2.4 ms value doesn't seem to quite work. So I backed it off from
// 120000 to 11000 - these times below are double for the 100MHz clock on the
// Basys 3 as compared to the 50MHz on the Nexys board
localparam us_600 = 60000, us_2400 = 220000, motioncountmax = 500;

// The motioncounter is used to extend the amount of time it takes to 
// modify the servo pulsewidth when a control signal (like a button or switch
// is activated). So - rather than just change the pulse width on a button press,
// we count the motioncounter. When it gets to some max, then we increment
// the pulse width by 1. If we didn't do this, the motion would change far
// too rapidly.
reg [8:0] motioncounter;

always @ (posedge clk) begin
  // Use the up and down signals to increment or decrement the motioncounter
  // These can be tied to buttons or switches - whatever.
  if (up)
    motioncounter <= motioncounter + 1;
  if (down)
    motioncounter <= motioncounter - 1;

  // When the motioncounter rolls over its max, or under 0, change the pulsewidth
  // This allows us to slow down the motion of the servo 
  if (motioncounter == 0)  begin
    motioncounter <= motioncountmax;
    pulsewidth <= pulsewidth - 1;
  end
  if (motioncounter > motioncountmax) begin
    // Don't go to zero as that will trigger the block above
    motioncounter <= 1;
    pulsewidth <= pulsewidth + 1;
  end

  // Make sure that the pulsewidth stays within our acceptable range
  if (pulsewidth < us_600)
    pulsewidth <= us_600;
  if (pulsewidth > us_2400)
    pulsewidth <= us_2400;
end
endmodule
