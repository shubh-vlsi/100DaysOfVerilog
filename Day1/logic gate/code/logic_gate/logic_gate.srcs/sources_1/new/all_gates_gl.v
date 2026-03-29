`timescale 1ns / 1ps
module all_gates_gl(
    input a, b,
    output and_out,
    output or_out,
    output not_out,
    output nand_out,
    output nor_out,
    output xor_out,
    output xnor_out
);

  and  G1 (and_out, a, b);
  or   G2 (or_out, a, b);
  not  G3 (not_out, a);
  nand G4 (nand_out, a, b);
  nor  G5 (nor_out, a, b);
  xor  G6 (xor_out, a, b);
  xnor G7 (xnor_out, a, b);

endmodule
