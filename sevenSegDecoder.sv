module sevenSegDecoder (input logic I1, I0, output logic [6:0] segments);

    always_comb begin
        case ({I1, I0})
            2'b00: segments = 7'b0000001;
            2'b01: segments = 7'b1001111;
            2'b10: segments = 7'b0010010;
            2'b11: segments = 7'b0000110;
            default: segments = 7'b1111111;
        endcase
    end

endmodule
