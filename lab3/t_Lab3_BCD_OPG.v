`timescale 1ns/100ps
module t_Lab3_BCD_OPG();

    wire z0;
    wire z1;
    reg  x;
    reg clock;
    reg reset;
    

    Lab3_BCD_OPG_state_diagram M0(z0, 
                                  x, clock, reset);
    
    Lab3_BCD_OPG_structure M1(z1,
                              x, clock, reset);
                               
    initial 
        begin
            clock = 1'b0; 
            forever #50 clock = ~clock; 
        end


    initial 
        fork

            reset = 1'b0;
            #10 reset = 1'b1;
            #25 x = 1'b1;
            #125 x = 1'b0;
            #525 x = 1'b1;
            #625 x = 1'b0;
            #700 reset = 1'b0;
            #710 reset = 1'b1;
            #825 x = 1'b1;
            #1025 x = 1'b0;
            #1425 x = 1'b1;
            #1525 x = 1'b0;
            #1725 x = 1'b1;

        join 
    
    initial #2000 $finish;

    initial
    begin
        $dumpfile("bcdopg.vcd");
        $dumpvars;
    end
endmodule