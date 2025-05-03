module sevenSegDecoder_tb;

    logic I1, I0;
    logic [6:0] segments;

    sevenSegDecoder dut (I1, I0, segments);

    initial begin
        {I1, I0} = 2'b00; #10; $display("Input: 00. Segments: %b", segments);
        {I1, I0} = 2'b01; #10; $display("Input: 01. Segments: %b", segments);
        {I1, I0} = 2'b10; #10; $display("Input: 10. Segments: %b", segments);
        {I1, I0} = 2'b11; #10; $display("Input: 11. Segments: %b", segments);
        $finish;
    end

endmodule
