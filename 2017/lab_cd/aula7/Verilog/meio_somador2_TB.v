module meio_somador2_TB;
	reg a1, a2;
	wire soma, cout;

	meio_somador2 s( a1, a2, soma, cout);

	initial
	begin
		a1 = 1'b0;a2 = 1'b0; #1
		$display("A = %x, B = %x, S = %x, Cout = %x", a1, a2, soma, cout);
		
		a1 = 1'b0; a2 = 1'b1; #1
		$display("A = %x, B = %x, S = %x, Cout = %x", a1, a2, soma, cout);
		
		a1 = 1'b1;a2 = 1'b0; #1
		$display("A = %x, B = %x, S = %x, Cout = %x", a1, a2, soma, cout);
		
		a1 = 1'b1; a2 = 1'b1; #1
		$display("A = %x, B = %x, S = %x, Cout = %x", a1, a2, soma, cout);
		
	end
endmodule
