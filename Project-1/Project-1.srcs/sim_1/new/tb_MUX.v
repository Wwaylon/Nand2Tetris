`timescale 1ns / 1ps

module tb_MUX;
    reg a, b, sel;
    wire out;

    MUX dut (
        .a(a),
        .b(b),
        .sel(sel),
        .out(out)
    );

    initial begin
        // Test case 1: a = 0, b = 0, sel = 0
        a = 0;
        b = 0;
        sel = 0;
        #1;
        if (out !== 1'b0) $display("Test case 1 failed");
        else $display("Test case 1 success");

        // Test case 2: a = 0, b = 0, sel = 1
        a = 0;
        b = 0;
        sel = 1;
        #1;
        if (out !== 1'b0) $display("Test case 2 failed");
        else $display("Test case 2 success");

        // Test case 3: a = 0, b = 1, sel = 0
        a = 0;
        b = 1;
        sel = 0;
        #1;
        if (out !== 1'b0) $display("Test case 3 failed");
        else $display("Test case 3 success");

        // Test case 4: a = 0, b = 1, sel = 1
        a = 0;
        b = 1;
        sel = 1;
        #1;
        if (out !== 1'b1) $display("Test case 4 failed");
        else $display("Test case 4 success");

        // Test case 5: a = 1, b = 0, sel = 0
        a = 1;
        b = 0;
        sel = 0;
        #1;
        if (out !== 1'b1) $display("Test case 5 failed");
        else $display("Test case 5 success");

        // Test case 6: a = 1, b = 0, sel = 1
        a = 1;
        b = 0;
        sel = 1;
        #1;
        if (out !== 1'b0) $display("Test case 6 failed");
        else $display("Test case 6 success");

        // Test case 7: a = 1, b = 1, sel = 0
        a = 1;
        b = 1;
        sel = 0;
        #1;
        if (out !== 1'b1) $display("Test case 7 failed");
        else $display("Test case 7 success");

        // Test case 8: a = 1, b = 1, sel = 1
        a = 1;
        b = 1;
        sel = 1;
        #1;
        if (out !== 1'b1) $display("Test case 8 failed");
        else $display("Test case 9 success");

        // Finish simulation
        $stop;
    end
endmodule