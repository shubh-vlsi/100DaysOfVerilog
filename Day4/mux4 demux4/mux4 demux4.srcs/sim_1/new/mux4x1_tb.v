`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2026 12:16:08
// Design Name: 
// Module Name: mux4x1_tb
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

module tb_mux4x1;

  reg i0, i1, i2, i3;
  reg s1, s0;
  wire y;

  // Change module name if needed (df/gl/bh)
  mux4x1_bh DUT (.i0(i0), .i1(i1), .i2(i2), .i3(i3),
                 .s1(s1), .s0(s0), .y(y));

  initial begin
    $display("S1 S0 | Output");
    $monitor("%b  %b  |   %b", s1, s0, y);

    i0=0; i1=1; i2=0; i3=1;

    s1=0; s0=0; #10;
    s1=0; s0=1; #10;
    s1=1; s0=0; #10;
    s1=1; s0=1; #10;

    $finish;
  end

endmodule