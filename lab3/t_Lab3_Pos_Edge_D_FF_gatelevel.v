`timescale 1ns/100ps
module t_Lab3_Pos_Edge_D_FF_gatelevel();
    
    wire Q, NQ;
    reg  D, clock;

    Lab3_Pos_Edge_D_FF_gatelevel M0(Q, NQ, D, clock);

    initial 
    begin
        clock = 0; forever #10 clock = ~clock; 
    end

    initial 
    fork

        #0    D = 0;
        #15   D = 1;
        #35   D = 0;
        #65   D = 1;
        #88   D = 0;
        #125  D = 1;
        #130  D = 0;

    join
    initial #150 $finish;

    initial
        begin
            $dumpfile("posedgedff.vcd");
            $dumpvars;
        end
endmodule