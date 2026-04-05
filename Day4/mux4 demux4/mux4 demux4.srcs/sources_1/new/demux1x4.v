`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2026 12:30:45
// Design Name: 
// Module Name: demux1x4
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


///     Dataflow Modeling
/*
module demux1x4_df(
    input d,
    input s1, s0,
    output y0, y1, y2, y3
);

  assign y0 = d & ~s1 & ~s0;
  assign y1 = d & ~s1 &  s0;
  assign y2 = d &  s1 & ~s0;
  assign y3 = d &  s1 &  s0;

endmodule
*/
///     Gate-Level Modeling
/*
module demux1x4_gl(
    input d,
    input s1, s0,
    output y0, y1, y2, y3
);

  wire s1n, s0n;

  not (s1n, s1);
  not (s0n, s0);

  and (y0, d, s1n, s0n);
  and (y1, d, s1n, s0);
  and (y2, d, s1,  s0n);
  and (y3, d, s1,  s0);

endmodule
*/
///      Behavioral Modeling
 /*
 module demux1x4_bh(
    input d,
    input s1, s0,
    output reg y0, y1, y2, y3
);

  always @(*) begin
    // default all outputs = 0
    {y0, y1, y2, y3} = 4'b0000;

    case ({s1, s0})
      2'b00: y0 = d;
      2'b01: y1 = d;
      2'b10: y2 = d;
      2'b11: y3 = d;
    endcase
  end

endmodule
*/
///      Component Instantiation (Structural)

module demux1x4_st(
    input d,
    input s1, s0,
    output y0, y1, y2, y3
);

  wire w1, w2;

  demux1x2 D1 (d, s1, w1, w2);

  demux1x2 D2 (w1, s0, y0, y1);
  demux1x2 D3 (w2, s0, y2, y3);

endmodule
