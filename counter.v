module counter(
	input SEL,CLK,RST,
	output reg [18:0] OUT
	);
	
	baudGenerator bg1 (
		.CLK(CLK),
		.BAUD(BAUD)
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
