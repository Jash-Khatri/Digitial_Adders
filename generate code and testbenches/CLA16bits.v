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
input [15:0]X,Y; 
output [15:0]S; 
output Co; 
wire [15:0]st1; 
wire [15:0]st0;

pandgterms a0(X[0],Y[0],st1[0],st0[0] );
pandgterms a1(X[1],Y[1],st1[1],st0[1] );
pandgterms a2(X[2],Y[2],st1[2],st0[2] );
pandgterms a3(X[3],Y[3],st1[3],st0[3] );
pandgterms a4(X[4],Y[4],st1[4],st0[4] );
pandgterms a5(X[5],Y[5],st1[5],st0[5] );
pandgterms a6(X[6],Y[6],st1[6],st0[6] );
pandgterms a7(X[7],Y[7],st1[7],st0[7] );
pandgterms a8(X[8],Y[8],st1[8],st0[8] );
pandgterms a9(X[9],Y[9],st1[9],st0[9] );
pandgterms a10(X[10],Y[10],st1[10],st0[10] );
pandgterms a11(X[11],Y[11],st1[11],st0[11] );
pandgterms a12(X[12],Y[12],st1[12],st0[12] );
pandgterms a13(X[13],Y[13],st1[13],st0[13] );
pandgterms a14(X[14],Y[14],st1[14],st0[14] );
pandgterms a15(X[15],Y[15],st1[15],st0[15] );

wire [15:0]l01; 
wire [15:0]l00; 

starop b0(st1[0],st0[0],1'b0,1'b0,l01[0],l00[0]);
starop b1(st1[1],st0[1],st1[0],st0[0],l01[1],l00[1]);
starop b2(st1[2],st0[2],st1[1],st0[1],l01[2],l00[2]);
starop b3(st1[3],st0[3],st1[2],st0[2],l01[3],l00[3]);
starop b4(st1[4],st0[4],st1[3],st0[3],l01[4],l00[4]);
starop b5(st1[5],st0[5],st1[4],st0[4],l01[5],l00[5]);
starop b6(st1[6],st0[6],st1[5],st0[5],l01[6],l00[6]);
starop b7(st1[7],st0[7],st1[6],st0[6],l01[7],l00[7]);
starop b8(st1[8],st0[8],st1[7],st0[7],l01[8],l00[8]);
starop b9(st1[9],st0[9],st1[8],st0[8],l01[9],l00[9]);
starop b10(st1[10],st0[10],st1[9],st0[9],l01[10],l00[10]);
starop b11(st1[11],st0[11],st1[10],st0[10],l01[11],l00[11]);
starop b12(st1[12],st0[12],st1[11],st0[11],l01[12],l00[12]);
starop b13(st1[13],st0[13],st1[12],st0[12],l01[13],l00[13]);
starop b14(st1[14],st0[14],st1[13],st0[13],l01[14],l00[14]);
starop b15(st1[15],st0[15],st1[14],st0[14],l01[15],l00[15]);


wire [15:0]l11; 
wire [15:0]l10;

assign l11[0] = l01[0]; 
assign l10[0] = l00[0]; 
starop c10(l01[1],l00[1],1'b0,1'b0,l11[1],l10[1]);
starop c11(l01[2],l00[2],l01[0],l00[0],l11[2],l10[2]);
starop c12(l01[3],l00[3],l01[1],l00[1],l11[3],l10[3]);
starop c13(l01[4],l00[4],l01[2],l00[2],l11[4],l10[4]);
starop c14(l01[5],l00[5],l01[3],l00[3],l11[5],l10[5]);
starop c15(l01[6],l00[6],l01[4],l00[4],l11[6],l10[6]);
starop c16(l01[7],l00[7],l01[5],l00[5],l11[7],l10[7]);
starop c17(l01[8],l00[8],l01[6],l00[6],l11[8],l10[8]);
starop c18(l01[9],l00[9],l01[7],l00[7],l11[9],l10[9]);
starop c19(l01[10],l00[10],l01[8],l00[8],l11[10],l10[10]);
starop c110(l01[11],l00[11],l01[9],l00[9],l11[11],l10[11]);
starop c111(l01[12],l00[12],l01[10],l00[10],l11[12],l10[12]);
starop c112(l01[13],l00[13],l01[11],l00[11],l11[13],l10[13]);
starop c113(l01[14],l00[14],l01[12],l00[12],l11[14],l10[14]);
starop c114(l01[15],l00[15],l01[13],l00[13],l11[15],l10[15]);

wire [15:0]l21; 
wire [15:0]l20;

assign l21[0] = l11[0]; 
assign l20[0] = l10[0]; 
assign l21[1] = l11[1]; 
assign l20[1] = l10[1]; 
assign l21[2] = l11[2]; 
assign l20[2] = l10[2]; 
starop c20(l11[3],l10[3],1'b0,1'b0,l21[3],l20[3]);
starop c21(l11[4],l10[4],l11[0],l10[0],l21[4],l20[4]);
starop c22(l11[5],l10[5],l11[1],l10[1],l21[5],l20[5]);
starop c23(l11[6],l10[6],l11[2],l10[2],l21[6],l20[6]);
starop c24(l11[7],l10[7],l11[3],l10[3],l21[7],l20[7]);
starop c25(l11[8],l10[8],l11[4],l10[4],l21[8],l20[8]);
starop c26(l11[9],l10[9],l11[5],l10[5],l21[9],l20[9]);
starop c27(l11[10],l10[10],l11[6],l10[6],l21[10],l20[10]);
starop c28(l11[11],l10[11],l11[7],l10[7],l21[11],l20[11]);
starop c29(l11[12],l10[12],l11[8],l10[8],l21[12],l20[12]);
starop c210(l11[13],l10[13],l11[9],l10[9],l21[13],l20[13]);
starop c211(l11[14],l10[14],l11[10],l10[10],l21[14],l20[14]);
starop c212(l11[15],l10[15],l11[11],l10[11],l21[15],l20[15]);

wire [15:0]l31; 
wire [15:0]l30;

assign l31[0] = l21[0]; 
assign l30[0] = l20[0]; 
assign l31[1] = l21[1]; 
assign l30[1] = l20[1]; 
assign l31[2] = l21[2]; 
assign l30[2] = l20[2]; 
assign l31[3] = l21[3]; 
assign l30[3] = l20[3]; 
assign l31[4] = l21[4]; 
assign l30[4] = l20[4]; 
assign l31[5] = l21[5]; 
assign l30[5] = l20[5]; 
assign l31[6] = l21[6]; 
assign l30[6] = l20[6]; 
starop c30(l21[7],l20[7],1'b0,1'b0,l31[7],l30[7]);
starop c31(l21[8],l20[8],l21[0],l20[0],l31[8],l30[8]);
starop c32(l21[9],l20[9],l21[1],l20[1],l31[9],l30[9]);
starop c33(l21[10],l20[10],l21[2],l20[2],l31[10],l30[10]);
starop c34(l21[11],l20[11],l21[3],l20[3],l31[11],l30[11]);
starop c35(l21[12],l20[12],l21[4],l20[4],l31[12],l30[12]);
starop c36(l21[13],l20[13],l21[5],l20[5],l31[13],l30[13]);
starop c37(l21[14],l20[14],l21[6],l20[6],l31[14],l30[14]);
starop c38(l21[15],l20[15],l21[7],l20[7],l31[15],l30[15]);

wire [15:0]l41; 
wire [15:0]l40;

assign l41[0] = l31[0]; 
assign l40[0] = l30[0]; 
assign l41[1] = l31[1]; 
assign l40[1] = l30[1]; 
assign l41[2] = l31[2]; 
assign l40[2] = l30[2]; 
assign l41[3] = l31[3]; 
assign l40[3] = l30[3]; 
assign l41[4] = l31[4]; 
assign l40[4] = l30[4]; 
assign l41[5] = l31[5]; 
assign l40[5] = l30[5]; 
assign l41[6] = l31[6]; 
assign l40[6] = l30[6]; 
assign l41[7] = l31[7]; 
assign l40[7] = l30[7]; 
assign l41[8] = l31[8]; 
assign l40[8] = l30[8]; 
assign l41[9] = l31[9]; 
assign l40[9] = l30[9]; 
assign l41[10] = l31[10]; 
assign l40[10] = l30[10]; 
assign l41[11] = l31[11]; 
assign l40[11] = l30[11]; 
assign l41[12] = l31[12]; 
assign l40[12] = l30[12]; 
assign l41[13] = l31[13]; 
assign l40[13] = l30[13]; 
assign l41[14] = l31[14]; 
assign l40[14] = l30[14]; 
starop c40(l31[15],l30[15],1'b0,1'b0,l41[15],l40[15]);

bitXor x0( X[0], Y[0], 1'b0, S[0] );
bitXor x1( X[1], Y[1], l41[0], S[1] );
bitXor x2( X[2], Y[2], l41[1], S[2] );
bitXor x3( X[3], Y[3], l41[2], S[3] );
bitXor x4( X[4], Y[4], l41[3], S[4] );
bitXor x5( X[5], Y[5], l41[4], S[5] );
bitXor x6( X[6], Y[6], l41[5], S[6] );
bitXor x7( X[7], Y[7], l41[6], S[7] );
bitXor x8( X[8], Y[8], l41[7], S[8] );
bitXor x9( X[9], Y[9], l41[8], S[9] );
bitXor x10( X[10], Y[10], l41[9], S[10] );
bitXor x11( X[11], Y[11], l41[10], S[11] );
bitXor x12( X[12], Y[12], l41[11], S[12] );
bitXor x13( X[13], Y[13], l41[12], S[13] );
bitXor x14( X[14], Y[14], l41[13], S[14] );
bitXor x15( X[15], Y[15], l41[14], S[15] );
assign Co = l41[15];

endmodule
