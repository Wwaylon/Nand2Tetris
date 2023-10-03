`timescale 1ns / 1ps
module DMUX(
    input in, sel,
    output a, b
    );
    //implementing a= not_sel and in; b= sel and in
    wire not_sel;
    Not Not(.in(sel), .out(not_sel));
    And And1(.a(not_sel), .b(in), .out(a));
    And And2(.a(sel), .b(in), .out(b));
endmodule
