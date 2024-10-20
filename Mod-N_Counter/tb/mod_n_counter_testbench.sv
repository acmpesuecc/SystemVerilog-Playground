// File: tb/mod_n_counter_tb.sv
module mod_n_counter_tb;
    
    // Parameters
    localparam N = 10;
    localparam WIDTH = $clog2(N);
    
    // Signals
    logic clk;
    logic rst_n;
    logic enable;
    logic [WIDTH-1:0] count;
    
    // Instantiate the Unit Under Test (UUT)
    mod_n_counter #(
        .N(N)
    ) uut (
        .clk(clk),
        .rst_n(rst_n),
        .enable(enable),
        .count(count)
    );
    
    // Clock generation
    always #5 clk = ~clk;
    
    // Test stimulus
    initial begin
        // Initialize signals
        clk = 0;
        rst_n = 0;
        enable = 0;
        
        // Reset
        #10 rst_n = 1;
        
        // Enable counting
        #10 enable = 1;
        
        // Wait for counter to wrap around
        #(20*N) enable = 0;
        
        // Finish simulation
        #10 $finish;
    end
    
    // Monitor
    always @(posedge clk) begin
        $display("Time=%0t: count=%d", $time, count);
    end

endmodule