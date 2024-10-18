module tb_alu;
    reg [1:0] op;
    reg [7:0] A, B;
    wire [7:0] result;
    wire carry_out;

    alu uut (
        .op(op),
        .i0(A),
        .i1(B),
        .o(result),
        .cout(carry_out)
    );

    initial begin
        $dumpfile("alu.vcd");   
        $dumpvars(0, tb_alu);   
        
        A = 8'b11001100;
        B = 8'b10101010;
        op = 2'b00;
        #10; 
        $display("AND: A = %b, B = %b, Result = %b", A, B, result);

        op = 2'b01;
        #10;
        $display("XOR: A = %b, B = %b, Result = %b", A, B, result);

        A = 8'b00001111;
        B = 8'b00001111;
        op = 2'b10;
        #10;
        $display("ADD: A = %b, B = %b, Result = %b, Carry = %b", A, B, result, carry_out);

        A = 8'b11110000;
        B = 8'b00001111;
        op = 2'b11;
        #10;
        $display("SUB: A = %b, B = %b, Result = %b, Carry = %b", A, B, result, carry_out);

        $finish;
    end
endmodule
