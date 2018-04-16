module shiftl ( Resetn, w, Clock, Q );
  parameter m = 1;

  input Resetn, w, Clock;

  output [0:m] Q;
  reg [0:m] Q;

  integer k;

  always @( negedge Resetn or posedge Clock )
    if ( !Resetn )
      Q <= 0;
    else
	    begin
    	  for( k = m; k >= 1; k = k-1 )
				Q[k-1] <= Q[k];
			
			Q[m] <= w;
		end
endmodule
