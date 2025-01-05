module parity_tb;

    reg [3:0] data_in;         
    wire parity;               
    parity_rtl uut (
        .data_in(data_in),
        .parity(parity)
    );
    initial begin
        
        $display("Data Input  Parity Output");
        
        data_in = 4'b0000; 
        #10; 
        $display("%b       %b", data_in, parity);

        data_in = 4'b0001; 
        #10;
        $display("%b       %b", data_in, parity);

        data_in = 4'b0010; 
        #10;
        $display("%b       %b", data_in, parity);
        data_in = 4'b1111; 
        #10;
        $display("%b       %b", data_in, parity);
        
        data_in = 4'b0101; 
        #10;
        $display("%b       %b", data_in, parity);

        data_in = 4'b1100; 
        #10;
        $display("%b       %b", data_in, parity);

        data_in = 4'b1110; 
        #10;
        $display("%b       %b", data_in, parity);

        data_in = 4'b1010; 
        #10;
        $display("%b       %b", data_in, parity);
        
        $finish;
    end

endmodule
