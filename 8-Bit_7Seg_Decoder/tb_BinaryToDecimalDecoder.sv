// Testbench for 8-bit Binary-to-Decimal Seven-Segment Decoder
module tb_BinaryToDecimalDecoder;

    logic [7:0] bin; // Test input
    logic [6:0] seg1, seg2, seg3; // Outputs

    // Instantiate the BinaryToDecimalDecoder
    BinaryToDecimalDecoder uut (
        .bin(bin),
        .seg1(seg1),
        .seg2(seg2),
        .seg3(seg3)
    );

    // Test sequence
    initial begin
        // Test all values from 0 to 255
        for (int i = 0; i < 256; i++) begin
            bin = i; // Assign the current value
            #10; // Wait for some time to observe the output
            $display("Binary: %d | Segments: %b %b %b", bin, seg1, seg2, seg3);
        end
        $finish;
    end

endmodule
