`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2026 13:51:11
// Design Name: 
// Module Name: full_adder
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

///data flow
/*
module full_adder_df(input a, b, cin, output sum, cout);
  assign sum  = a ^ b ^ cin;
  assign cout = (a & b) | (b & cin) | (a & cin);
endmodule
*/
//gate leval

module full_adder_gl(input a, b, cin, output sum, cout);
  wire w1, w2, w3;

  xor (w1, a, b);
  xor (sum, w1, cin);

  and (w2, a, b);
  and (w3, w1, cin);
  or  (cout, w2, w3);
endmodule
//behavioral
/*
module full_adder_bh(input a, b, cin, output reg sum, cout);
  always @(*) begin
    sum  = a ^ b ^ cin;
    cout = (a & b) | (b & cin) | (a & cin);
  end
endmodule
*/

//structural

/*
module full_adder_struct(
    input a, b, cin,
    output sum, cout
);

  wire s1, c1, c2;

  half_adder_gl HA1 (a, b, s1, c1);
  half_adder_gl HA2 (s1, cin, sum, c2);

  assign cout = c1 | c2;

endmodule
*/