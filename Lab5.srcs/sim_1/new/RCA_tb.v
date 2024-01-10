`timescale 1ns / 1ps

module RCA_tb;

reg clk;
reg enable;
reg [3:0] A, B;
reg Cin;

wire [4:0] Q;

RCA_4bits uut(
    .clk(clk),
    .enable(enable),
    .A(A),
    .B(B),
    .Cin(Cin),
    .Q(Q)
);

initial
begin

clk = 0;
enable = 1;
Cin = 0;

A = 4'b0001;
B = 4'b0101;

#10;

A = 4'b0111;
B = 4'b0111;

#10

Cin = 1;
A = 4'b1000;
B = 4'b0111;

#10;
Cin = 0;

A = 4'b1100;
B = 4'b0100;

#10;
Cin = 1;
A = 4'b1000;
B = 4'b1000;

#10
Cin = 1;
A = 4'b1001;
B = 4'b1010;

#10
Cin = 0;
A = 4'b1111;
B = 4'b1111;

end

always
#5 clk = ~clk;

endmodule
