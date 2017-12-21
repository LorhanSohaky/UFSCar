module projetoPessoal_TB;
	
	integer a;
	wire [1:0] ledVerde, ledVermelho;
	wire [6:0] display;
	reg clock;
   
	inicial i( a[3], a[2], a[1], a[0], ledVerde, ledVermelho, display, clock );
	
	//Alterando clock
   always begin 
      clock <= 0; 
      #25; 
      clock <= 1; 
      #25; 
   end 
	
	initial begin
		$display("\tPorta Giratorias\n");
		$display(" Estado  | Entrada | LG | LR");
		$display("----------------------------");
		
		//Estado A
		a = 0; #50 // a = 0000
		$display( "    A    |   %x%x%x%x  | %x%x |  %x%x", a[3], a[2], a[1], a[0], ledVerde[1], ledVerde[0], ledVermelho[1], ledVermelho[0] );
		
		//Estado B
		a = 12; #100 // a = 1100
		$display( "    B    |   %x%x%x%x  | %x%x |  %x%x", a[3], a[2], a[1], a[0], ledVerde[1], ledVerde[0], ledVermelho[1], ledVermelho[0] );
		
		//Estado C
		a = 13; #100 // a = 1101
		$display( "    C    |   %x%x%x%x  | %x%x |  %x%x", a[3], a[2], a[1], a[0], ledVerde[1], ledVerde[0], ledVermelho[1], ledVermelho[0] );
		
		//Estado D
		a = 6; #100 // a = 0110
		$display( "    D    |   %x%x%x%x  | %x%x |  %x%x", a[3], a[2], a[1], a[0], ledVerde[1], ledVerde[0], ledVermelho[1], ledVermelho[0] );
		
		//Estado E
		a = 10; #100 // a = 1010
		$display( "    E    |   %x%x%x%x  | %x%x |  %x%x", a[3], a[2], a[1], a[0], ledVerde[1], ledVerde[0], ledVermelho[1], ledVermelho[0] );
		
		//Estado A
		a = 8; #100 // a = 1000
		$display( "    A    |   %x%x%x%x  | %x%x |  %x%x", a[3], a[2], a[1], a[0], ledVerde[1], ledVerde[0], ledVermelho[1], ledVermelho[0] );
	end
endmodule
