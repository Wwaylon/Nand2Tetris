`timescale 1ns / 1ps

module MUX16(
    input [15:0] a, b,
    input sel,
    output [15:0] out
    );
    wire [15:0] not_sel;
    wire [15:0] a_and_notsel;
    wire [15:0] b_and_notsel;
    Not Not1 (.in(sel), .out(not_sel));
    And and1 (.a(a), .b(not_sel), .out(a_and_notsel));
    And and2 (.a(b), .b(sel), .out(b_and_notsel));
    Or Or1 (.a(a_and_notsel), .b(b_and_notsel), .out(out));
    
endmodule
