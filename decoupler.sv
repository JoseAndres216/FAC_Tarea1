module decoupler (input logic I1, I0, output S);

	assign S = I1 ^ I0;
	
endmodule