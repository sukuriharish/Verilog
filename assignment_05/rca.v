module rca #(parameter n=4) (
    output [n-1:0] y, 
    output cout,
    input [n-1:0] a, b,
    input cin
);
    wire [n:0] c; // Internal carry wires
    assign c[0] = cin;
    assign cout = c[n];

    genvar i;
    generate
        for (i = 0; i < n; i = i + 1) begin : adder_block
            // Continuous assignment inside generate
            assign y[i] = a[i] ^ b[i] ^ c[i];
            assign c[i+1] = (a[i] & b[i]) | (c[i] & (a[i] ^ b[i]));
        end
    endgenerate
endmodule