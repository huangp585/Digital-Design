module Lab2_4_bit_multiplier_op(output reg[7:0]Product, 
                                input [3:0]X,
                                input [3:0]Y);
    
    reg [2:0]cout;
    reg [3:0]sum1; 
    reg [3:0]sum2; 
    reg [3:0]tmp1;
    reg [3:0]tmp2;
    reg [3:0]tmp3;
    reg [3:0]tmp4; 

    //Product[0]
    always @(*)
    if ({X[0],Y[0]}==2'b11)Product[0] = 1;
    else Product[0] = 0;


    always @(*)
    begin
    
    tmp1={1'b0 , X[3]&Y[0] , X[2]&Y[0] , X[1]&Y[0]};
    tmp2={X[3]&Y[1] , X[2]&Y[1] , X[1]&Y[1] , X[0]&Y[1]};
    tmp3={X[3]&Y[2] , X[2]&Y[2] , X[1]&Y[2] , X[0]&Y[2]};   
    tmp4={X[3]&Y[3] , X[2]&Y[3] , X[1]&Y[3] , X[0]&Y[3]};

    {cout[0], sum1} = tmp1 + tmp2;
    {cout[1], sum2} = {cout[0] , sum1[3:1]} + tmp3;
    Product[7:3]= {cout[1] , sum2[3:1]} + tmp4;

    Product[1]= sum1[0];
    Product[2]= sum2[0];
    end

endmodule