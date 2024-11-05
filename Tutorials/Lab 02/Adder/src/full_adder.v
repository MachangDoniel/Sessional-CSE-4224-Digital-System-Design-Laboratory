//-----------------------------------------------------------------------------
//
// Title       : full_adder
// Design      : Adder
// Author      : la lab
// Company     : kuet
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/lab2_a2/Adder/src/full_adder.v
// Generated   : Sun Nov  3 21:32:07 2024
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
//{module {full_adder}}

module full_adder ( a ,b ,cin ,sum ,cout );

input a;
wire a;
input b;
wire b;
input cin;
wire cin;
output sum;
wire sum;
output cout;
wire cout;

//}} End of automatically maintained section

wire sum1,carry1,sum2,carry2;


half_adder h1(a,b,sum1,carry1);
half_adder h2(sum1,cin,sum,carry2);

assign cout= carry1 | carry2;

// Enter your statements here //

endmodule
