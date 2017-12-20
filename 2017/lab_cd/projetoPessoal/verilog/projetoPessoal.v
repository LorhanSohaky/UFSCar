module inicial ( giro, entrada, saida, metais, ledVerde, ledVermelho, display, clock );
	input giro, entrada, saida, metais, clock;
	output [1:0] ledVerde, ledVermelho;
	output [6:0] display;

	reg [2:0] estado;
	reg [3:0] tmp;
	reg [1:0] tmpLedVerde, tmpLedVermelho;
	reg [6:0] tmpDisplay;

	parameter A = 3'b000, B = 3'b001, C = 3'b010, D = 3'b011, E = 3'b100;

	initial estado = A;

	always @( posedge clock ) begin
			tmp = { giro, entrada, saida, metais }; // Equivamente ao código comentado abaixo
            /*tmp[3] = giro;
            tmp[2] = entrada;
            tmp[1] = saida;
            tmp[0] = metais;*/

          	case( estado )
          			A: begin
								tmpLedVerde = 2'b00;
								tmpLedVermelho = 2'b00;
								tmpDisplay = 7'b1111001;

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
								tmpLedVerde = 2'b01;
								tmpLedVermelho = 2'b00;
								tmpDisplay = 7'b0100100;

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
								tmpLedVerde = 2'b00;
								tmpLedVermelho = 2'b01;
								tmpDisplay = 7'b0110000;

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
								tmpLedVerde = 2'b10;
								tmpLedVermelho = 2'b10;
								tmpDisplay = 7'b0011001;

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
								tmpLedVerde = 2'b00;
								tmpLedVermelho = 2'b00;
								tmpDisplay = 7'b0010010;

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

	assign ledVerde = tmpLedVerde;
	assign ledVermelho = tmpLedVermelho;
	assign display = tmpDisplay;

endmodule

module projetoPessoal ( SW,LEDG, LEDR, HEX0, CLK );
	input [3:0] SW;
	input CLK;
	output [1:0] LEDG, LEDR;
	output [6:0] HEX0;

	inicial a( SW[3], SW[2], SW[1], SW[0], LEDG, LEDR, HEX0, CLK );
endmodule
