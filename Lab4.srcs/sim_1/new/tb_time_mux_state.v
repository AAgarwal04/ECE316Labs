`timescale 1ns / 1ps
 
module tb_time_multiplexing_main;
    reg clk;
    reg reset;
    reg [15:0] sw;
    wire [3:0] an;
    wire[6:0] sseg;
 
    time_multiplexing_main ul (
    .clk(clk),
    .reset(reset),
    .sw(sw),
    .an(an),
    .sseg(sseg)
    );
 
        initial
        begin
        clk = 0;
        reset = 0;
        sw = 0;
 
        #10;
        reset = 1;
        sw = 16'h0000;
        #10;
        sw = 16'h00A1;
        #10;
        sw = 16'h0B02;
        #10;
        sw = 16'hC003;
        #10;
        sw = 16'h00D4;
        #10;
        sw = 16'h0E05;
    end
 
    always #5 clk = ~clk;
endmodule