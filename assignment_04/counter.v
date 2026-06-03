module up_down_counter(
    output reg [3:0] count, 
    input clk,              
    input rst,             
    input mode             
);

    
    always @(posedge clk) begin
        if (rst) begin
            count <= 4'b0000;  
        end
        else begin
            if (mode)
                count <= count + 1'b1;
            else
                count <= count - 1'b1; 
        end
    end

endmodule