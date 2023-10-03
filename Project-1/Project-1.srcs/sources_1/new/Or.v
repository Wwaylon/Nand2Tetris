`timescale 1ns / 1ps

module Or(
    input a, b,
    output out
    );
    
    //implementing out = a+b = !(!a+!b) = !(!a!b)
    wire and_nota_notb, not_a, not_b;
    Not Not1(.in(a), .out(not_a));
    Not Not2(.in(b), .out(not_b));
    And And(.a(not_a), .b(not_b), .out(and_nota_notb));
    Not Not3(.in(and_nota_notb), .out(out));
       
endmodule
