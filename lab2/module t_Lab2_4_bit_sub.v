module t_Lab2_4_bit_sub();
    
    wire [3:0]Diff1;
    wire [3:0]Diff2; 
    wire [3:0]Diff3; 
    wire [3:0]Diff4;
    wire Bout1; 
    wire Bout2; 
    wire Bout3;
    wire Bout4;
    reg  [3:0]X;
    reg  [3:0]Y;
    reg  Bin;

    Lab2_4_bit_RBS M(
                     Diff1, 
                     Bout1,
                     X, 
                     Y, 
                     Bin
                    );
    
    Lab2_4_bit_BLS_gatelevel M0(
                                Diff2, 
                                Bout2,
                                X, 
                                Y, 
                                Bin
                                );

    Lab2_4_bit_BLS_dataflow  M1(
                                Diff3, 
                                Bout3,
                                X, 
                                Y, 
                                Bin
                                );

    Lab2_4_bit_BLS_behavioral M2(
                                Diff4, 
                                Bout4,
                                X, 
                                Y, 
                                Bin
                                );

    
    initial
    begin
        X = 4'b1111; Y = 4'b1111; Bin = 1'b1;
        #100 X = 4'b0000; Y = 4'b1111; Bin = 1'b0;
        #100 X = 4'b0101; Y = 4'b1010; Bin = 1'b1;
        #100 X = 4'b1000; Y = 4'b1100; Bin = 1'b1;
        #100 X = 4'b0101; Y = 4'b0101; Bin = 1'b0;
        #100 X = 4'b1011; Y = 4'b1011; Bin = 1'b1;
        #100 X = 4'b0011; Y = 4'b1100; Bin = 1'b1;
        #100 X = 4'b1001; Y = 4'b0110; Bin = 1'b1;
    end
    initial #800 $finish;

    initial
    begin
        $dumpfile("Lab2_4_bit_sub.vcd");
        $dumpvars;
    end

endmodule