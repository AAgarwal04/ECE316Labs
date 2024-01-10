`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2023 05:26:31 PM
// Design Name: 
// Module Name: Mode1_tb
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


module Modes_tb;
    reg clk;
    reg reset;
    reg ss;
    reg [1:0] modeSwitch;
    reg [3:0] A;
    reg [3:0] B;
    wire [3:0] an;
    wire [6:0] sseg;
    wire [1:0] modeVal0;
    wire [1:0] modeVal1;
    wire [1:0] modeVal2;
    wire [1:0] modeVal3;
//    wire [3:0] Aval;
//    wire [3:0] Bval;
//    wire [13:0] timeVal;
//    wire [1:0] state;
//    wire [1:0] next_state;
       
    Modes ul (
        .clk(clk),
        .reset(reset),
        .ss(ss),
        .an(an),
        .modeSwitch(modeSwitch),
        .A(A),
        .B(B),
        .modeVal0(modeVal0),
        .modeVal1(modeVal1),
        .modeVal2(modeVal2),
        .modeVal3(modeVal3),
//        .timeVal(timeVal),
//        .state(state),
//        .next_state(next_state),
//        .Aval(Aval),
//        .Bval(Bval),
        .sseg(sseg)
    );
    
    initial
        begin
        clk = 0;
        reset = 1;
        ss = 0;
        modeSwitch = 2'b01;
        #20;
        modeSwitch = 2'b10;
        reset = 0;
        #10;
        modeSwitch = 2'b00;
        A = 4'b0101;
        B = 4'b0101;
 
        #50;
        modeSwitch = 2'b11;
        #25;
        modeSwitch = 2'b00;
        reset = 0;
        ss = 1;
        ss = 0;
        A = 4'b0111;
        B = 4'b0011;
        #20;
        ss = 1;
        #10;
        ss = 0;
        #10;
        ss = 1;
        #10;
        ss = 0;
        #30;
        ss = 1;
        #30;
        reset = 1;
        ss = 0;
        #30;
        reset = 0;
        ss = 1;

        
    end
    
    always #5 clk = ~clk;
    
endmodule
