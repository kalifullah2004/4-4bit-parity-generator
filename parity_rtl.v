module parity_rtl(
    input [3:0] data_in,      // 4-bit input data
    output reg parity         // Parity bit output
);

    always @(*) begin
        // Even parity generation
        parity = ^data_in;     // XOR of all input bits
    end

endmodule

