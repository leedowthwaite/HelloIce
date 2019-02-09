`default_nettype none

// define a Count module
module Count(input CLK_IN, output GLED5, output RLED1, output RLED2, output RLED3, output RLED4);

	// define a 24-bit counter to divide the clock down from 12MHz
	localparam WIDTH = 24;
	reg [WIDTH-1:0] counter;

	// run counter from 12MHz clock
	always @(posedge CLK_IN)
		counter <= counter + 1;

	// wire up the green LED to be always on
	assign GLED5 = 1'b1;
	// wire up the red LEDs to the counter
	assign RLED1 = counter[WIDTH-1];
	assign RLED2 = counter[WIDTH-2];
	assign RLED3 = counter[WIDTH-3];
	assign RLED4 = counter[WIDTH-4];

endmodule
