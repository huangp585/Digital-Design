module Lab2_4_bit_BLS_behavioral(
    output reg [3:0]Diff, output reg Bout,
    input  [3:0]X, Y, input Bin
    );
    reg G0, G1, G2, G3;
    reg P0, P1, P2, P3;
    reg B1, B2, B3;

    always @(*)
    if(X[0]<Y[0])G0=1;
    else G0=0;

    always @(*)
    if(X[1]<Y[1])G1=1;
    else G1=0;

    always @(*)
    if(X[2]<Y[2])G2=1;
    else G2=0;

    always @(*)
    if(X[3]<Y[3])G3=1;
    else G3=0;

    always @(*)
    if(X[0]==Y[0])P0=1;
    else P0=0;

    always @(*)
    if(X[1]==Y[1])P1=1;
    else P1=0;

    always @(*)
    if(X[2]==Y[2])P2=1;
    else P2=0;

    always @(*)
    if(X[3]==Y[3])P3=1;
    else P3=0;


    always @(*)
    begin

    B1 = G0|(P0)&(Bin);
    B2 = G1|(P1)&(B1);
    B3 = G2|(P2)&(B2);
    Bout = G3|(P3)&(B3);

    Diff[0] = (~(P0)^Bin);
    Diff[1] = (~(P1)^B1); 
    Diff[2] = (~(P2)^B2); 
    Diff[3] = (~(P3)^B3);  

    end


 




endmodule