module tb_alu;
    reg [1:0] op;
    reg [7:0] A, B;
    wire [7:0] result;
    wire carry_out;

    // Instantiate the ALU
    alu uut (
        .op(op),
        .i0(A),
        .i1(B),
        .o(result),
        .cout(carry_out)
    );

    // Test sequence
    initial begin
        $dumpfile("alu.vcd");   // Create the dump file for waveforms
        $dumpvars(0, tb_alu);   // Dump variables for simulation
        
        // Test AND operation
        A = 8'b11001100;
        B = 8'b10101010;
        op = 2'b00;
        #10;  // Wait for 10 time units
        $display("AND: A = %b, B = %b, Result = %b", A, B, result);

        // Test XOR operation
        op = 2'b01;
        #10;
        $display("XOR: A = %b, B = %b, Result = %b", A, B, result);

        // Test ADD operation
        A = 8'b00001111;
        B = 8'b00001111;
        op = 2'b10;
        #10;
        $display("ADD: A = %b, B = %b, Result = %b, Carry = %b", A, B, result, carry_out);

        // Test SUBTRACT operation
        A = 8'b11110000;
        B = 8'b00001111;
        op = 2'b11;
        #10;
        $display("SUB: A = %b, B = %b, Result = %b, Carry = %b", A, B, result, carry_out);

        $finish;
    end
endmodule
