module circuitoAdicional_TB;
	
	wire ledVerde, ledVermelho;
	reg clock, botao;
   
	inicial i( botao, ledVerde, ledVermelho, clock);
	
	//Alterando clock
   always begin 
      clock <= 0; 
      #25; 
      clock <= 1; 
      #25; 
   end 
	
	initial begin
		$display("\tSistema Porta\n");
		$display("Estado | Entrada | LG | LR");
		$display("--------------------------");
		
		//Estado A
		#50
		botao = 0;#100
		$display( "   A   |    %x    |  %x |  %x ", botao, ledVerde, ledVermelho);
		
		//Estado B
		botao = 1;#100
		$display( "   B   |    %x    |  %x |  %x ", botao, ledVerde, ledVermelho);
		
		//Estado A
		botao = 1;#150
		$display( "   A   |    %x    |  %x |  %x ", botao, ledVerde, ledVermelho);
		
	end
endmodule
