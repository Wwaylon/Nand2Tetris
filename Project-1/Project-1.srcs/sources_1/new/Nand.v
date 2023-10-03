`timescale 1ns / 1ps

module Nand(
    input a, b,
    output out
    );
    assign out = ~(a & b);   
endmodule
