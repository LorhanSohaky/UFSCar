module meio_somador2_TB;
	
	integer a1, a2;
	wire soma, cout;

	meio_somador2 s( a1[0], a2[0], soma, cout);

	initial
	begin
		$display("\tMEIO SOMADOR\n");
		$display("A | B | Soma | Cout");
		$display("-------------------");
		for( a1 = 0; a1 < 2; a1 = a1+1) begin
			for( a2 = 0; a2 < 2; a2 = a2+1) begin
				#1
				$display("%x | %x |  %x   |  %x", a1[0], a2[0], soma, cout);
			end
		end
	end
endmodule
