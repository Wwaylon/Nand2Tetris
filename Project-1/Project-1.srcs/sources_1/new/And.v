`timescale 1ns / 1ps

module And(
    input a, b,
    output out  
    );
    // Implementing Not(x Nand y) = And(x, y)
    wire nand_out;
    
    Nand Nand(.a(a),
         .b(b),
         .out(nand_out)); 
         
    Not Not(.in(nand_out),
         .out(out));
endmodule
