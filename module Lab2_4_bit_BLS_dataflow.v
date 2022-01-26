module Lab2_4_bit_BLS_dataflow(output [3:0]Diff, output Bout,
                                input  [3:0]X, Y, input Bin);
    wire
        G0, G1, G2, G3,
        P0, P1, P2, P3;


    assign
    G0 = (~(X[0]))&(Y[0]),
    G1 = (~(X[1]))&(Y[1]),
    G2 = (~(X[2]))&(Y[2]),
    G3 = (~(X[3]))&(Y[3]),
    
    P0 = (X[0])&(Y[0])|(~(X[0]))&(~(Y[0])),
    P1 = (X[1])&(Y[1])|(~(X[1]))&(~(Y[1])),
    P2 = (X[2])&(Y[2])|(~(X[2]))&(~(Y[2])),
    P3 = (X[3])&(Y[3])|(~(X[3]))&(~(Y[3])),

    B1 = G0|(P0)&(Bin),
    B2 = G1|(P1)&(B1),
    B3 = G2|(P2)&(B2),
    Bout = G3|(P3)&(B3),

    Diff[0] = (~(P0))^(Bin),
    Diff[1] = (~(P1))^(B1), 
    Diff[2] = (~(P2))^(B2), 
    Diff[3] = (~(P3))^(B3); 




endmodule