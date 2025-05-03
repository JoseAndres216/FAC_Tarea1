module decoder(input logic I1, I0, I1f, I0f, output logic O1, O0);

	assign O1 = (I1 ^ I1f) ^ I0 & I0f;

	assign O0 = I0 ^ I0f;

endmodule