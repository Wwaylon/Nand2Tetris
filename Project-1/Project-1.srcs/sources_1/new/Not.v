`timescale 1ns / 1ps

module Not(
    input in,
    output out
    );
    // Implementing the Not gate using the Nand gate
    Nand Nand (.a(in),
               .b(in),
               .out(out));
endmodule
