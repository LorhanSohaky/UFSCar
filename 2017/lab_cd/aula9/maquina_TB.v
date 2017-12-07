module maquina_TB;
	integer a;
	
	wire clock = 1;
	wire ledVerde, ledVermelho;
	wire [6:0] HEX;

	inicial i( a[4], a[3], a[2], a[1], a[0], ledVerde, ledVermelho, HEX);

	initial
	begin
		$display("\tSistema Porta\n");
		$display("Entrada | LG | LR | HEX");
		$display("-------------------");
		
		/*//Estado Fechado
		a=0;#1 // a = 00000
		$write( "  %x%x%x%x%x |  %x |  %x |", a[4], a[3], a[2], a[1], a[0], ledVerde, ledVermelho);
		if( HEX == 7'b0001110 ) $display( "  F" ); if( HEX == 7'b1000000 ) $display ("  O" );  if( HEX == 7'b0001000 ) $display( "  A" );
		*/
		//Estado Abrindo
		a=22;#1 // a = 10110
		$write( "  %x%x%x%x%x |  %x |  %x |", a[4], a[3], a[2], a[1], a[0], ledVerde, ledVermelho);
		if( HEX == 7'b1000000 ) $display ("  O" ); if( HEX == 7'b0001110 ) $display( "  F" );   if( HEX == 7'b0001000 ) $display( "  A" );
	end
endmodule