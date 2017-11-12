module Somador4Bits_TB;
	reg a1, a2, b1, b2, c1, c2, d1, d2;
	wire soma1, soma2, soma3, soma4, cout;

	Somador4Bits s( a1, a2, b1, b2, c1, c2, d1, d2, soma1, soma2, soma3, soma4, cout);

	initial
	begin
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b0; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b0; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b0; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b0; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b0; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b0; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b0; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b0; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
		
		a1 = 1'b1; a2 = 1'b1; b1 = 1'b1; b2 = 1'b1; c1 = 1'b1; c2 = 1'b1; d1 = 1'b1; d2 = 1'b1; #1
		$display("A = %x + %x = %x \t B = %x + %x = %x \t C = %x + %x = %x \t D = %x + %x = %x \t Cout = %x", a1, a2, soma1, b1, b2, soma2, c1, c2, soma3, d1, d2, soma4, cout);
	end
endmodule
