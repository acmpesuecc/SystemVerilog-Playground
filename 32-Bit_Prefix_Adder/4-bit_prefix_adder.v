module prefix_adder_4bit(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);

    wire [3:0] generate, propagate;

    generate[0] = a[0] & b[0];
    propagate[0] = a[0] | b[0];
    generate[1] = a[1] & b[1] | (propagate[0] & a[0] & b[1]);
    propagate[1] = a[1] | b[1] | (propagate[0] & (a[0] | b[1]));
    generate[2] = a[2] & b[2] | (propagate[1] & a[1] & b[2]);
    propagate[2] = a[2] | b[2] | (propagate[1] & (a[1] | b[2]));
    generate[3] = a[3] & b[3] | (propagate[2] & a[2] & b[3]);
    propagate[3] = a[3] | b[3] | (propagate[2] & (a[2] | b[3]));
      
    sum[0] = a[0] ^ b[0] ^ cin;
    sum[1] = a[1] ^ b[1] ^ propagate[0] ^ cin;
    sum[2] = a[2] ^ b[2] ^ propagate[1] ^ cin;
    sum[3] = a[3] ^ b[3] ^ propagate[2] ^ cin;

    cout = generate[3] | (propagate[3] & generate[2]) | (propagate[3] & propagate[2] & generate[1]) | (propagate[3] & propagate[2] & propagate[1] & generate[0]);

endmodule
