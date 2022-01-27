module Lab2_4_bit_multiplier_adder(output [7:0]Product, 
                                    input [3:0]X,
                                    input [3:0]Y);

    wire  [3:0] a1, a2, a3, a4;
    wire  [3:0]sum1, sum2, sum3;
    wire  c_out1, c_out2, c_out3;
        
   
    //individual product
    assign 
    a1[0] = X[0]&Y[0],
    a1[1] = X[1]&Y[0],
    a1[2] = X[2]&Y[0],
    a1[3] = X[3]&Y[0],
    a2[0] = X[0]&Y[1],
    a2[1] = X[1]&Y[1],
    a2[2] = X[2]&Y[1],
    a2[3] = X[3]&Y[1],
    a3[0] = X[0]&Y[2],
    a3[1] = X[1]&Y[2],
    a3[2] = X[2]&Y[2],
    a3[3] = X[3]&Y[2],
    a4[0] = X[0]&Y[3],
    a4[1] = X[1]&Y[3],
    a4[2] = X[2]&Y[3],
    a4[3] = X[3]&Y[3];
  
    //first time addition
    binary_adder M1(sum1, c_out1, {1'b0,a1[3:1]}, a2, 1'b0);

    //Second time addition
    binary_adder M2(sum2, c_out2, {c_out1,sum1[3:1]}, a3, 1'b0);

    //third time addition
    binary_adder M3(sum3, c_out3, {c_out2,sum2[3:1]}, a4, 1'b0);

    assign Product = {c_out3, sum3, sum2[0], sum1[0], a1[0]};

endmodule