module universal_register (
    input clk, reset,
    input [1:0] mode, 
    input [3:0] par_in,
    input shift_r, shift_l,
    output reg [3:0] par_out
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            par_out <= 4'b0000;
        end else begin
            case (mode)
                2'b01:   par_out <= {shift_r, par_out[3:1]}; // Shift Right
                2'b10:   par_out <= {par_out[2:0], shift_l}; // Shift Left
                2'b11:   par_out <= par_in;                  // Parallel Load
                default: par_out <= par_out;                 // Covers Hold and 'X' states
            endcase
        end
    end
endmodule