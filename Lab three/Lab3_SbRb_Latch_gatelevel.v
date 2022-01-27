`timescale 1ns/100ps
module Lab3_SbRb_Latch_gatelevel(output Q, NQ, 
                                 input Sb, Rb);

    nand #(2) (Q, Sb, NQ);
    nand #(2) (NQ, Rb, Q);

endmodule