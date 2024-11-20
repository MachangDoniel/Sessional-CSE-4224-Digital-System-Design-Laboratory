//-----------------------------------------------------------------------------
//
// Title       : circuit
// Design      : AU
// Author      : donieltripura1971@gmail.com
// Company     : Machang
//
//-----------------------------------------------------------------------------
//
// File        : F:/Academic/4th Year/8th Semester/CSE 4224 Digital System Design Laboratory/Lab02/lab02/AU/src/circuit.v
// Generated   : Wed Nov 20 12:29:16 2024
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
//{module {circuit}}

module circuit(b, s0, s1, y);
    input b, s0, s1;
    output y;

    assign y = (s0 & b) | (s1 & ~b);


//}} End of automatically maintained section

// Enter your statements here //

endmodule
