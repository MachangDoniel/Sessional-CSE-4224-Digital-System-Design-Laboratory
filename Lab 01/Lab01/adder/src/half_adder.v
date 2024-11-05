//-----------------------------------------------------------------------------
//
// Title       : half_adder
// Design      : adder
// Author      : la lab
// Company     : kuet
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/la lab/Desktop/1907121/Lab01/adder/src/half_adder.v
// Generated   : Wed Oct 23 15:33:00 2024
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

module half_adder ( a ,b ,sum, cout );

input a;
wire a;
input b;
wire b;
output cout;
wire cout;
output sum;
// if not defined, default: 1 bit wire 
wire sum;

assign sum = a ^ b;
assign cout = a & b;


//}} End of automatically maintained section

// Enter your statements here //

endmodule
