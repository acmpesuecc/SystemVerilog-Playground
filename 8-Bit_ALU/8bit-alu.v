module xor2 (input wire a, b, output wire y);
    assign y = a ^ b;
endmodule

module xor3 (input wire a, b, c, output wire y);
    assign y = a ^ b ^ c;
endmodule

module and2 (input wire a, b, output wire y);
    assign y = a & b;
endmodule

module or3 (input wire a, b, c, output wire y);
    assign y = a | b | c;
endmodule

module mux2 (input wire d0, d1, s, output wire y);
    assign y = s ? d1 : d0;
endmodule

module fa (input wire i0, i1, cin, output wire sum, cout);
    wire t0, t1, t2;
    xor3 _i0 (i0, i1, cin, sum);
    and2 _i1 (i0, i1, t0);
    and2 _i2 (i1, cin, t1);
    and2 _i3 (cin, i0, t2);
    or3 _i4 (t0, t1, t2, cout);
endmodule

module addsub (input wire addsub, i0, i1, cin, output wire sumdiff, cout);
    wire t;
    fa _i0 (i0, t, cin, sumdiff, cout);
    xor2 _i1 (i1, addsub, t);
endmodule

module alu_slice (input wire [1:0] op, input wire i0, i1, cin, output wire o, cout);
    wire t_sumdiff, t_and, t_xor, t_andxor;
    addsub _i0 (op[0], i0, i1, cin, t_sumdiff, cout);
    and2 _i1 (i0, i1, t_and);
    xor2 _i2 (i0, i1, t_xor);
    mux2 _i3 (t_and, t_xor, op[0], t_andxor);
    mux2 _i4 (t_sumdiff, t_andxor, op[1], o);
endmodule

module alu (input wire [1:0] op, input wire [7:0] i0, i1, output wire [7:0] o, output wire cout);
    wire [6:0] c;
    alu_slice _i0 (op, i0[0], i1[0], op[0], o[0], c[0]);
    alu_slice _i1 (op, i0[1], i1[1], c[0], o[1], c[1]);
    alu_slice _i2 (op, i0[2], i1[2], c[1], o[2], c[2]);
    alu_slice _i3 (op, i0[3], i1[3], c[2], o[3], c[3]);
    alu_slice _i4 (op, i0[4], i1[4], c[3], o[4], c[4]);
    alu_slice _i5 (op, i0[5], i1[5], c[4], o[5], c[5]);
    alu_slice _i6 (op, i0[6], i1[6], c[5], o[6], c[6]);
    alu_slice _i7 (op, i0[7], i1[7], c[6], o[7], cout);
endmodule
