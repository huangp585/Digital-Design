module t_Lab2_full_sub();
    
    wire D, B;
    reg  x, y, z;

    Lab2_full_sub M(D, B, x, y, z);

    initial 
    begin
        {x, y, z} = 3'b000;
        repeat(7)
        #(40) {x, y, z} = {x, y, z} + 3'b001;  
    end
    initial #(350) $finish;

    initial 
    begin
        $dumpfile("Lab2_full_sub.vcd");
        $dumpvars;
    end

endmodule