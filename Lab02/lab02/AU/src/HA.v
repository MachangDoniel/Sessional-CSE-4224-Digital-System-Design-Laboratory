//-----------------------------------------------------------------------------
//
// Title       : HA
// Design      : AU
// Author      : donieltripura1971@gmail.com
// Company     : Machang
//
//-----------------------------------------------------------------------------
//
// File        : F:/Academic/4th Year/8th Semester/CSE 4224 Digital System Design Laboratory/Lab02/lab02/AU/src/HA.v
// Generated   : Wed Nov 20 12:28:45 2024
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

module HA(a, b, carry, sum);
    input a, b;
    output carry, sum;

    assign sum = a ^ b;
    assign carry = a & b;

//}} End of automatically maintained section

// Enter your statements here //

endmodule
