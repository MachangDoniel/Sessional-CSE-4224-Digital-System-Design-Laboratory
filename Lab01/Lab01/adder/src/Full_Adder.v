//-----------------------------------------------------------------------------
//
// Title       : Full_Adder
// Design      : adder
// Author      : la lab
// Company     : kuet
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/la lab/Desktop/1907121/Lab01/adder/src/Full_Adder.v
// Generated   : Wed Oct 23 16:17:26 2024
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
//{module {Full_Adder}}

module Full_Adder (x, y, cin, s2, cout); 
	
input x;
input y;
input cin;
output s2;
output cout; 
wire x, y, cin;
wire s1, cout1, s2, cout2, cout;
half_adder h_a(x, y, s1, cout1);
half_adder h_a2(s1, cin, s2, cout2);
assign cout = cout1 | cout2;

// initial
// 	begin
// 		x <= 0; y <= 0; cin <=0;
// 		#1 $display("x: %b, y: %b, cin: %b, sum: %b, carry: %b\n",x, y, cin, s2, cout);
		
// 		x <= 0; y <= 0; cin <=1;
// 		#1 $display("x: %b, y: %b, cin: %b, sum: %b, carry: %b\n",x, y, cin, s2, cout);
		
// 		x <= 0; y <= 1; cin <=0;
// 		#1 $display("x: %b, y: %b, cin: %b, sum: %b, carry: %b\n",x, y, cin, s2, cout);
		
// 		x <= 0; y <= 1; cin <=1;
// 		#1 $display("x: %b, y: %b, cin: %b, sum: %b, carry: %b\n",x, y, cin, s2, cout);
		
// 		x <= 1; y <= 0; cin <=0;
// 		#1 $display("x: %b, y: %b, cin: %b, sum: %b, carry: %b\n",x, y, cin, s2, cout);
		
// 		x <= 1; y <= 0; cin <=1;
// 		#1 $display("x: %b, y: %b, cin: %b, sum: %b, carry: %b\n",x, y, cin, s2, cout);
 		
// 		x <= 1; y <= 1; cin <=0;
// 		#1 $display("x: %b, y: %b, cin: %b, sum: %b, carry: %b\n",x, y, cin, s2, cout);
		
// 		x <= 1; y <= 1; cin <=1;
// 		#1 $display("x: %b, y: %b, cin: %b, sum: %b, carry: %b\n",x, y, cin, s2, cout);
		
		
		
// 	end	

endmodule
