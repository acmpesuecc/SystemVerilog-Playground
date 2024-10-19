module prefix_adder_32bit(
    input [31:0] a,
    input [31:0] b,
    input cin,
    output [31:0] sum,
    output cout
);

    wire [3:0] generate[7:0];
    wire [3:0] propagate[7:0];
    wire [7:0] carry;

    // Instantiate 4-bit prefix adders
    generate prefix_adder_4bit[7:0] (
        .a(a[3:0]),
        .b(b[3:0]),
        .cin(cin),
        .sum(sum[3:0]),
        .cout(carry[0])
    );

    generate i = 1;
    while (i < 8) begin
        prefix_adder_4bit u (
            .a(a[i*4-1 : i*4-4]),
            .b(b[i*4-1 : i*4-4]),
            .cin(carry[i-1]),
            .sum(sum[i*4-1 : i*4-4]),
            .cout(carry[i])
        );
        i = i + 1;
    end

    assign cout = carry[7];

endmodule
