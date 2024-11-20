//-----------------------------------------------------------------------------
//
// Title       : circuit
// Design      : d 5 nov
// Author      : la lab
// Company     : kuet
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/lab_2/d 5 nov/src/circuit.v
// Generated   : Tue Nov  5 15:47:58 2024
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
//{module {circuit}}

module BB();


reg [3:0] a,b,f;
wire [3:0] y;

reg s0,s1,cin;

circuit c1 ( b[0] ,s0 ,s1 ,y[0] );
circuit c2 ( b[1] ,s0 ,s1 ,y[1] );
circuit c3 ( b[2] ,s0 ,s1 ,y[2] );
circuit c4 ( b[3] ,s0 ,s1 ,y[3] );

LACG ll( a ,y ,cin ,f ,carry );

initial
	begin
		
		a<=4'b1011;
		b<=4'b1001;
		
		s0<=0;s1<=0;cin<=0;
		#1;	
		s0<=0;s1<=1;cin<=0;
		#1;
		s0<=1;s1<=0;cin<=0;
		#1;
		s0<=1;s1<=1;cin<=0;
		#1;
		
	end




//}} End of automatically maintained section

// Enter your statements here //

endmodule
