primitive Lab1_UDP(w3, A, B, C, D);
    output w3;
    input  A, B, C, D;

//Truth table for w3= f(A, B, C, D)= Σm(0,1,2,3,4,5,6,7,8,9,12,13,14);

    table
        // A B C D : w3 //Column haeder comment
           0 0 0 0 : 1;
           0 0 0 1 : 1;
           0 0 1 0 : 1;
           0 0 1 1 : 1;
           0 1 0 0 : 1;
           0 1 0 1 : 1;
           0 1 1 0 : 1;
           0 1 1 1 : 1;
           1 0 0 0 : 1;
           1 0 0 1 : 1;
           1 0 1 0 : 0;
           1 0 1 1 : 0;
           1 1 0 0 : 1;
           1 1 0 1 : 1;
           1 1 1 0 : 1;
           1 1 1 1 : 0;
    endtable

endprimitive