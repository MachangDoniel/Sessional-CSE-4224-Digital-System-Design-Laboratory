//-----------------------------------------------------------------------------
//
// Title       : four_bit_parallel_adder
// Design      : Adder
// Author      : la lab
// Company     : kuet
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/lab2_a2/Adder/src/four_bit_parallel_adder.v
// Generated   : Sun Nov  3 21:52:43 2024
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps


module four_bit_parallel_adder (s0,s1, a ,b ,cin ,s ,cout );

input s0,s1;
input [3:0] a;
wire [3:0] a;
input [3:0] b;
wire [3:0] b;
input cin;
wire cin;
output [3:0] s;
wire [3:0] s;
output cout;
wire cout;

  
wire [3:0] carry;		

control_with_fa  fa0(s1 ,s0 ,a[0] ,b[0] ,cin , s[0] ,carry[0] );	 
control_with_fa  fa1(s1 ,s0 ,a[1] ,b[1] ,carry[0],s[1] ,carry[1] );	   
control_with_fa  fa2(s1 ,s0 ,a[2] ,b[2] ,carry[1],s[2] ,carry[2] );
control_with_fa  fa3(s1 ,s0 ,a[3] ,b[3] ,carry[2],s[3] ,cout );

// Enter your statements here //

endmodule
