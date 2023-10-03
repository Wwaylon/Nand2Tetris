`timescale 1ns / 1ps

module tb_And16();
    reg [15:0] a, b;
    wire [15:0] out;
    
    And16 And16 (.a(a),
                 .b(b),
                 .out(out)
                 );
    initial begin
        a = 16'b0000_0000_0000_0000;
        b = 16'b0000_0000_0000_0000;
        #10
        if (out !== 16'b0000_0000_0000_000) $display("Test case 1 failed");
        else $display("Test case 1 success");
        
        a = 16'b0000_0000_0000_0000;
        b = 16'b1111_1111_1111_1111;
        #10
        if (out !== 16'b0000_0000_0000_0000) $display("Test case 2 failed");
        else $display("Test case 2 success");
        
        a = 16'b1111_1111_1111_1111;
        b = 16'b0000_0000_0000_0000;
        #10
        if (out !== 16'b0000_0000_0000_0000) $display("Test case 3 failed");
        else $display("Test case 3 success");

        a = 16'b1111_1111_1111_1111;
        b = 16'b1111_1111_1111_1111;
        #10
        if (out !== 16'b1111_1111_1111_1111) $display("Test case 4 failed");
        else $display("Test case 4 success");
        
        a = 16'b1010_1010_1010_1010;
        b = 16'b0101_0101_0101_0101;
        #10
        if (out !== 16'b0000_0000_0000_0000) $display("Test case 5 failed");
        else $display("Test case 5 success");
        $finish;
    end

endmodule
