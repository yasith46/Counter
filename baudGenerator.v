module baudGenerator(
	input  CLK,
	output reg BAUD
	);
	
	// One baud per second
	// 5,000,000 clocks to give one baud
	// log2(5,000,000) = 22.253 
	// since here we don't need the exact time let's do with 22
	
	// buffer
	reg [22:0] buffer = 23'b0;
	
	always@(posedge CLK) begin
			if (buffer[22] == 1'b1) begin
					buffer <= 23'b0;
					BAUD   <= ~BAUD;
			end else
				buffer <= buffer + 1'b1;
	end
endmodule			
				
		