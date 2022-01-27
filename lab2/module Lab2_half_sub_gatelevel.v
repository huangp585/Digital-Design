module Lab2_half_sub_gatelevel(output D, B, 
                               input x, y);
    
    wire x_not;

    xor  #(10) (D, x, y);
    and  #(5)  (B, x_not, y);
    not        (x_not, x);

endmodule