module tb_comparator;

    logic [7:0] a;  
    logic [7:0] b;
    logic a_greater; 
    logic a_equal; 
    logic a_less;


    comparator uut (
        .a(a),
        .b(b),
        .a_greater(a_greater),
        .a_equal(a_equal),
        .a_less(a_less)
    );

    initial begin
        // Test Case 1: a = 8'b00000000, b = 8'b00000000 (Equal)
        a = 8'b00000000; b = 8'b00000000;
        #10; // Wait for 10 time units
        assert(a_equal && !a_greater && !a_less) else $fatal("Test Case 1 Failed");

        // Test Case 2: a = 8'b00000001, b = 8'b00000000 (Greater)
        a = 8'b00000001; b = 8'b00000000;
        #10;
        assert(a_greater && !a_equal && !a_less) else $fatal("Test Case 2 Failed");

        // Test Case 3: a = 8'b00000000, b = 8'b00000001 (Less)
        a = 8'b00000000; b = 8'b00000001;
        #10;
        assert(a_less && !a_equal && !a_greater) else $fatal("Test Case 3 Failed");

        // Test Case 4: a = 8'b11111111, b = 8'b00000000 (Greater)
        a = 8'b11111111; b = 8'b00000000;
        #10;
        assert(a_greater && !a_equal && !a_less) else $fatal("Test Case 4 Failed");

        // Test Case 5: a = 8'b00000000, b = 8'b11111111 (Less)
        a = 8'b00000000; b = 8'b11111111;
        #10;
        assert(a_less && !a_equal && !a_greater) else $fatal("Test Case 5 Failed");

        // Test Case 6: a = 8'b10101010, b = 8'b10101010 (Equal)
        a = 8'b10101010; b = 8'b10101010;
        #10;
        assert(a_equal && !a_greater && !a_less) else $fatal("Test Case 6 Failed");

        // If all tests pass
        $display("All test cases passed!");
        $finish;
    end

endmodule