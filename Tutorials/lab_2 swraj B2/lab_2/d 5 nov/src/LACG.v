`timescale 1ps / 1ps

//{{ Section below this comment is automatically maintained
//    and may be overwritten
//{module {FA}}

module LACG ( a ,b ,cin ,sum ,carry );
	
input cin;
	
input [3:0] a,b;

wire [3:0] p,g;

output [3:0] sum;

output carry;


HA h1(a[0],b[0],p[0],g[0]);

HA h2(a[1],b[1],p[1],g[1]);

HA h3(a[2],b[2],p[2],g[2]);

HA h4(a[3],b[3],p[3],g[3]);

//}} End of automatically maintained section 

wire [4:0] c;


// assign c[0]=cin;
// assign c[1]=g[0]|p[0]&c[0];
// assign c[2]=g[1]|p[1]&c[1];	
// assign c[3]=g[2]|p[2]&c[2];
// assign c[4]=g[3]|p[3]&c[3];			   

// Direct computation of carries
assign c[0] = cin; // Initial carry
assign c[1] = g[0] | (p[0] & c[0]);
assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & c[0]);
assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c[0]);
assign c[4] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & c[0]);


assign sum[0]=c[0]^p[0];
assign sum[1]=c[1]^p[1];
assign sum[2]=c[2]^p[2];
assign sum[3]=c[3]^p[3];

assign carry=c[4];


// Enter your statements here //

endmodule
