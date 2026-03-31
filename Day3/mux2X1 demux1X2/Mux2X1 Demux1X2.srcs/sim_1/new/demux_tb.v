`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 07:58:46
// Design Name: 
// Module Name: demux_tb
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


module demux_tb();
  reg d, s;
  wire y0, y1;

  demux1x2_df DUT (.d(d), .s(s), .y0(y0), .y1(y1));

  initial begin
    $monitor("%b %b | %b  %b", s, d, y0, y1);

    d=1;

    s=0; #10;
    s=1; #10;

    d=0;

    s=0; #10;
    s=1; #10;

    $finish;
  end

endmodule
