module inicial( botao, ledVerde, ledVermelho, clock);
	input botao, clock;
	output ledVerde, ledVermelho;
	
	reg tmpLedVerde, tmpLedVermelho;
	
	
	parameter A = 1'b0, B = 1'b1;
	
	reg estado = A;
	
	always @( posedge clock) begin
		case( estado )
			A: begin
					tmpLedVerde = 1;
					tmpLedVermelho = 0;
					
					if( botao )
						estado = B;
				end
			
			B: begin
					tmpLedVerde = 0;
					tmpLedVermelho = 1;
					
					if( botao )
						estado = A;
				end
			
			default: estado = A;
		endcase
		
	end
	
	assign ledVerde = tmpLedVerde;
	assign ledVermelho = tmpLedVermelho;
endmodule

module circuitoAdicional ( KEY, LEDG, LEDR, CLK );
	input [0:0] KEY;
	input CLK;
	output [0:0] LEDG, LEDR;
	
	inicial i( KEY[0], LEDG, LEDR, CLK);
endmodule
