module tb_PISO;
    logic clk;
    logic reset;
    logic load;
    logic [7:0] data_in;
    logic serial_out;

    // Instantiate the PISO shift register
    PISO #(.N(8)) uut (
        .clk(clk),
        .reset(reset),
        .load(load),
        .data_in(data_in),
        .serial_out(serial_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Toggle clock every 5 time units
    end

    // Test stimulus
    initial begin
        reset = 1;
        load = 0;
        data_in = 8'b0;
        #10;

        // Release reset
        reset = 0;
        #10;

        // Load data
        data_in = 8'b10101010; // Example data
        load = 1;
        #10;

        load = 0; // Stop loading

        // Shift out data
        repeat (8) begin
            #10; // Wait for one clock cycle
            $display("Serial Output: %b", serial_out);
        end
        
        // Finish simulation
        $finish;
    end
endmodule
