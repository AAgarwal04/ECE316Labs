`timescale 1ns / 1ps


module RCA_4bits(
    input clk,
    input enable,
    input [3:0] A,B,
    input Cin,
    output [4:0] Q
    );
    
    wire [2:0] CarryBit;
    wire [4:0] DataReg;
    
    full_adder c0(.A(A[0]), .B(B[0]), .Cin(Cin), .S(DataReg[0]), .Cout(CarryBit[0]));
    full_adder c1(.A(A[1]), .B(B[1]), .Cin(CarryBit[0]), .S(DataReg[1]), .Cout(CarryBit[1]));
    full_adder c2(.A(A[2]), .B(B[2]), .Cin(CarryBit[1]), .S(DataReg[2]), .Cout(CarryBit[2]));
    full_adder c3(.A(A[3]), .B(B[3]), .Cin(CarryBit[2]), .S(DataReg[3]), .Cout(DataReg[4]));
    
    register_logic r(.clk(clk), .enable(enable), .Data(DataReg), .Q(Q));
    
endmodule
