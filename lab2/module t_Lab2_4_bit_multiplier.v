module t_Lab2_4_bit_multiplier();

    wire [7:0]Product1;
    wire [7:0]Product2;
    reg  [3:0]X, Y;

    Lab2_4_bit_multiplier_adder M0(
                                   Product1,
                                   X,
                                   Y
                                    );

    Lab2_4_bit_multiplier_op M1(
                                Product2,
                                X,
                                Y
                                );

    initial
    begin
        X = 4'b1111; Y = 4'b1111;
        #100 X = 4'b0000; Y = 4'b1111;
        #100 X = 4'b1111; Y = 4'b0000;
        #100 X = 4'b1010; Y = 4'b0101; 
        #100 X = 4'b0101; Y = 4'b0101; 
        #100 X = 4'b0011; Y = 4'b1110; 
        #100 X = 4'b1011; Y = 4'b0111;
        #100 X = 4'b1001; Y = 4'b0110;
    end
        initial #800 $finish;

    initial
    begin
        $dumpfile("multiplier.vcd");
        $dumpvars;
    end
endmodule