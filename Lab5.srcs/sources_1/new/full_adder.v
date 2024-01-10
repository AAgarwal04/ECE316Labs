`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 07:53:43 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input A, B, Cin,
    output S, Cout
    );
    
    wire S;
    wire Cout;
    
    assign S = A ^ B ^ Cin;
    assign Cout = B*Cin + A*Cin + A*B;
    
endmodule
