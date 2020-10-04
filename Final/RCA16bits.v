/***
Author : Jash Khatri (CS19S018)
Time of creation : 5 October 2020 at 15:26 IST
Chip for : Carry Ripple Adder
***/

/**
* Chip Name : RCA

* Inputs   : X, Y

* Outputs  : Co, S

* Function : {Co,S} = X+Y
*/

// The below module implements the fullAdder circuit where a,b,cin are 3 inputs to the full adder and cout and sum are the outputs from the full adder.

module fulladder(a,b,cin,cout,sum); 
input a,b,cin; 
output cout,sum; 
assign #3 cout= (b&cin | a&b | cin&a );
assign #6 sum=a^b^cin; 
endmodule 


//defining the 16 bit RCA module

module RCA(X,Y,Co,S);
input [15:0]X,Y;
output [15:0]S;
output Co;

// Each of the fullAdder module below takes X[i], Y[i] and wi (carry from the previous stage) as input and generates S[i] (sum bit) and w(i+1) (carry out)

fulladder f1(X[0],Y[0],1'b0,w1,S[0]);
fulladder f2(X[1],Y[1],w1,w2,S[1]);
fulladder f3(X[2],Y[2],w2,w3,S[2]);
fulladder f4(X[3],Y[3],w3,w4,S[3]);
fulladder f5(X[4],Y[4],w4,w5,S[4]);
fulladder f6(X[5],Y[5],w5,w6,S[5]);
fulladder f7(X[6],Y[6],w6,w7,S[6]);
fulladder f8(X[7],Y[7],w7,w8,S[7]);
fulladder f9(X[8],Y[8],w8,w9,S[8]);
fulladder f10(X[9],Y[9],w9,w10,S[9]);
fulladder f11(X[10],Y[10],w10,w11,S[10]);
fulladder f12(X[11],Y[11],w11,w12,S[11]);
fulladder f13(X[12],Y[12],w12,w13,S[12]);
fulladder f14(X[13],Y[13],w13,w14,S[13]);
fulladder f15(X[14],Y[14],w14,w15,S[14]);
fulladder f16(X[15],Y[15],w15,Co,S[15]);
endmodule
