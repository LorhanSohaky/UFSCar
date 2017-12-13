module inicial ( giro, entrada, saida, metais, estadoLed, clock );
	input giro, entrada, saida, metais, clock;
	output [9:5]estadoLed;
	
	reg [1:0] estado;
	reg [3:0] tmp;
	
	reg [9:5] tmpLed;
	
	parameter A = 3'b000, B = 3'b001, C = 3'b010, D = 3'b011, E = 3'b100;
	
	initial estado = A;
	
	always @(posedge clock)begin
            tmp[3] = giro;
            tmp[2] = entrada;
            tmp[1] = saida;
            tmp[0] = metais;
      	        
          	case( estado )
          			A: begin
								tmpLed = 5'b10000;
									  
								if( tmp == 4'b1100 )
									estado = B;
								if( tmp == 4'b1101 | tmp == 4'b1111 )
									estado = C;
								if( tmp == 4'b1110 )
									estado = D;
								if( tmp == 4'b1010 )
									estado = E;
										
							end
          			   
          			B: begin
								tmpLed = 5'b01000;
									  
								if( tmp == 4'b0000 | tmp == 4'b1000 )
									estado = A;
								if( tmp == 4'b1101 )
									estado = C;
								if( tmp == 4'b1110 | tmp == 4'b1111 )
									estado = D;
								if( tmp == 4'b1010 | tmp == 4'b1011 )
									estado = E;
										
							end
          				
          			C: begin
								tmpLed = 5'b00100;
									  
								if( tmp == 4'b0100 | tmp == 4'b1100 )
									estado = B;
								if( tmp == 4'b0000 | tmp == 4'b1000 )
									estado = A;
								if( tmp == 4'b0110 | tmp == 4'b1110 )
									estado = D;
								if( tmp == 4'b1010 )
									estado = E;
										
							end
          			   
          			D: begin
								tmpLed = 5'b00010;
									  
								if( tmp == 4'b0111 | tmp == 4'b1111 )
									estado = C;
								if( tmp == 4'b1100 )
									estado = B;
								if( tmp == 4'b1010 )
									estado = E;
								if( tmp == 4'b0000 | tmp == 4'b1000 )
									estado = A;
										
							end
							
						E: begin
								tmpLed = 5'b00001;
									  
								if( tmp == 4'b0000 | tmp == 4'b1000 )
									estado = A;
								if( tmp == 4'b0110 | tmp == 4'b1110 )
									estado = D;
								if( tmp == 4'b1100 )
									estado = B;
								if( tmp == 4'b1101 )
									estado = C;
										
							end
          			   
          			default: estado = A;
          			
          	endcase
	end
	
	assign estadoLed= tmpLed;
	
endmodule

module projetoPessoal(SW,LEDR,HEX0, CLK);
	input [3:0] SW;
	input CLK;
	output [9:5] LEDR;
	output [6:0] HEX0;

	inicial a( SW[3], SW[2], SW[1], SW[0], LEDR, CLK);
endmodule
