`timescale 1ns/1ps
 
module TBbaudGenerator;
	reg CLK;
	wire BAUD;
	
	initial begin
		CLK = 0;
	end
	
	baudGenerator bg1 (
		.CLK(CLK),
		.BAUD(BAUD)
	);
	
	// Clock
	always begin
		#1 CLK = ~CLK;
	end
endmodule 