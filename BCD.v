module BCD(
	input  [17:0] BIN,
	output reg [23:0] BCD
	);
	
	integer i;
	
	// Using the Dibble Dabble algorithm
	always@(BIN) begin
		BCD = 0;
		for (i=0; i<18; i=i+1) begin
			if (BCD[ 3: 0] >= 5) BCD[ 3: 0] = BCD[ 3: 0] + 4'b0011;
			if (BCD[ 7: 4] >= 5) BCD[ 7: 4] = BCD[ 7: 4] + 4'b0011;
			if (BCD[11: 8] >= 5) BCD[11: 8] = BCD[11: 8] + 4'b0011;
			if (BCD[15:12] >= 5) BCD[15:12] = BCD[15:12] + 4'b0011;
			if (BCD[19:16] >= 5) BCD[19:16] = BCD[19:16] + 4'b0011;
			if (BCD[23:20] >= 5) BCD[23:20] = BCD[23:20] + 4'b0011;
			BCD = {BCD[22:0],BIN[17-i]};
		end
	end
endmodule 