module VectorReverse (
    input clk,
    input [7:0] in_vector,     // Input vector of 8 bits
    output reg [7:0] out_vector    // Output vector of 8 bits
);

reg [7:0] temp_vector;  // Temporary vector to hold the reversed values


always @(posedge clk) begin
    temp_vector[0] = in_vector[7];  // Reverse the elements
    temp_vector[1] = in_vector[6];
    temp_vector[2] = in_vector[5];
    temp_vector[3] = in_vector[4];
    temp_vector[4] = in_vector[3];
    temp_vector[5] = in_vector[2];
    temp_vector[6] = in_vector[1];
    temp_vector[7] = in_vector[0];
    out_vector <= temp_vector;
end


endmodule
