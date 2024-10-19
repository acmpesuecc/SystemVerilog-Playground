// tb_decoder_5_to_32.v

module tb_decoder_5_to_32;

    reg [4:0] in;          // Input to the decoder
    wire [31:0] out;       // Output from the decoder

    // Instantiate the decoder
    decoder_5_to_32 uut (
        .in(in),
        .out(out)
    );

    // Task to check output
    task check_output;
        input [4:0] input_val;
        reg [31:0] expected_output;
        begin
            // Set the expected output based on input
            expected_output = 32'b0;
            expected_output[input_val] = 1'b1;

            // Compare the actual output with the expected output
            if (out !== expected_output) begin
                $display("Error: Input = %b, Expected Output = %b, Actual Output = %b", input_val, expected_output, out);
            end else begin
                $display("Pass: Input = %b, Output = %b", input_val, out);
            end
        end
    endtask

    initial begin
        // Apply test cases
        for (in = 0; in < 32; in = in + 1) begin
            #5;
            check_output(in);
        end
        $finish;
    end

endmodule
