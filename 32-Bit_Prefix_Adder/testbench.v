module prefix_adder_tb;

    reg [31:0] a, b;
    reg cin;
    wire [31:0] sum;
    wire cout;

    prefix_adder_32bit uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        // Generate random test cases
        for (int i = 0; i < 1000; i++) begin
            a = $random;
            b = $random;
            cin = $random % 2;

            // Simulate the adder
            #10;

            // Check the results
            if (sum != (a + b + cin)) begin
                $display("Error: Incorrect sum for a=%d, b=%d, cin=%d", a, b, cin);
                $finish;
            end
        end

        $display("Test passed!");
    end

endmodule
