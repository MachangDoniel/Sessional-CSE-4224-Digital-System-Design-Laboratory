//-----------------------------------------------------------------------------
//
// Title       : control_with_fa
// Design      : Adder
// Author      : la lab
// Company     : kuet
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/lab2_a2/Adder/src/control_with_fa.v
// Generated   : Sun Nov  3 21:44:29 2024
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

module control_with_fa ( s1 ,s0 ,a ,b ,cin ,s ,cout );

input s1;
wire s1;
input s0;
wire s0;
input a;
wire a;
input b;
wire b;
input cin;
wire cin;
output s;
wire s;
output cout;
wire cout;


wire aout,bout;

control c(s1 ,s0 ,a ,b ,aout ,bout);

full_adder f1(aout,bout,cin,s,cout);


endmodule
