module logicBlock (input logic I0, I1, I2, I3, clk, rst, output logic E, output logic [6:0] segments);

	logic O1, O0;

	encoder encoder1 (I0, I1, I2, I3, O1, O0);
	
	logic I1f, I0f;
	
	logic O1f, O0f;
	
	decoder decoder1 (O1, O0, I1f, I0f, O1f, O0f);
	
	sevenSegDecoder sevenSegDecoder1 (O1f, O0f, segments);
	
	decoupler decoupler1 (O1f, O0f, E);

	always_ff @(posedge clk or negedge rst) begin
		
		if(~rst) begin
			
			I1f <= 0;
			I0f <= 0;
			
		end
		else begin
		
			I1f <= O1f;
			I0f <= O0f;
		
		end
		
	end

endmodule