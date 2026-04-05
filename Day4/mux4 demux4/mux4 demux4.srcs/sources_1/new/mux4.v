`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2026 12:08:11
// Design Name: 
// Module Name: mux4
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



            //Y=S1'S0'I0+S1S0'I1+S1'S0I2+S1S0I3
        //Dataflow Modeling
/*
module mux4x1_df(
    input i0, i1, i2, i3,
    input s1, s0,
    output y
);

  assign y = (~s1 & ~s0 & i0) |
             (~s1 &  s0 & i1) |
             ( s1 & ~s0 & i2) |
             ( s1 &  s0 & i3);

endmodule
*/
        // Gate-Level Modeling
/* module mux4x1_gl(
    input i0, i1, i2, i3,
    input s1, s0,
    output y
);

  wire s1n, s0n;
  wire w1, w2, w3, w4;

  not (s1n, s1);
  not (s0n, s0);

  and (w1, s1n, s0n, i0);
  and (w2, s1n, s0,  i1);
  and (w3, s1,  s0n, i2);
  and (w4, s1,  s0,  i3);

  or (y, w1, w2, w3, w4);

endmodule
*/
        ///Behavioral Modeling
module mux4x1_bh(
    input i0, i1, i2, i3,
    input s1, s0,
    output reg y
);

  always @(*) begin
    case ({s1, s0})
      2'b00: y = i0;
      2'b01: y = i1;
      2'b10: y = i2;
      2'b11: y = i3;
    endcase
  end

endmodule

///     4×1 MUX using 2×1 MUX (Component Instantiation)
/* 
module mux4x1_st(
    input i0, i1, i2, i3,
    input s1, s0,
    output y
);

  wire w1, w2;

  mux2x1 M1 (i0, i1, s0, w1);
  mux2x1 M2 (i2, i3, s0, w2);

  mux2x1 M3 (w1, w2, s1, y);

endmodule
*/
