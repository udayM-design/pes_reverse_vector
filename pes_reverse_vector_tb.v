`timescale 1ns / 1ns  // Define simulation timescale

module reverse_vector_tb;

    // Inputs
    reg [7:0] in_vector;
    
    // Outputs
    wire [7:0] out_vector;

    // Instantiate the VectorReverse module
    VectorReverse uut (
        .in_vector(in_vector),
        .out_vector(out_vector)
    );

    // Clock generation
    reg clk = 0;

    always begin
        #5 clk = ~clk;  // Toggle the clock every 5 time units
    end

    // Test stimulus
    initial begin
        // Initialize inputs
        $dumpfile("reverse_vector_tb.vcd");
        $dumpvars(0,reverse_vector_tb);
        in_vector = 8'b11011010;

        // Apply inputs and observe outputs
        #10;

        // Display the output vector


        // Finish simulation
        $finish;
    end

endmodule

