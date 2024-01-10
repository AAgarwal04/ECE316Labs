`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2023 12:32:32 PM
// Design Name: 
// Module Name: BCD
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module BCD(
    input s3,
    input s2,
    input s1,
    input s0,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output A0,
    output A1,
    output A2,
    output A3,
    output dp
    );
    
    //Establishing not gates
    wire s3_not, s2_not, s1_not, s0_not;
    not n3(s3_not, s3);
    not n2(s2_not, s2);
    not n1(s1_not, s1);
    not n0(s0_not, s0);
    
    //SETTING OUTPUTS
    //a outputs with intermediary gates
    wire a0, a1;
    and ga0(a0, s2, s1_not, s0_not);
    and ga1(a1, s3_not, s2_not, s1_not, s0);
    or ga(a, a0, a1);
    
    //b outputs with intermediary gates
    wire b0, b1;
    and gb0(b0, s2, s1_not, s0);
    and gb1(b1, s2, s1, s0_not);
    or gb(b, b0, b1);
    
    //c outputs with intermediary gates
    and gc(c, s2_not, s1, s0_not);
    
    //d outputs with intermediary gates
    wire d0, d1, d2;
    and gd0(d0, s2, s1_not, s0_not);
    and gd1(d1, s3_not, s2_not, s1_not, s0);
    and gd2(d2, s2, s1, s0);
    or gd(d, d0, d1, d2);
    
    //e outputs with intermediary gates
    wire e0;
    and ge0(e0, s2, s1_not);
    or ge(e, s0, e0);
    
    //f outputs with intermediary gates
    wire f0, f1, f2;
    and gf0(f0, s1, s0);
    and gf1(f1, s3_not, s2_not, s1);
    and gf2(f2, s3_not, s2_not, s0);
    or gf(f, f0, f1, f2);
    
    //g outputs with intermediary gates
    wire g0, g1;
    and gg0(g0, s3_not, s2_not, s1_not);
    and gg1(g1, s2, s1, s0);
    or gg(g, g0, g1);
    
    //a0 outputs with intermediary gates
    wire A00, A01;
    and gA00(A00, s3, s1);
    and gA01(A01, s3, s2);
    or gA0(A0, A00, A01);
    
    //a1, a2, a3, dp outputs are always 1
    and gA1(A1, 1, 1);
    and gA2(A2, 1, 1);
    and gA3(A3, 1, 1);
    and gdp(dp, 1, 1);
    
    
endmodule
