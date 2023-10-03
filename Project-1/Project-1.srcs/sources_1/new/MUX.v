`timescale 1ns / 1ps

module MUX(
    input a, b, sel,
    output out
    );
    // Implementing a!sel+b*sel = out
    wire not_sel;
    wire a_and_notsel;
    wire b_and_notsel;
    Not Not1 (.in(sel), .out(not_sel));
    And and1 (.a(a), .b(not_sel), .out(a_and_notsel));
    And and2 (.a(b), .b(sel), .out(b_and_notsel));
    Or Or1 (.a(a_and_notsel), .b(b_and_notsel), .out(out));
    
endmodule
