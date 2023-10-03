`timescale 1s / 1ps

module Or16(
    input [15:0] a, b,
    output [15:0] out
    );
    Or Or0(.a(a[0]), .b(b[0]), .out(out[0]));
    Or Or1(.a(a[1]), .b(b[1]), .out(out[1]));
    Or Or2(.a(a[2]), .b(b[2]), .out(out[2]));
    Or Or3(.a(a[3]), .b(b[3]), .out(out[3]));
    Or Or4(.a(a[4]), .b(b[4]), .out(out[4]));
    Or Or5(.a(a[5]), .b(b[5]), .out(out[5]));
    Or Or6(.a(a[6]), .b(b[6]), .out(out[6]));
    Or Or7(.a(a[7]), .b(b[7]), .out(out[7]));
    Or Or8(.a(a[8]), .b(b[8]), .out(out[8]));
    Or Or9(.a(a[9]), .b(b[9]), .out(out[9]));
    Or Or10(.a(a[10]), .b(b[10]), .out(out[10]));
    Or Or11(.a(a[11]), .b(b[11]), .out(out[11]));
    Or Or12(.a(a[12]), .b(b[12]), .out(out[12]));
    Or Or13(.a(a[13]), .b(b[13]), .out(out[13]));
    Or Or14(.a(a[14]), .b(b[14]), .out(out[14]));
    Or Or15(.a(a[15]), .b(b[15]), .out(out[15]));
    
endmodule
