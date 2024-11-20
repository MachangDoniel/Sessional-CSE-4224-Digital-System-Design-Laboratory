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

`timescale 1ps / 1ps

//{{ Section below this comment is automatically maintained
//    and may be overwritten
//{module {circuit}}

module circuit ( b ,s0 ,s1 ,y );

input b;
wire b;
input s0;
wire s0;
input s1;
wire s1;
output y;
wire y;


assign y= (s0&b)|(s1&~b);

//}} End of automatically maintained section

// Enter your statements here //

endmodule
