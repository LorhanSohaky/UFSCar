module maquina_TB;
	integer a;
	wire ledVerde, ledVermelho;
	wire [6:0] HEX;

	inicial i( a[4], a[3], a[2], a[1], a[0], ledVerde, ledVermelho, HEX);

	initial
	begin
		$display("\tSistema Porta\n");
		$display("Entrada | LG | LR | HEX");
		$display("-------------------");
		for( a = 0; a <= 15; a = a+1) begin //15 poq 15 em binário é 1111
			#1
			$display("%x | %x | %x |  %x   |  %x", a[4], a[3], a[2], a[1], a[0], ledVerde, ledVermelho, HEX);
		end
	end
endmodule