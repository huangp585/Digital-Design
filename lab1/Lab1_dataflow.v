module Lab1_dataflow(F, A, B, C, D);
    output F;
    input  A, B, C, D;
    wire   w1, w2, w3, w4, w5, w6, w7, w8;

    assign F= ((!(A && C)) || (B && (!D))) && (A ||((!B) && D));

endmodule