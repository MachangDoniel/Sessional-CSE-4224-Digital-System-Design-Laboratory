//-----------------------------------------------------------------------------
//
// Title       : HA
// Design      : d 5 nov
// Author      : la lab
// Company     : kuet
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/lab_2/d 5 nov/src/HA.v
// Generated   : Tue Nov  5 14:45:34 2024
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
//{module {HA}}

module HA ( a ,b ,carry ,sum );

input a;
wire a;
input b;
wire b;
output carry;
wire carry;
output sum;
wire sum;

//}} End of automatically maintained section

// Enter your statements here //  

assign sum=a^b;
assign carry=a&b;

endmodule
