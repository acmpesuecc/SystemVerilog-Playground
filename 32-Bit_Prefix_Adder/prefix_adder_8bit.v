module prefix_adder_8bit(
    input [7:0] a,
    input [7:0] b,
    input cin,
    output [7:0] sum,
    output cout
);

    wire [3:0] generate[1:0];
    wire [3:0] propagate[1:0];
    wire [1:0] carry;

    // Instantiate 4-bit prefix adders
    prefix_adder_4bit u1 (
        .a(a[3:0]),
        .b(b[3:0]),
        .cin(cin),
        .sum(sum[3:0]),
        .cout(carry[0])
    );

    prefix_adder_4bit u2 (
        .a(a[7:4]),
        .b(b[7:4]),
        .cin(carry[0]),
        .sum(sum[7:4]),
        .cout(carry[1])
    );

    // Generate and propagate signals for the entire 8-bit adder
    generate[0] = u1.generate[3];
    propagate[0] = u1.propagate[3];
    generate[1] = u2.generate[3] | (propagate[0] & u2.propagate[3] & u1.generate[3]);
    propagate[1] = u2.propagate[3] | (propagate[0] & u2.propagate[3]);

    // Carry output
    cout = generate[1] | (propagate[1] & generate[0]);

endmodule
