`timescale 1ns/100ps
module D_ff_AR(Q, D, clock, reset);
    
    output Q;
    input  D, clock, reset;
    reg    Q;


    always @(posedge clock, negedge reset)
        if(!reset)Q <= 1'b0;
        else Q <= D;

endmodule