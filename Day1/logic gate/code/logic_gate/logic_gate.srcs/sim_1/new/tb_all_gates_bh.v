`timescale 1ns / 1ps
module tb_all_gates_bh;
  reg a, b;
  wire and_out, or_out, not_out;
  wire nand_out, nor_out, xor_out, xnor_out;
  all_gates_bh DUT (
    .a(a),
    .b(b),
    .and_out(and_out),
    .or_out(or_out),
    .not_out(not_out),
    .nand_out(nand_out),
    .nor_out(nor_out),
    .xor_out(xor_out),
    .xnor_out(xnor_out)
  );
  initial begin
    $monitor("%4t | %b %b |  %b   %b   %b    %b    %b   %b    %b",
              $time, a, b, and_out, or_out, not_out,
              nand_out, nor_out, xor_out, xnor_out);
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    #10;
    $finish;
end
endmodule

