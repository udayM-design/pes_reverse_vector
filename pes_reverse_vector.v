module VectorReverse (
    input [7:0] in_vector,     // Input vector of 8 bits
    output [7:0] out_vector    // Output vector of 8 bits
);

reg [7:0] temp_vector;  // Temporary vector to hold the reversed values
integer i;             // Integer for loop counter

always @(*) begin
    for (i = 0; i < 8; i = i + 1) begin
        temp_vector[i] = in_vector[7 - i];  // Reverse the elements
    end
end

assign out_vector = temp_vector;  // Assign the reversed vector to the output

endmodule

