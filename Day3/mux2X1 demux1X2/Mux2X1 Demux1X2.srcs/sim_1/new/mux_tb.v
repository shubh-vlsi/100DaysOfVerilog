`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 07:49:14
// Design Name: 
// Module Name: mux_tb
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


module mux_tb;

  reg i0, i1, s;
  wire y;

  mux2x1_gl DUT (.i0(i0), .i1(i1), .s(s), .y(y));

  initial begin
    $monitor("%b |  %b  %b | %b", s, i0, i1, y);

    i0=0; i1=1;

    s=0; #10;
    s=1; #10;

    i0=1; i1=0;

    s=0; #10;
    s=1; #10;

    $finish;
  end

endmodule
