`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2026 15:10:37
// Design Name: 
// Module Name: full_sub_tb
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


module full_sub_tb();
  reg a, b, bin;
  wire diff, bout;
  full_sub_bh uut (
    .a(a),
    .b(b),
    .bin(bin),
    .diff(diff),
    .bout(bout)
  );

  initial begin
    $monitor("%b %b  %b  |  %b    %b", a, b, bin, diff, bout);
    a=0; b=0; bin=0; #10;
    a=0; b=0; bin=1; #10;
    a=0; b=1; bin=0; #10;
    a=0; b=1; bin=1; #10;
    a=1; b=0; bin=0; #10;
    a=1; b=0; bin=1; #10;
    a=1; b=1; bin=0; #10;
    a=1; b=1; bin=1; #10;
    $finish;
  end
endmodule