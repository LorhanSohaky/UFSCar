module meio_somador3_TB;
	integer a1, a2, a3;
	wire soma, cout;

	meio_somador3 s( a1[0], a2[0], a3[0], soma, cout);

	initial
	begin
		$display("\tSOMADOR COMPLETO 1 bit\n");
		$display("A | B | C | Soma | Cout");
		$display("-------------------");
		for( a1 = 0; a1 < 2; a1 = a1+1) begin
			for( a2 = 0; a2 < 2; a2 = a2+1) begin
				for( a3 = 0; a3 < 2; a3 = a3+1) begin
					#1
					$display("%x | %x | %x |  %x   |  %x", a1[0], a2[0], a3[0], soma, cout);
				end
			end
		end
	end
endmodule
