`timescale 1ns/100ps
module Lab3_BCD_OPG_state_diagram (output z, 
                                   input x, clock, reset);
    
    reg [2:0] state;
    reg [2:0] next_state;
    reg z;
    parameter [2:0]S0 = 3'b000, S1 = 3'b001, 
                   S2 = 3'b010, S3 = 3'b011,
                   S4 = 3'b100, S5 = 3'b101, 
                   S6 = 3'b110, S7 = 3'b111;


    always @(posedge clock, negedge reset)
            if (~reset)
                state <= S0;
            else       
                state <= next_state;

    always @(*)
        case (state)
            S0 : if(x)
                  next_state = S2;  
                 else 
                  next_state = S1;

            S1 : if(x)
                  next_state = S4; 
                 else next_state = S3;  
            S2 : if(~x)next_state = S5;  
            S3 : if(x) next_state = S7;  
                 else next_state = S6;   
            S4 : if(x)next_state = S6;  
                 else next_state = S7;   
            S5 : if(~x)next_state = S7;  
            S6 : next_state = S0;   
            S7 : next_state = S0;  
           endcase
        

    always @(state, x)
    
        case (state)
            S0, S1, S2, S3, S4 : z = 1'b0; 
            S6 : z = ~x;
            S5, S7 : z = x;
        endcase


endmodule