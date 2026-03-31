`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 07:45:57
// Design Name: 
// Module Name: demux1X2
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
//DataFLow Modeling

module demux1x2_df(input d, input s, output y0, y1);

  assign y0 = d & ~s;
  assign y1 = d & s;

endmodule

///Gate Level Modeling
/*
module demux1x2_gl(input d, input s, output y0, y1);

  wire sn;

  not (sn, s);
  and (y0, d, sn);
  and (y1, d, s);

endmodule
*/
//Behavioral Modeling
/*
module demux1x2_bh(input d, input s, output reg y0, y1);

  always @(*) begin
    y0 = 0;
    y1 = 0;

    if (s == 0)
      y0 = d;
    else
      y1 = d;
  end

endmodule
*/