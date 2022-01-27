module Lab2_4_bit_RBS(output[3:0]Diff, output Bout,
                      input [3:0]X, Y, input Bin);
    
    wire w0, w1, w2;

    Lab2_full_sub M0(Diff[0], w0, X[0], Y[0], Bin);
    Lab2_full_sub M1(Diff[1], w1, X[1], Y[1], w0);
    Lab2_full_sub M2(Diff[2], w2, X[2], Y[2], w1);
    Lab2_full_sub M3(Diff[3], Bout, X[3], Y[3], w2);


endmodule