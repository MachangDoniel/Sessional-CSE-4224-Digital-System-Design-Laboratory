//-----------------------------------------------------------------------------
//
// Title       : half_adder
// Design      : Adder
// Author      : la lab
// Company     : kuet
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/lab2_a2/Adder/src/half_adder.v
// Generated   : Sun Nov  3 21:31:00 2024
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
//{module {half_adder}}

module half_adder ( a ,b ,sum ,cout );

input a;
wire a;
input b;
wire b;
output sum;
wire sum;
output cout;
wire cout;

//}} End of automatically maintained section

assign sum = a^ b;
assign cout = a &b;
// Enter your statements here //

endmodule
