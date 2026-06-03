module display(
    output reg [6:0] a,
    input [3:0] x     
);

   
    always @(*) begin
        case(x)
           
            4'b0000: a = 7'b0111111; 
            4'b0001: a = 7'b0000110;
            4'b0010: a = 7'b1011011;
            4'b0011: a = 7'b1001111;
            4'b0100: a = 7'b1100110; 
            4'b0101: a = 7'b1101101; 
            4'b0110: a = 7'b1111101; 
            4'b0111: a = 7'b0000111; 
            4'b1000: a = 7'b1111111; 
            4'b1001: a = 7'b1101111; 
            
            default: a = 7'b0000000; 
        endcase
    end

endmodule