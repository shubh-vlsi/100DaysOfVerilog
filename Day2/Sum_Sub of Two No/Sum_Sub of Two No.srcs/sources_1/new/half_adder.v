`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2026 13:44:22
// Design Name: 
// Module Name: half_adder
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
//////////////////////////////////////////////////////////////////////////////
///data flow
/*
module half_adder_df(input a, b, output sum, carry);
  assign sum   = a ^ b;
  assign carry = a & b;
endmodule 
*/
//gate leval

module half_adder_gl(input a, b, output sum, carry);
  xor (sum, a, b);
  and (carry, a, b);
endmodule

//behavioral
/*
module half_adder_bh(input a, b, output reg sum, carry);
  always @(*) begin
    sum   = a ^ b;
    carry = a & b;
  end
endmodule
*/