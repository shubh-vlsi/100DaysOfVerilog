`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2026 14:31:16
// Design Name: 
// Module Name: full_sub
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

//Dataflow
/*
module full_sub_df(input a, b, bin, output diff, borrow);
  assign diff   = a ^ b ^ bin;
  assign borrow = (~a & b) | (~(a ^ b) & bin);
endmodule
*/

//Gate-Level

/*module full_sub_gl(input a, b, bin, output diff, borrow);
  wire w1, w2, w3, na;

  xor (w1, a, b);
  xor (diff, w1, bin);

  not (na, a);
  and (w2, na, b);
  not (w3, w1);
  and (w3, w3, bin);

  or (borrow, w2, w3);
endmodule
*/

//Behavioral


module full_sub_bh(input a, b, bin, output reg diff, borrow);
  always @(*) begin
    diff   = a ^ b ^ bin;
    borrow = (~a & b) | (~(a ^ b) & bin);
  end
endmodule


//Structural (Using Component Instantiation)
/*
module full_subtractor_struct(
  input a, b, bin,
  output diff, bout
);
  wire d1, b1, b2;
  half_sub_df hs1 (
    .a(a),
    .b(b),
    .diff(d1),
    .borrow(b1)
  );
  half_sub_df hs2 (.a(d1), .b(bin), .diff(diff), .borrow(b2) );
  assign bout = b1 | b2;
endmodule
*/