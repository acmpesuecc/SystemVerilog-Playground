module comparator(
    input  logic [7:0] a,  
    input  logic [7:0] b,
    output logic a_greater, 
    output logic a_equal, 
    output logic a_less
);

    logic [7:0] greater;  
    logic [7:0] equal;    
    logic [7:0] less;

    genvar i;
    generate
        for (i = 0; i < 8; i++) begin
            assign greater[i] = a[i] & ~b[i];  
            assign less[i] = ~a[i] & b[i];     
            assign equal[i] = ~(a[i] ^ b[i]);  
        end
    endgenerate

    assign a_greater = |greater & ~|less;  
    assign a_less = |less & ~|greater;     
    assign a_equal = &equal;               

endmodule
