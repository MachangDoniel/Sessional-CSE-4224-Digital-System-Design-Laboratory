//-----------------------------------------------------------------------------
//
// Title       : adder_simulator
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

`timescale 10ps / 1ps	
// delay unit/ precision

//{{ Section below this comment is automatically maintained
//    and may be overwritten
//{module {half_adder}}

module add_simulator ();

// take 1 bit register
reg in1, in2;				
wire s, c;
half_adder h_a(in1, in2, s, c);

initial
	begin
		// simulation part
		// simulator cholakale register value assign korte parbo 
		// a <= b  means assign b into a
		// # 1 means 1 unit delay
		in1 <= 0; in2 <= 0;
		#1 $display("in1: %b, in2: %b, sum: = %b, carry: %b\n",in1, in2, s, c);	  
		
		in1 <= 0; in2 <= 1;
		#1 $display("in1: %b, in2: %b, sum: = %b, carry: %b\n",in1, in2, s, c);	
		
		in1 <= 1; in2 <= 0;
		#1 $display("in1: %b, in2: %b, sum: = %b, carry: %b\n",in1, in2, s, c);	  
		
		in1 <= 1; in2 <= 1;
		#1 $display("in1: %b, in2: %b, sum: = %b, carry: %b\n",in1, in2, s, c);	
		
		
		
	end

endmodule












