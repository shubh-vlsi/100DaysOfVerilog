`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2026 12:33:27
// Design Name: 
// Module Name: tb_demux1x4
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

module tb_demux1x4;

  reg d;
  reg s1, s0;
  wire y0, y1, y2, y3;

 
  demux1x4_st DUT (.d(d), .s1(s1), .s0(s0),
                   .y0(y0), .y1(y1), .y2(y2), .y3(y3));

  initial begin
    $display("S1 S0 | Y0 Y1 Y2 Y3");

    d = 1;

    s1=0; s0=0; #10;
    s1=0; s0=1; #10;
    s1=1; s0=0; #10;
    s1=1; s0=1; #10;

    $finish;
  end

endmodule