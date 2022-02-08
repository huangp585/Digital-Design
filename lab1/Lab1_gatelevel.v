module Lab1_gatelevel(F, A, B, C, D);
    output F;
    input  A, B, C, D;
    wire   w1, w2, w3, w4, w5, w6, w7, w8;

    and    G1(w1, A, C);
    and    G2(w5, B, w4);
    and    G3(w7, w6, D);
    and    G4(F, w3, w8);

    not    G5(w4, D);
    not    G6(w6, B);
    not    G7(w2, w1);

    or     G8(w3, w2, w5);
    or     G9(w8, w7, A);

endmodule