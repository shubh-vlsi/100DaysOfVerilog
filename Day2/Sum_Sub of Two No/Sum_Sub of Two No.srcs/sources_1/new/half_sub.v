`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2026 14:28:56
// Design Name: 
// Module Name: half_sub
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

module half_sub_df(input a, b, output diff, borrow);
  assign diff   = a ^ b;
  assign borrow = (~a) & b;
endmodule
//Gate-Level
/* 
module half_sub_gl(input a, b, output diff, borrow);
  xor (diff, a, b);
  not (na, a);
  and (borrow, na, b);
endmodule
*/

//Behavioral
/*module half_sub_bh(input a, b, output reg diff, borrow);
  always @(*) begin
    diff   = a ^ b;
    borrow = (~a) & b;
  end
endmodule
*/
