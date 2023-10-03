`timescale 1ns / 1ps

module tb_Not16;
    reg [15:0] in_tb;
    wire [15:0] out_tb;
    
    // Instantiate the Not16 module
    Not16 dut (
        .in(in_tb),
        .out(out_tb)
    );
    
    // Stimulus generation
    initial begin
        // Test case 1: All inputs are '0'
        in_tb = 16'b0000000000000000;
        #10;
        if (out_tb === 16'b1111111111111111) 
            $display("Test case 1 passed");
         else 
            $display("Test case 1 failed");
        
        // Test case 2: All inputs are '1'
        in_tb = 16'b1111111111111111;
        #10;
        if (out_tb === 16'b0000000000000000) 
            $display("Test case 2 passed");
        else 
            $display("Test case 2 failed");
        
        
        // Test case 3: Random input
        in_tb = 16'b1010101010101010;
        #10;
        if (out_tb === 16'b0101010101010101) 
            $display("Test case 3 passed");
        else 
            $display("Test case 3 failed");
        

        $finish;
    end
endmodule