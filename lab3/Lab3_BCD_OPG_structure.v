`timescale 1ns/100ps
module Lab3_BCD_OPG_structure (output z,
                               input x, clock, reset);


    wire DA, DB, DC;
    wire A, B, C;

    assign DA = ((~(A))&B)|(A&(~(B)))|((~(A))&C&x);
    assign DB = (A&(~(B)))|((~(B))&(~(C))&x)|((~(A))&B&C)|((~(A))&C&(~(x)));
    assign DC = ((~(B))&(~(x)))|((~(A))&(~(C))&(~(x)))|((~(A))&B&x);

    assign z = (A&B&(~(C))&(~(x)))|(A&C&x);

    D_ff_AR M0(A, DA, clock, reset);
    D_ff_AR M1(B, DB, clock, reset);
    D_ff_AR M2(C, DC, clock, reset);

endmodule