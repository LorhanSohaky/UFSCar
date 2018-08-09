module CrossBar( Data, Resetn, w, Clock, Extern, RinExt );
	input [7:0] Data;
	input Extern, w, Resetn, Clock;
	input [1:4] RinExt;
	
	wire [7:0] DataIn;
	wire [1:4] Enable;
	wire [0:1] S;
	wire [7:0] R1, R2, R3, R4;
	wire [7:0] MuxOut1, MuxOut2, MuxOut3, MuxOut4;


	trin tri_ext ( Data, Extern, DataIn );

	shiftl control ( Resetn, w, Clock, S );

	assign Enable[1] = ( RinExt[1] & Extern ) | S[0] | S[1];
	assign Enable[2] = ( RinExt[2] & Extern ) | S[0] | S[1];
	assign Enable[3] = ( RinExt[3] & Extern ) | S[0] | S[1];
	assign Enable[4] = ( RinExt[4] & Extern ) | S[0] | S[1];

	mux4ton mux_1( DataIn, R2, R3, R4, S, MuxOut1 );
	mux4ton mux_2( DataIn, R1, R4, R3, S, MuxOut2 );
	mux4ton mux_3( DataIn, R4, R1, R2, S, MuxOut3 );
	mux4ton mux_4( DataIn, R3, R2, R1, S, MuxOut4 );

	regn reg_1 ( MuxOut1, Enable[1], Clock, R1 );
	regn reg_2 ( MuxOut2, Enable[2], Clock, R2 );
	regn reg_3 ( MuxOut3, Enable[3], Clock, R3 );
	regn reg_4 ( MuxOut4, Enable[4], Clock, R4 );

endmodule
