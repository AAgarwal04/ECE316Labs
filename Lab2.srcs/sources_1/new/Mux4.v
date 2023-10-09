`timescale 1ns / 1ps

module mux(
    input s0,
    input s1,
    input i0,
    input i1,
    input i2,
    input i3,
    output d
    );
       
//    // Structural -- Comment when testing Behavioral
//    // Both should never be uncommented at once
    
//    // Defining wires for not signals
    wire s0_not, s1_not;
    not n0(s0_not, s0);
    not n1(s1_not, s1);
    
//    //Instantiating AND gates as per the schematic
    wire a0, a1, a2, a3;
    and g0(a0, i0, s0_not, s1_not);
    and g1(a1, i1, s0, s1_not);
    and g2(a2, i2, s0_not, s1);
    and g3(a3, i3, s0, s1);
    
    or g4(d, a0, a1, a2, a3);
    
    // Behavioral -- Comment when testing Structural
    // Both should never be uncommented at once
     
//    reg out_buf = 0;
//    assign d = out_buf;
                               
//    always @(*)
//    begin
//        out_buf = 1'bX; 
//        case ({s1, s0})
//           2'b00 : out_buf = i0;
//           2'b01 : out_buf = i1;
//           2'b10 : out_buf = i2;
//           2'b11 : out_buf = i3;
//        endcase
//    end
endmodule
