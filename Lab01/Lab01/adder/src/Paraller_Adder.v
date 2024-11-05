//-----------------------------------------------------------------------------
//
// Title       : Paraller_Adder
// Design      : adder
// Author      : la lab
// Company     : kuet
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/la lab/Desktop/1907121/Lab01/adder/src/Paraller_Adder.v
// Generated   : Wed Oct 23 16:44:24 2024
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 10ps / 1ps

//{{ Section below this comment is automatically maintained
//    and may be overwritten
//{module {Paraller_Adder}}

module Paraller_Adder ();  
	
reg a1, a2, a3, a4, b1, b2, b3, b4;
wire s1, s2, s3, c1, c2, c3;
wire s, c;

half_adder h_a(a1, b1, s1, c1);
Full_Adder f_a(a2, b2, c1, s2, c2);
Full_Adder f_a2(a3, b3, c2, s3, c3);
Full_Adder f_a3(a4, b4, c3, s, c);
//}} End of automatically maintained section  

initial
	begin
		a1 <= 1; a2 <= 0; a3 <=0; a4 <=1;
		b1 <= 0; b2 <= 0; b3 <=1; b4 <=1;
		#1 $display("c: = %b, s: %b,  s3: = %b, s2: = %b, s1: = %b\n",c, s, s3, s2, s1);	
	end

// Enter your statements here //

endmodule
