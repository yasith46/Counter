`timescale 1ns/1ps
 
module TBcounter;
	reg CLK;
	reg SEL;
	wire [2:0] OUT;
	
	initial begin
		CLK = 0;
		SEL = 0;
	end
	
	counter c1 (
		.SEL(SEL),
		.CLK(CLK),
		.OUT(OUT)
	);
	
	// Clock
	always begin
		#1 CLK = ~CLK;
	end
endmodule 