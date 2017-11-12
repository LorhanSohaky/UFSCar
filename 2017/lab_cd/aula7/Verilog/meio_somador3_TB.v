module meio_somador3_TB;
	reg a1, a2, a3;
	wire soma, cout;

	meio_somador3 s( a1, a2, a3, soma, cout);

	initial
	begin
		a1 = 1'b0;a2 = 1'b0; a3 = 1'b0; #1
		$display("A = %x, B = %x, C = %x, S = %x, Cout = %x", a1, a2, a3, soma, cout);
		
		a1 = 1'b0;a2 = 1'b0; a3 = 1'b1; #1
		$display("A = %x, B = %x, C = %x, S = %x, Cout = %x", a1, a2, a3, soma, cout);
		
		a1 = 1'b0;a2 = 1'b1; a3 = 1'b0; #1
		$display("A = %x, B = %x, C = %x, S = %x, Cout = %x", a1, a2, a3, soma, cout);
		
		a1 = 1'b0;a2 = 1'b1; a3 = 1'b1; #1
		$display("A = %x, B = %x, C = %x, S = %x, Cout = %x", a1, a2, a3, soma, cout);
		
		a1 = 1'b1;a2 = 1'b0; a3 = 1'b0; #1
		$display("A = %x, B = %x, C = %x, S = %x, Cout = %x", a1, a2, a3, soma, cout);
		
		a1 = 1'b1;a2 = 1'b0; a3 = 1'b1; #1
		$display("A = %x, B = %x, C = %x, S = %x, Cout = %x", a1, a2, a3, soma, cout);
		
		a1 = 1'b1;a2 = 1'b1; a3 = 1'b0; #1
		$display("A = %x, B = %x, C = %x, S = %x, Cout = %x", a1, a2, a3, soma, cout);
		
		a1 = 1'b1;a2 = 1'b1; a3 = 1'b1; #1
		$display("A = %x, B = %x, C = %x, S = %x, Cout = %x", a1, a2, a3, soma, cout);
		
	end
endmodule
