module mux4ton ( w0, w1, w2, w3, S, f );
	parameter n = 8;

	input [n-1:0] w0, w1, w2, w3;
	input [1:0] S;

	output [n-1:0] f;
	reg [n-1:0] f;
	
	always@( w0 or w1 or w2 or w3 or S )
		if( S == 2'b00 )
			f = w0;
		else if( S == 2'b01 )
			f = w1;
		else if( S == 2'b11 )
			f = w2;
		else if( S == 2'b10 )
			f = w3;
endmodule
