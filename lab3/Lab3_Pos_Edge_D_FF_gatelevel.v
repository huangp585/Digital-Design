`timescale 1ns/100ps
module Lab3_Pos_Edge_D_FF_gatelevel(output Q, NQ, 
                                    input D, clock);

    wire Sb, Rb;
    wire a1, a2;

    Lab3_SbRb_Latch_gatelevel M0(Q, NQ, Sb, Rb);
 
    nand #(2) (a1, a2, Sb);
    nand #(2) (Sb, a1, clock);
    nand #(2) (Rb, Sb, clock, a2);
    nand #(2) (a2, Rb, D);




endmodule