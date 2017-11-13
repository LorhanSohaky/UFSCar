module Somador4Bits_TB;
	integer a1, a2, b1, b2, c1, c2, d1, d2;
	wire [3:0]soma;
	wire cout;

	somador_4_bits s( a1[0], a2[0], b1[0], b2[0], c1[0], c2[0], d1[0], d2[0], soma[0], soma[1], soma[2], soma[3], cout);

	initial
	begin
		$display("\tSOMADOR COMPLETO 1 bit\n");
		$display("  A  +   B  =   Soma   | Cout");
		$display("-----------------------------");
		for( d1=0; d1<2; d1=d1+1) begin
			for( d2=0; d2<2; d2=d2+1) begin
			
				for( c1=0; c1<2; c1=c1+1) begin
					for( c2=0; c2<2; c2=c2+1) begin
					
						for( b1=0; b1<2; b1=b1+1) begin
							for( b2=0; b2<2; b2=b2+1) begin
							
								for( a1=0; a1<2; a1=a1+1) begin
									for( a2=0; a2<2; a2=a2+1) begin
										#1
										$display("%x%x%x%x + %x%x%x%x =  %x%x%x%x    |  %x", d1[0], c1[0], b1[0], a1[0], d2[0], c2[0], b2[0], a2[0], soma[3],soma[2],soma[1],soma[0], cout);
									end
								end
							end
						end
					end
				end
			end
		end
	end
endmodule
