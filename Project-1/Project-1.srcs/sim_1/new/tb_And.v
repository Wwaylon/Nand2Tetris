
module tb_And;
    reg a, b;
    wire out;

    And DUT (
        .a(a),
        .b(b),
        .out(out)
    );

     initial begin
        // Test case 1: a = 0, b = 0 Expect out = 0
        a = 0;
        b = 0;
        #1;
        if (out !== 1'b0) $display("Test case 1 failed");
        else $display("Test case 1 success");

        // Test case 2: a = 0, b = 1 Expect out = 0
        a = 0;
        b = 1;
        #1;
        if (out !== 1'b0) $display("Test case 2 failed");
        else $display("Test case 2 success");

        // Test case 3: a = 1, b = 0 Expect out =0
        a = 1;
        b = 0;
        #1;
        if (out !== 1'b0) $display("Test case 3 failed");
        else $display("Test case 3 success");

        // Test case 4: a = 1, b = 1 Expect out =1
        a = 1;
        b = 1;
        #1;
        if (out !== 1'b1) $display("Test case 4 failed");
        else $display("Test case 4 success");

        // Finish simulation
        $stop;
    end
endmodule