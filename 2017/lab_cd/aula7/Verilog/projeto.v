module meio_somador2 ( a, b, soma, cout);
    input a, b;
    output soma, cout;
    
	 assign soma = a ^ b;
    assign cout = a * b;
    
endmodule

module meio_somador3 ( a, b, c, soma, cout);
    input a, b, c;
    output soma, cout;
	 
	 wire carry_1, carry_2, soma_1;
    
    meio_somador2 m1 ( a, b, soma_1, carry_1);
    meio_somador2 m2 (soma_1, c, soma, carry_2);
	 
	 or o (cout, carry_1, carry_2);
    
endmodule

module somador_4_bits (a1, a2, b1, b2, c1, c2, d1, d2, soma1, soma2, soma3, soma4, cout);
	input a1, a2, b1, b2, c1, c2, d1, d2;
	output soma1, soma2, soma3, soma4, cout;
	
	wire carry_1, carry_2, carry_3;
	
	meio_somador2 s1 ( a1, a2, soma1, carry_1);
	meio_somador3 s2 ( b1, b2, carry_1, soma2, carry_2);
	meio_somador3 s3 ( c1, c2, carry_2, soma3, carry_3);
	meio_somador3 s4 ( d1, d2, carry_3, soma4, cout);
	
endmodule

module separa ( A, B, C, D, E, z0, z1, z2, z3, z4);
	input A, B, C, D, E;
	output z0, z1, z2, z3, z4;
	
	assign z0 = (~A&E) | (~B&~C&~D&E);
	assign z1 = (~A&~B&D) | (~A&B&C&~D) | (A&~B&~C&~D);
	assign z2 = (~A&~B&C) | (~A&C&D) | (A&~B&~C&~D);
	assign z3 = (~A&B&~C&~D) | (A&~B&~C&D&~E);
	assign z4 = (~A&B&D) | (~A&B&C) | (A&~B&~C&~D) | (A&~B&~C&~E);

endmodule

module decodificacao ( A, B, C, D, h0, h1, h2, h3, h4, h5, h6);
	input A, B, C, D;
	output h0, h1, h2, h3, h4, h5, h6;
	
	assign h0 = (~A&~B&~C&D) | (~A&B&~C&~D);
	assign h1 = (~A&B&~C&D) | (~A&B&C&~D);
	assign h2 = ~A&~B&C&~D;
	assign h3 = (~A&B&~C&~D) | (~A&~B&~C&D) | (~A&B&C&D);
	assign h4 = (~A&D) | (~A&B&~C) | (~B&~C&D);
	assign h5 = (~A&~B&D) | (~A&C&D) | (~A&~B&C);
	assign h6 = (~A&~B&~C) | (~A&B&C&D);
	
endmodule

module projeto (SW, HEX0, HEX1);
	input [7:0]SW;
	output [6:0] HEX0,HEX1;
	wire z0, z1, z2, z3, z4, z5, z6, z7;
	
	wire s1, s2, s3, s4, cout;
	
	somador_4_bits soma ( SW[0], SW[4], SW[1], SW[5], SW[2], SW[6], SW[3], SW[7], s1, s2, s3, s4, cout);
	separa s (cout, s4, s3, s2, s1, z0, z1, z2, z3, z4);
	
	assign z5 = 0;
	assign z6 = 0;
	assign z7 = 0;
	
	decodificacao dec1 ( z3, z2, z1, z0, HEX0[0], HEX0[1], HEX0[2], HEX0[3], HEX0[4], HEX0[5], HEX0[6]);
	decodificacao dec2 ( 0, 0, 0, z4, HEX1[0], HEX1[1], HEX1[2], HEX1[3], HEX1[4], HEX1[5], HEX1[6]);
	
endmodule
