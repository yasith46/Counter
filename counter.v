module counter(
	input SEL,CLK,RST,
	output reg [18:0] OUT,
	output [6:0] SEG5,SEG4,SEG3,SEG2,SEG1,SEG0
	);
	
	baudGenerator bg1(
		.CLK(CLK),
		.BAUD(BAUD)
	);
	
	wire [23:0] BCD;
	
	BCD bcd1(
		.BIN(OUT),
		.BCD(BCD)
	);
	
	BCDto7SEG s0(
		.IN(BCD[3:0]),
		.OUT(SEG0)
	);
	
	BCDto7SEG s1(
		.IN(BCD[7:4]),
		.OUT(SEG1)
	);
	
	BCDto7SEG s2(
		.IN(BCD[11:8]),
		.OUT(SEG2)
	);
	
	BCDto7SEG s3(
		.IN(BCD[15:12]),
		.OUT(SEG3)
	);
	
	BCDto7SEG s4(
		.IN(BCD[19:16]),
		.OUT(SEG4)
	);
	
	BCDto7SEG s5(
		.IN(BCD[23:20]),
		.OUT(SEG5)
	);
	
	
	always@(posedge BAUD) begin
			if (SEL==1'b0)	begin
				if (OUT[18] == 1'b1)
					OUT <= 19'b0;
				else
					OUT <= OUT + 1'b1;
					
				if (RST == 1'b0)
					OUT <= 19'b0;
			end else begin
				if (OUT == 18'b0)
					OUT[18] <= 1'b1;
				else
					OUT <= OUT - 1'b1;
					
				if (RST == 1'b0)
					OUT[17:0] <= 18'b111111111111111111;
			end
	end
endmodule