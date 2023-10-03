`timescale 1ns / 1ps

module tb_DMUX;

    reg in, sel;
    wire a, b;

    // Instantiate the DMUX
    DMUX dut (.in(in), .sel(sel), .a(a), .b(b));

    // Stimulus generation
    initial begin
        // Test case 1
        in = 1'b1;
        sel = 1'b0;
        #10; // Wait for 10 time units
        if (a !== 1'b1 || b !== 1'b0)
            $display("Test case 1 failed");
        else 
            $display("Test case 1 success");

        // Test case 2
        in = 1'b1;
        sel = 1'b1;
        #10; // Wait for 10 time units
        if (a !== 1'b0 || b !== 1'b1)
            $display("Test case 2 failed");
        else 
            $display("Test case 2 success");

        // Test case 3
        in = 1'b0;
        sel = 1'b0;
        #10; // Wait for 10 time units
        if (a !== 1'b0 || b !== 1'b0)
            $display("Test case 3 failed");
        else 
            $display("Test case 3 success");
        
        // Test case 4
        in = 1'b0;
        sel = 1'b1;
        #10; // Wait for 10 time units
        if (a !== 1'b0 || b !== 1'b0)
            $display("Test case 4 failed");
        else 
            $display("Test case 4 success");

        $finish; // End simulation
    end

endmodule