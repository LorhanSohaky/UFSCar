// Copyright 1991-2012 Mentor Graphics Corporation
//
// All Rights Reserved.
//
// THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION WHICH IS THE PROPERTY OF 
// MENTOR GRAPHICS CORPORATION OR ITS LICENSORS AND IS SUBJECT TO LICENSE TERMS.
//   

`timescale 1ns / 1ns


module counter (count, clk, reset);
output [7:0] count;
input clk, reset;

reg [7:0] count;

always @ (posedge clk or posedge reset)
  if (reset)
     count = 8'h00;
  else
     count <= count + 8'h01;
     
endmodule


/*
// Quartus II Verilog Template
// Gray counter

module counter(clk,reset,count);

	input clk, reset;
	output reg [7:0] count;

// Implementation:

// There's an imaginary bit in the counter, at q[-1], that resets to 1
// (unlike the rest of the bits of the counter) and flips every clock cycle.
// The decision of whether to flip any non-imaginary bit in the counter
// depends solely on the bits below it, down to the imaginary bit.	It flips
// only if all these bits, taken together, match the pattern 10* (a one
// followed by any number of zeros).

// Almost every non-imaginary bit has a submodule instance that sets the
// bit based on the values of the lower-order bits, as described above.
// The rules have to differ slightly for the most significant bit or else 
// the counter would saturate at it's highest value, 1000...0.

	// q is the counter, plus the imaginary bit
	reg q [8-1:-1];

	// no_ones_below[x] = 1 iff there are no 1's in q below q[x]
	reg no_ones_below [8-1:-1];

	// q_msb is a modification to make the msb logic work
	reg q_msb;

	integer i, j, k;

	always @ (posedge reset or posedge clk)
	begin
		if (reset)
		begin

			// Resetting involves setting the imaginary bit to 1
			q[-1] <= 1;
			for (i = 0; i <= 8-1; i = i + 1)
				q[i] <= 0;

		end
		else
		begin
			// Toggle the imaginary bit
			q[-1] <= ~q[-1];

			for (i = 0; i < 8-1; i = i + 1)
			begin

				// Flip q[i] if lower bits are a 1 followed by all 0's
				q[i] <= q[i] ^ (q[i-1] & no_ones_below[i-1]);

			end

			q[8-1] <= q[8-1] ^ (q_msb & no_ones_below[8-2]);
		end
	end


	always @(*)
	begin

		// There are never any 1's beneath the lowest bit
		no_ones_below[-1] <= 1;

		for (j = 0; j < 8-1; j = j + 1)
			no_ones_below[j] <= no_ones_below[j-1] & ~q[j-1];

		q_msb <= q[8-1] | q[8-2];

		// Copy over everything but the imaginary bit
		for (k = 0; k < 8; k = k + 1)
			count[k] <= q[k];
	end	


endmodule

*/
