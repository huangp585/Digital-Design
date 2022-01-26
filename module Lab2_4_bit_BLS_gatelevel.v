module Lab2_4_bit_BLS_gatelevel(output [3:0]Diff, output Bout,
                                input  [3:0]X, Y, input Bin);

    wire B1, B2, B3;
    wire P0, P1, P2, P3; 
    wire G0, G1, G2, G3;
  
    // P
    xnor #(10)  (P0 , X[0] , Y[0]);
    xnor #(10)  (P1 , X[1] , Y[1]);
    xnor #(10)  (P2 , X[2] , Y[2]);
    xnor #(10)  (P3 , X[3] , Y[3]);
  
    // G

    wire x0not, x1not, x2not, x3not; 

    not  (x0not , X[0]);
    not  (x1not , X[1]);
    not  (x2not , X[2]);
    not  (x3not , X[3]);


    and #(5)  (G0 , x0not , Y[0]);
    and #(5)  (G1 , x1not , Y[1]);
    and #(5)  (G2 , x2not , Y[2]);
    and #(5)  (G3 , x3not , Y[3]);
  
    // B1
    wire b1;
    and #(5)    (b1 , P0 , Bin);
    or  #(5)    (B1 , b1 , G0);
  
    // B2
    wire b2;

    and #(5)    (b2 , P1 , B1);
    or  #(5)    (B2 , b2 , G1);
  
    // B3
    wire b3;

    and #(5)    (b3 , P2 , B2);
    or  #(5)    (B3 , b3 , G2);
  
    // Bout
    wire b4;

    and #(5)    (b4 , P3 , B3);
    or  #(5)    (Bout , b4 , G3);
  
    // Diff

    wire P0not,P1not,P2not,P3not;
    not (P0not, P0);
    not (P1not, P1);
    not (P2not, P2);
    not (P3not, P3);

    xor #(5)     (Diff[0] , P0not , Bin);
    xor #(5)     (Diff[1] , P1not , B1);
    xor #(5)     (Diff[2] , P2not , B2);
    xor #(5)     (Diff[3] , P3not , B3);
  
endmodule 