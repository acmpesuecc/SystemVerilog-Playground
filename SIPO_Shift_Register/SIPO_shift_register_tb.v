module sipo_tst;
	
	reg clr;
	reg clk;
	reg d;

	write[3:0] q;

	sipo uut (
		.clr(clr),
		.clk(clk),
		.d(d),
		.q(q)
	);

	Initial begin
		clr = 1;
		clk = 0;
		d = 0;
		#10 clr=1'b0;
	end
	always #1 clk=~clk;
	always #2 d=~d;
	initial $monitor("d=%b, q=%b",d,q);
	initial #50 $finish;
endmodule
