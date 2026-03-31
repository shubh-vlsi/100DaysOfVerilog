`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 07:42:29
// Design Name: 
// Module Name: mux2X1
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

///dataflow
/*
module mux2x1_df(input i0, i1, input s, output y);

  assign y = (~s & i0) | (s & i1);

endmodule
*/

///Gate Level

module mux2x1_gl(input i0, i1, input s, output y);

  wire sn, w1, w2;

  not (sn, s);
  and (w1, sn, i0);
  and (w2, s, i1);
  or  (y, w1, w2);

endmodule

//Behavioral Modeling

/*
module mux2x1_bh(input i0, i1, input s, output reg y);

  always @(*) begin
    if (s == 0)
      y = i0;
    else
      y = i1;
  end

endmodule
*/
