module tb_Shifter32;
    reg [31:0] data_in;
    reg [4:0] shift_amount;
    reg shift_direction;
    reg shift_type;
    wire [31:0] data_out;

    // Instantiate the shifter module
    Shifter32 uut (
        .data_in(data_in),
        .shift_amount(shift_amount),
        .shift_direction(shift_direction),
        .shift_type(shift_type),
        .data_out(data_out)
    );

    // Expected result for comparison
    reg [31:0] expected_data_out;

    initial begin
        // Test Case 1: Left Logical Shift
        data_in = 32'hA5A5A5A5;  // Arbitrary test data
        shift_amount = 5'd4;      // Shift by 4
        shift_direction = 0;      // Left shift
        shift_type = 0;           // Not used for left shift
        expected_data_out = data_in << shift_amount;
        #10;
        $display("Test Case 1: Left Logical Shift");
        if (data_out == expected_data_out)
            $display("PASS");
        else
            $display("FAIL: Expected %h, Got %h", expected_data_out, data_out);

        // Test Case 2: Right Logical Shift
        data_in = 32'hA5A5A5A5;
        shift_amount = 5'd8;
        shift_direction = 1;      // Right shift
        shift_type = 0;           // Logical shift
        expected_data_out = data_in >> shift_amount;
        #10;
        $display("Test Case 2: Right Logical Shift");
        if (data_out == expected_data_out)
            $display("PASS");
        else
            $display("FAIL: Expected %h, Got %h", expected_data_out, data_out);

        // Test Case 3: Right Arithmetic Shift (positive number)
        data_in = 32'h7FFFFFFF;    // MSB is 0, behaves as logical
        shift_amount = 5'd8;
        shift_direction = 1;      // Right shift
        shift_type = 1;           // Arithmetic shift
        expected_data_out = data_in >> shift_amount;
        #10;
        $display("Test Case 3: Right Arithmetic Shift (positive number)");
        if (data_out == expected_data_out)
            $display("PASS");
        else
            $display("FAIL: Expected %h, Got %h", expected_data_out, data_out);

        // Test Case 4: Right Arithmetic Shift (negative number)
        data_in = 32'hF0000000;    // MSB is 1, should fill with 1s
        shift_amount = 5'd4;
        shift_direction = 1;      // Right shift
        shift_type = 1;           // Arithmetic shift
        expected_data_out = (data_in >> shift_amount) | (32'hFFFFFFFF << (32 - shift_amount));
        #10;
        $display("Test Case 4: Right Arithmetic Shift (negative number)");
        if (data_out == expected_data_out)
            $display("PASS");
        else
            $display("FAIL: Expected %h, Got %h", expected_data_out, data_out);

        $stop;
    end
endmodule
