module pandgterms(a,b,st1,st0);

input a,b; 
output st1,st0; 
assign #1 st1=a&b; 
assign #1 st0=a|b; 

endmodule

module starop(cs1,cs0,ps1,ps0,o1,o0); 
input cs1,cs0,ps1,ps0; 
output o1,o0; 

assign #2 o1 = cs1 | (cs0 & ps1); 
assign #2 o0 = cs1 | (cs0 & ps0); 

endmodule

module bitXor(a,b,c,out); 
input a,b,c; 
output out; 

assign #6 out = a^b^c; 

endmodule

module CLA(X,Y,Co,S);
input [3:0]X,Y; 
output [3:0]S; 
output Co; 
wire [3:0]st1; 
wire [3:0]st0;

pandgterms a0(X[0],Y[0],st1[0],st0[0] );
pandgterms a1(X[1],Y[1],st1[1],st0[1] );
pandgterms a2(X[2],Y[2],st1[2],st0[2] );
pandgterms a3(X[3],Y[3],st1[3],st0[3] );

wire [3:0]l01; 
wire [3:0]l00; 

starop b0(st1[0],st0[0],1'b0,1'b0,l01[0],l00[0]);
starop b1(st1[1],st0[1],st1[0],st0[0],l01[1],l00[1]);
starop b2(st1[2],st0[2],st1[1],st0[1],l01[2],l00[2]);
starop b3(st1[3],st0[3],st1[2],st0[2],l01[3],l00[3]);


wire [3:0]l11; 
wire [3:0]l10;

assign l11[0] = l01[0]; 
assign l10[0] = l00[0]; 
starop c10(l01[1],l00[1],1'b0,1'b0,l11[1],l10[1]);
starop c11(l01[2],l00[2],l01[0],l00[0],l11[2],l10[2]);
starop c12(l01[3],l00[3],l01[1],l00[1],l11[3],l10[3]);

wire [3:0]l21; 
wire [3:0]l20;

assign l21[0] = l11[0]; 
assign l20[0] = l10[0]; 
assign l21[1] = l11[1]; 
assign l20[1] = l10[1]; 
assign l21[2] = l11[2]; 
assign l20[2] = l10[2]; 
starop c20(l11[3],l10[3],1'b0,1'b0,l21[3],l20[3]);

bitXor x0( X[0], Y[0], 1'b0, S[0] );
bitXor x1( X[1], Y[1], l21[0], S[1] );
bitXor x2( X[2], Y[2], l21[1], S[2] );
bitXor x3( X[3], Y[3], l21[2], S[3] );
assign Co = l21[3];

endmodule
