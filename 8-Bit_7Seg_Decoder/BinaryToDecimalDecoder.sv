// 8-bit Binary-to-Decimal Seven-Segment Decoder
module BinaryToDecimalDecoder (
    input logic [7:0] bin, // 8-bit binary input
    output logic [6:0] seg1, // Segments for the first digit (units)
    output logic [6:0] seg2, // Segments for the second digit (tens)
    output logic [6:0] seg3  // Segments for the third digit (hundreds)
);

    logic [3:0] digit0; // Units digit
    logic [3:0] digit1; // Tens digit
    logic [3:0] digit2; // Hundreds digit

    // Assign each digit based on the binary input
    assign digit0 = bin % 10; // Units
    assign digit1 = (bin / 10) % 10; // Tens
    assign digit2 = bin / 100; // Hundreds

    // Instantiate the 7-segment decoders
    SegDecoder u1 (.bin(digit0), .seg(seg1));
    SegDecoder u2 (.bin(digit1), .seg(seg2));
    SegDecoder u3 (.bin(digit2), .seg(seg3));

endmodule
