`timescale 1ns / 1ps

module tb_Mux4;
    
    // Inputs, defined as registers
    reg s0;
    reg s1;
    reg i0;
    reg i1;
    reg i2;
    reg i3;
    
    // Outputs, defined as wires
    wire d;
    
    // Instantiate the UUT (unit under test)
    mux uut(
        .s0(s0), 
        .s1(s1), 
        .i0(i0), 
        .i1(i1), 
        .i2(i2), 
        .i3(i3),
        .d(d)
    );
    
    initial begin
        // Initialize Inputs
        s0 = 0;
        s1 = 0;
        i0 = 0;
        i1 = 0;
        i2 = 0;
        i3 = 0;
        
        // Wait 50 ns for global reset to finish
        #50;
        
        // Stimulus -- all input combinations followed by some wait time to observe the o/p  
        s0 = 0;
        s1 = 0;
        i0 = 0;
        i1 = 0;
        i2 = 0;
        i3 = 0;
        #50
        $display("TC01");
        if( d != i0 ) $display("Result is wrong");

        s0 = 1;
        s1 = 0;
        i0 = 0;
        i1 = 0;
        i2 = 0;
        i3 = 0;
        #50
        $display("TC02");
        if( d != i1 ) $display("Result is wrong");

        s0 = 0;
        s1 = 1;
        i0 = 0;
        i1 = 0;
        i2 = 0;
        i3 = 0;
        #50
        $display("TC03");
        if( d != i2 ) $display("Result is wrong");

        s0 = 1;
        s1 = 1;
        i0 = 0;
        i1 = 0;
        i2 = 0;
        i3 = 0;
        #50
        $display("TC04");
        if( d != i3 ) $display("Result is wrong");

        s0 = 0;
        s1 = 0;
        i0 = 1;
        i1 = 0;
        i2 = 0;
        i3 = 0;
        #50
        $display("TC05");
        if( d != i0 ) $display("Result is wrong");

        s0 = 1;
        s1 = 0;
        i0 = 0;
        i1 = 1;
        i2 = 0;
        i3 = 0;
        #50
        $display("TC06");
        if( d != i1 ) $display("Result is wrong");

        s0 = 0;
        s1 = 1;
        i0 = 0;
        i1 = 0;
        i2 = 1;
        i3 = 0;
        #50
        $display("TC07");
        if( d != i2 ) $display("Result is wrong");

        s0 = 1;
        s1 = 1;
        i0 = 0;
        i1 = 0;
        i2 = 0;
        i3 = 1;
        #50;
        $display("TC08");
        if( d != i3 ) $display("Result is wrong");
    
    end
    
    
    
endmodule
