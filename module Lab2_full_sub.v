module Lab2_full_sub( output D, B,
                      input  x, y, z );
    wire d1,
         b1, b2;

    Lab2_half_sub_gatelevel M0(d1, b1, x, y);
    Lab2_half_sub_gatelevel M1(D, b2, d1, z);
         
    or #(5) (B, b2, b1);
         
endmodule