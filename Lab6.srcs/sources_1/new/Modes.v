`timescale 1ns / 1ps

module Modes(
    input clk,
    input reset,
    input ss,
    input [1:0] modeSwitch,
    input [3:0] A, B,
    output wire [3:0] an,
    output wire [0:0] dp,
    output wire [6:0] sseg
    
);
    
    reg [13:0] timeVal = 0;
    reg [1:0] state = 0;
    reg [1:0] next_state = 0;
    reg [1:0] modeState = 0;
    
    wire [6:0] in0, in1, in2, in3;
    
    hexto7segment c1 (.x(timeVal/1000 % 10), .r(in3));
    hexto7segment c2 (.x(timeVal/100 % 10), .r(in2));
    hexto7segment c3 (.x(timeVal/10 % 10), .r(in1));
    hexto7segment c4 (.x(timeVal % 10), .r(in0));
    
    wire slow_clk1;
    wire slow_clk2;
    
    reg [3:0] Aval = 0;
    reg [3:0] Bval = 0;
    
    clkdiv cl1(clk, reset, slow_clk1);
    clkdiv2 cl2(clk, reset, slow_clk2);
    
    time_mux_state_machine c6(
        .clk (slow_clk1),
        .reset (reset),
        .in0 (in0),
        .in1 (in1),
        .in2 (in2),
        .in3 (in3),
        .an (an),
        .sseg (sseg),
        .dp(dp));       
        
    always @(posedge slow_clk2 or posedge reset) begin
        if (reset) begin
            state <= 2'b00;
            next_state <= 2'b00;
            if (modeSwitch == 2'b00)
                timeVal <= 13'b0;
            else if (modeSwitch == 2'b01 || modeSwitch == 2'b11) begin
                if (8*A[3] + 4*A[2] + 2*A[1] + A[0] <= 9)
                    Aval = 8*A[3] + 4*A[2] + 2*A[1] + A[0];
                if (8*B[3] + 4*B[2] + 2*B[1] + B[0] <= 9)
                    Bval = 8*B[3] + 4*B[2] + 2*B[1] + B[0];
                if (modeSwitch == 2'b01)
                    timeVal <= 10*(Aval) + Bval;
                else if (modeSwitch == 2'b11)
                    timeVal <= 1000*(Aval) + 100*(Bval);
            end
            else if (modeSwitch == 2'b10)
                timeVal <= 9999;    
        end 
        else begin
            case (state)
                2'b00   : begin
                    if (modeSwitch == 2'b00 || modeSwitch == 2'b01) begin
                    if (ss * (timeVal < 9999))
                        next_state = 2'b01;
                    else
                        next_state = 2'b00;
                    end
                    
                    else if (modeSwitch == 2'b10 || modeSwitch == 2'b11) begin
                    if (ss * (timeVal > 0))
                        next_state = 2'b01;
                    else
                        next_state = 2'b00;
                    end
                    
                    end
                2'b01   : begin
                    if (modeSwitch == 2'b00 || modeSwitch == 2'b01) begin
                    timeVal = timeVal + 1;
                    if (!ss * (timeVal < 9999))
                        next_state = 2'b01;
                    else
                        next_state = 2'b00;
                    end
                    
                    else if (modeSwitch == 2'b10 || modeSwitch == 2'b11) begin
                    timeVal = timeVal - 1;
                    if (!ss * (timeVal > 0))
                        next_state = 2'b01;
                    else
                        next_state = 2'b00;
                    end
                    
                    end
                
                default : begin
                        next_state = 2'b00 ;
                        state = 2'b00;
                end
            endcase
            state <= next_state;
        end
    end
   
endmodule
