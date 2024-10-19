module siso_shift_register_tb;

    reg clk;
    reg si;
    wire so;

    siso_shift_register uut (
        .clk(clk),
        .si(si),
        .so(so)
    );

    initial begin
        clk = 0;
        si = 0;

        for (int i = 0; i < 8; i++) begin
            #5 si = 1;
            #5 si = 0;
        end

        #100;
        $finish;
    end

    always #5 clk = ~clk;

endmodule
