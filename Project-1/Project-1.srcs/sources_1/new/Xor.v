`timescale 1ns / 1ps

module Xor(
    input a, b,
    output out
    );
    //(a+b)(!a+!b)
    wire not_a;
    wire not_b;
    wire a_and_b;
    wire nota_and_notb;
    Not not1 (.in(a), .out(not_a));
    Not not2 (.in(b), .out(not_b));
    Or or1 (.a(a), .b(b), .out(a_and_b));
    Or or2 (.a(not_a), .b(not_b), .out(nota_and_notb));
endmodule
