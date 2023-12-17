`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 05:03:05 PM
// Design Name: 
// Module Name: tb_rising_edge_detector
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


module tb_rising_edge_detector;
reg clk;
reg signal;
reg reset;
wire outedge;

rising_edge_detector u1 (
    .clk(clk),
    .signal(signal),
    .reset(reset),
    .outedge(outedge)
);

initial
begin

clk = 0;
reset = 0;
signal = 0;

#20;

signal = 0;

#20;

signal = 1;

#20;

signal = 1;

#20;

signal = 0;

#20;

signal = 1;

#20;

signal = 1;

#20;

signal = 0;

end

always
#10 clk = ~clk;

endmodule
