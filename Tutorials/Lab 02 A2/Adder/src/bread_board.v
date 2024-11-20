//-----------------------------------------------------------------------------
//
// Title       : bread_board
// Design      : Adder
// Author      : la lab
// Company     : kuet
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/lab2_a2/Adder/src/bread_board.v
// Generated   : Sun Nov  3 22:01:18 2024
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

module bread_board ();

reg s0, s1;
reg [3:0] a, b;
reg cin;
wire [3:0] s;
wire cout;

four_bit_parallel_adder uut (s0,s1, a ,b ,cin ,s ,cout );

initial 
	begin
	a = 4'b1011; b = 4'b0111;
    s0 = 0; s1 = 0; cin = 0;
    #1 $display("s0=%b, s1=%b, a=%b, b=%b, cin=%b, s=%b, cout=%b", s0, s1, a, b, cin, s, cout);

    // Test case 1
    s0 = 0; s1 = 0;  cin = 1;
    #1 $display("s0=%b, s1=%b, a=%b, b=%b, cin=%b, s=%b, cout=%b", s0, s1, a, b, cin, s, cout);
					
    s0 = 0; s1 = 1; cin = 1;
    #1 $display("s0=%b, s1=%b, a=%b, b=%b, cin=%b, s=%b, cout=%b", s0, s1, a, b, cin, s, cout);
				   
    s0 = 1; s1 =0 ;  cin = 0;
    #1 $display("s0=%b, s1=%b, a=%b, b=%b, cin=%b, s=%b, cout=%b", s0, s1, a, b, cin, s, cout);
	end			   

endmodule
