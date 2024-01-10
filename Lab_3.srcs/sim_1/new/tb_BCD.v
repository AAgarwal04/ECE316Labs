//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2023 01:00:23 PM
// Design Name: 
// Module Name: tb_BCD
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
`timescale 1ns / 1ps

module tb_BCD;
    
    // Inputs, defined as registers
    reg s3;
    reg s2;
    reg s1;
    reg s0;
    
    // Outputs, defined as wires
    wire a, b, c, d, e, f, g, A0, A1, A2, A3, dp;
    
    // Instantiate the UUT (unit under test)
    BCD uut(
        .s3(s3),
        .s2(s2),
        .s1(s1),
        .s0(s0),
        .a(a), 
        .b(b), 
        .c(c),
        .d(d),
        .e(e), 
        .f(f),
        .g(g), 
        .A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .dp(dp)
        
    );
    
    initial begin
        // Initialize Inputs
        s3 = 0;
        s2 = 0;
        s1 = 0;
        s0 = 0;
        
        // Wait 50 ns for global reset to finish
        #50;
        
        // Stimulus -- all input combinations followed by some wait time to observe the o/p  
        s3 = 0;
        s2 = 0;
        s1 = 0;
        s0 = 1;
        #50;
        
        s3 = 0;
        s2 = 0;
        s1 = 1;
        s0 = 0;
        #50;
        
        s3 = 0;
        s2 = 0;
        s1 = 1;
        s0 = 1;
        #50;
        
        s3 = 0;
        s2 = 1;
        s1 = 0;
        s0 = 0;
        #50;
        
        s3 = 0;
        s2 = 1;
        s1 = 0;
        s0 = 1;
        #50;
        
        s3 = 0;
        s2 = 1;
        s1 = 1;
        s0 = 0;
        #50;
        
        s3 = 0;
        s2 = 1;
        s1 = 1;
        s0 = 1;
        #50;
        
        s3 = 1;
        s2 = 0;
        s1 = 0;
        s0 = 0;
        #50;
        
        s3 = 1;
        s2 = 0;
        s1 = 0;
        s0 = 1;
        #50;
        
        s3 = 1;
        s2 = 0;
        s1 = 1;
        s0 = 0;
        #50;
        
        s3 = 1;
        s2 = 0;
        s1 = 1;
        s0 = 1;
        #50;
        
        s3 = 1;
        s2 = 1;
        s1 = 0;
        s0 = 0;
        #50;
        
        s3 = 1;
        s2 = 1;
        s1 = 0;
        s0 = 1;
        #50;
        
        s3 = 1;
        s2 = 1;
        s1 = 1;
        s0 = 0;
        #50;
        
        s3 = 1;
        s2 = 1;
        s1 = 1;
        s0 = 1;
        #50;
        
    end
    
    
    
endmodule