`timescale 1ns / 1ns

module TCrossBar;
  reg [7:0] Data;
  reg Resetn, w, Clock, Extern;
  reg [1:4] RinExt;
  
  CrossBar dut( Data, Resetn, w, Clock, Extern, RinExt );

initial // Clock generator
  begin
    Clock = 0;
    forever #25 Clock = !Clock;
  end
  
initial	// Test stimulus
  begin
    w = 0;
    Extern = 1;
    Resetn = 0;
    #50 Resetn = 1;Data = 'hca;
	 
    #25 RinExt = 4'b1000;Data = 'hfe;
    
    #50 RinExt = 4'b0100;Data = 'hba;
	 
    #50 RinExt = 4'b0010;Data = 'hbe;
	 
	#50 RinExt = 4'b0001;
	 
    #25 Extern = 0;
    w = 1;

	#100 w = 0;
  end
  
  initial
    $monitor( $stime,, Data,, Resetn,, w,, Clock,, Extern,, RinExt,, ); 
    
endmodule
