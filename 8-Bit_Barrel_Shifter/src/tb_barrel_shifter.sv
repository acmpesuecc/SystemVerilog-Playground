module tb_barrel_shifter;

    logic [7:0] data_in;               // Test input data
    logic [2:0] shift_amount;           // Shift amount
    logic shift_direction;              // Shift direction
    logic [7:0] data_out;               // Output from the barrel shifter

    // Instantiate the barrel shifter
    barrel_shifter uut (
        .data_in(data_in),
        .shift_amount(shift_amount),
        .shift_direction(shift_direction),
        .data_out(data_out)
    );

    initial begin
        // Test cases
        data_in = 8'b11001100; shift_amount = 3'b000; shift_direction = 0; // Left shift by 0
        #10;
        data_in = 8'b11001100; shift_amount = 3'b000; shift_direction = 1; // Right shift by 0
        #10;
        data_in = 8'b11001100; shift_amount = 3'b001; shift_direction = 0; // Left shift by 1
        #10;
        data_in = 8'b11001100; shift_amount = 3'b001; shift_direction = 1; // Right shift by 1
        #10;
        data_in = 8'b11001100; shift_amount = 3'b010; shift_direction = 0; // Left shift by 2
        #10;
        data_in = 8'b11001100; shift_amount = 3'b010; shift_direction = 1; // Right shift by 2
        #10;

        // More test cases can be added here

        $finish; // End simulation
    end

endmodule
