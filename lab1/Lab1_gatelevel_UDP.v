//Verilog model: Circuit instantiation of Lab1_UDP
module Lab1_gatelevel_UDP(F, A, B, C, D);

    output F;
    input  A, B, C, D;
    wire   w3, w6, w7, w8;

    Lab1_UDP M0(w3, A, B, C, D); 
    and    G1(w7, w6, D);
    and    G2(F, w3, w8);

    not    G6(w6, B);

    or     G9(w8, w7, A);
endmodule    
