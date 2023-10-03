`timescale 1ns / 1ps

module tb_MUX16();
    reg [15:0] a, b;
    reg sel;
    wire [15:0] out;

    MUX16 dut (
        .a(a),
        .b(b),
        .sel(sel),
        .out(out)
    );
    initial begin
    $finish;
    end
endmodule
