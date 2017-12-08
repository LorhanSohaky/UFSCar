module inicial ( botao, aberto, fechado, motor, sentido, ledVerde, ledVermelho, display, clock );
	input botao, aberto, fechado, motor, sentido, clock;
	output ledVerde, ledVermelho;
	output [6:0] display;
	
	reg [1:0] estado;
	reg [4:0] entrada;
	
	reg [6:0] tmpDisplay;
	reg tmpLedVerde, tmpLedVermelho;
	
	parameter Fechado = 2'b00, Abrindo = 2'b01, Aberto = 2'b10, Fechando = 2'b11;
	
	initial estado = Fechado;
	
	always @(posedge clock)begin
            entrada[4] = botao;
            entrada[3] = aberto;
            entrada[2] = fechado;
            entrada[1] = motor;
            entrada[0] = sentido;
      	        
          	case( estado )
          			Fechado: begin
									  tmpDisplay = 7'b0001110;
									  tmpLedVerde = 0;
									  tmpLedVermelho = 0;
									  
									  if( entrada == 5'b10110 ) // botao == 1 && aberto == 0 && fechado == 1 && motor == 1 && sentido == 0
										 estado = Abrindo;
									end
          			   
          			Abrindo: begin
									  tmpDisplay = 7'b1000000;
									  tmpLedVerde = 1;
									  tmpLedVermelho = 0;
									  
										if( entrada == 5'b10010 ) // botao == 1 && aberto == 0 && fechado == 0 && motor == 1 && sentido == 0
											estado = Aberto;
										if( entrada == 5'b00010 ) // botao == 0 && aberto == 0 && fechado == 0 && motor == 1 && sentido == 0
											estado = Fechando;
									end
          				
          			Aberto: begin
									  tmpDisplay = 7'b0001000;
									  tmpLedVerde = 0;
									  tmpLedVermelho = 0;
									  
									  if( entrada == 5'b01011 ) // botao == 0 && aberto == 1 && fechado == 0 && motor == 1 && sentido == 1
										 estado = Fechando;
								  end
          			   
          			Fechando: begin
									  tmpDisplay = 7'b1000000;
									  tmpLedVerde = 0;
									  tmpLedVermelho = 1;
									  
										if( entrada == 5'b10011 ) // botao == 1 && aberto == 0 && fechado == 0 && motor == 1 && sentido == 1
											estado = Abrindo;
										if( entrada == 5'b00011 ) // botao == 0 && aberto == 0 && fechado == 0 && motor == 1 && sentido == 1
											estado = Fechado;
									 end
          			   
          			default: estado = Fechado;
          			
          	endcase
	end
	
	assign display= tmpDisplay;
	assign ledVerde = tmpLedVerde;
	assign ledVermelho = tmpLedVermelho;
	
endmodule

module maquina(SW,LEDG,LEDR,HEX0, CLK);
	input [4:0] SW;
	input CLK;
	output [0:0] LEDG, LEDR;
	output [6:0] HEX0;

	inicial a( SW[4], SW[3], SW[2], SW[1], SW[0], LEDG[0], LEDR[0], HEX0, CLK);
endmodule
