`timescale 1ns/100ps
module t_Lab3_SbRb_Latch_gatelevel();

    wire Q, NQ;
    reg  Sb, Rb;

    Lab3_SbRb_Latch_gatelevel M0(Q, NQ, Sb, Rb);

    initial
    begin

        #0   Sb=1'b1; Rb=1'b0;
        #10  Sb=1'b1; Rb=1'b1;
        #10  Sb=1'b0; Rb=1'b1;
        #10  Sb=1'b1; Rb=1'b1;
        #10  Sb=1'b0; Rb=1'b0;
        #10  Sb=1'b1; Rb=1'b1;
        #10  Sb=1'b1; Rb=1'b0;

    end

    initial #70 $finish;

    initial
        begin
            $dumpfile("sbrblatch.vcd");
            $dumpvars;
        end

endmodule