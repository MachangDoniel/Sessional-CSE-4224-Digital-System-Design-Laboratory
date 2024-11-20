//-----------------------------------------------------------------------------
//
// Title       : control
// Design      : Adder
// Author      : la lab
// Company     : kuet
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/lab2_a2/Adder/src/control.v
// Generated   : Sun Nov  3 21:35:51 2024
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

module control ( s1 ,s0 ,a ,b ,aout ,bout );

input s1;
wire s1;
input s0;
wire s0;
input a;
wire a;
input b;
wire b;
output aout;
wire aout;
output bout;
wire bout;

//}} End of automatically maintained section


wire an1, an2;

assign aout = a;
assign an1 = s1 & ~s0 & ~b;
assign an2 = ~s1 & s0 & b;
assign bout = an1 | an2;
// Enter your statements here //

endmodule

	
