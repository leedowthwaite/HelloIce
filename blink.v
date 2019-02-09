
module Blink(input CLK_IN, output GLED5, output RLED1, output RLED2, output RLED3, output RLED4);

	localparam WIDTH = 24;
	reg [WIDTH-1:0] counter;

	// run counter from 12MHz clock
	always @(posedge CLK_IN)
		counter <= counter + 1;

	// wire up the red LEDs to the counter MSB
	assign RLED1 = counter[WIDTH-1];

endmodule
