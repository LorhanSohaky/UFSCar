module inicial ( botao, aberto, fechado, motor, sentido, ledVerde, ledVermelho, display );
	input botao, aberto, fechado, motor, sentido;
	output ledVerde, ledVermelho;
	output [6:0] display;
	
	reg [1:0] estado;
	
	parameter A = 2'b00, B = 2'b01, C = 2'b10, D = 2'b11;
	
	initial estado = A;
	
	always begin
	
		case( estado )
			A: if( botao == 1 && aberto == 0 && fechado == 1 && motor == 1 && sentido == 0 )
					estado = B;
					
			B: begin
					if( botao == 1 && aberto == 0 && fechado == 0 && motor == 1 && sentido == 0 )
						estado = C;
					if( botao == 0 && aberto == 0 && fechado == 0 && motor == 1 && sentido == 0 )
						estado = D;
				end
			C: if( botao == 0 && aberto == 1 && fechado == 0 && motor == 1 && sentido == 1 )
					estado = D;
					
			D: begin
					if( botao == 1 && aberto == 0 && fechado == 0 && motor == 1 && sentido == 1 )
						estado = B;
					if( botao == 0 && aberto == 0 && fechado == 0 && motor == 1 && sentido == 1 )
						estado = A;
				end
			default: estado = A;
			
		endcase
	end
		
	assign ledVerde = (~estado[1] * estado[0]);	//Abrindo
	assign ledVermelho = (estado[1] * estado[0]);//Fechando
	
	
	assign display[1] = (~estado[1]*~estado[0]);
	assign display[2] = (~estado[1]*~estado[0]);
	assign display[3] = (~estado[0]);
	
	assign display[0] = 0;
	assign display[4] = 0;
	assign display[5] = 0;
	
	assign display[6] = (estado[0]); //Para aparecer o no display enquanto estiver abrindo ou fechando
	
	
endmodule

module maquina(SW,LEDG,LEDR,HEX0);
	input [4:0] SW;
	output [0:0] LEDG, LEDR;
	output [6:0] HEX0;

	inicial a( SW[4], SW[3], SW[2], SW[1], SW[0], LEDG[0], LEDR[0], HEX0);
endmodule
