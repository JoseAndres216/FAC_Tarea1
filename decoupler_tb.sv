module decoupler_tb;

    logic I1, I0;
    logic S;

    decoupler dut (I1, I0, S);

    initial begin
        {I1, I0} = 2'b00; #10; $display("Input: 00. Output: %b", S);
        {I1, I0} = 2'b01; #10; $display("Input: 01.  Output: %b", S);
        {I1, I0} = 2'b10; #10; $display("Input: 10. Output: %b", S);
        {I1, I0} = 2'b11; #10; $display("Input: 11. Output: %b", S);
        $finish;
    end

endmodule
