module t_Lab2_half_sub();
    wire D, B;
    reg  x, y;

    Lab2_half_sub_gatelevel M(D, B, x, y);

    initial
    begin
    x=1'b0; y=1'b0;
    #20  x=1'b0; y=1'b1; 
    #20  x=1'b1; y=1'b0; 
    #20  x=1'b1; y=1'b1;
        
    end
    
    initial #100 $finish;

    initial begin
        $dumpfile("Lab2_half_sub.vcd");
        $dumpvars;
    end



endmodule