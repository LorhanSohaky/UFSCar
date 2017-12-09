module maquina_TB;
	integer a;
	
	wire ledVerde, ledVermelho;
	wire [6:0] HEX;
	reg [4:0] val;
	reg clock;
   
	inicial i( a[4], a[3], a[2], a[1], a[0], ledVerde, ledVermelho, HEX, clock);
	
	//Alterando clock
   always begin 
      clock <= 0; 
      #25; 
      clock <= 1; 
      #25; 
   end 
	
	initial begin
		$display("\tSistema Porta\n");
		$display(" Estado  | Entrada | LG | LR | HEX");
		$display("----------------------------------");
		
		//Estado Fechado
		#50
		a=0;#100 // a = 00000
		$write( " Fechado |  %x%x%x%x%x  |  %x |  %x |", a[4], a[3], a[2], a[1], a[0], ledVerde, ledVermelho);
		if( HEX == 7'b0001110 ) $display( "  F" ); if( HEX == 7'b1000000 ) $display ("  O" );  if( HEX == 7'b0001000 ) $display( "  A" );
		
		//Estado Abrindo
		a=22;#100 // a = 10110
		$write( " Abrindo |  %x%x%x%x%x  |  %x |  %x |", a[4], a[3], a[2], a[1], a[0], ledVerde, ledVermelho);
		if( HEX == 7'b0001110 ) $display( "  F" ); if( HEX == 7'b1000000 ) $display ("  O" ); if( HEX == 7'b0001000 ) $display( "  A" );
		
		//Estado Aberto
		a=18;#100 // a = 10010
		$write( "  Aberto |  %x%x%x%x%x  |  %x |  %x |", a[4], a[3], a[2], a[1], a[0], ledVerde, ledVermelho);
		if( HEX == 7'b0001110 ) $display( "  F" ); if( HEX == 7'b1000000 ) $display ("  O" ); if( HEX == 7'b0001000 ) $display( "  A" );
		
		//Estado Fechando
		a=11;#100 // a = 01011
		$write( "Fechando |  %x%x%x%x%x  |  %x |  %x |", a[4], a[3], a[2], a[1], a[0], ledVerde, ledVermelho);
		if( HEX == 7'b0001110 ) $display( "  F" ); if( HEX == 7'b1000000 ) $display ("  O" ); if( HEX == 7'b0001000 ) $display( "  A" );
		
		//Estado Fechado
		#50
		a=3;#100 // a = 00011
		$write( " Fechado |  %x%x%x%x%x  |  %x |  %x |", a[4], a[3], a[2], a[1], a[0], ledVerde, ledVermelho);
		if( HEX == 7'b0001110 ) $display( "  F" ); if( HEX == 7'b1000000 ) $display ("  O" );  if( HEX == 7'b0001000 ) $display( "  A" );
	end
endmodule
