module parity_tb;

    reg [3:0] data_in;         // 4-bit data input
    wire parity;               // Parity output

    // Instantiate the Parity Generator module
    parity_rtl uut (
        .data_in(data_in),
        .parity(parity)
    );

    // Stimulus
    initial begin
        // Apply different test cases to the parity generator
        $display("Data Input  Parity Output");
        
        // Test case 1
        data_in = 4'b0000; // Even number of 1's (0 ones)
        #10; // Wait for 10 time units
        $display("%b       %b", data_in, parity);

        // Test case 2
        data_in = 4'b0001; // Odd number of 1's (1 one)
        #10;
        $display("%b       %b", data_in, parity);

        // Test case 3
        data_in = 4'b0010; // Odd number of 1's (1 one)
        #10;
        $display("%b       %b", data_in, parity);

        // Test case 4
        data_in = 4'b1111; // Even number of 1's (4 ones)
        #10;
        $display("%b       %b", data_in, parity);

        // Test case 5
        data_in = 4'b0101; // Even number of 1's (2 ones)
        #10;
        $display("%b       %b", data_in, parity);

        // Test case 6
        data_in = 4'b1100; // Even number of 1's (2 ones)
        #10;
        $display("%b       %b", data_in, parity);

        // Test case 7
        data_in = 4'b1110; // Odd number of 1's (3 ones)
        #10;
        $display("%b       %b", data_in, parity);

        // Test case 8
        data_in = 4'b1010; // Even number of 1's (2 ones)
        #10;
        $display("%b       %b", data_in, parity);

        // Finish simulation
        $finish;
    end

endmodule
