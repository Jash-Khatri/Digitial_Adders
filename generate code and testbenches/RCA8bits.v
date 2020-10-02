module fulladder(a,b,cin,cout,sum); 
input a,b,cin; 
output cout,sum; 
assign #3 cout= (b&cin | a&b | cin&a );
assign #6 sum=a^b^cin; 
endmodule 


//defining the 8 bit RCA
module RCA(X,Y,Co,S);
input [7:0]X,Y;
output [7:0]S;
output Co;

fulladder f1(X[0],Y[0],1'b0,w1,S[0]);
fulladder f2(X[1],Y[1],w1,w2,S[1]);
fulladder f3(X[2],Y[2],w2,w3,S[2]);
fulladder f4(X[3],Y[3],w3,w4,S[3]);
fulladder f5(X[4],Y[4],w4,w5,S[4]);
fulladder f6(X[5],Y[5],w5,w6,S[5]);
fulladder f7(X[6],Y[6],w6,w7,S[6]);
fulladder f8(X[7],Y[7],w7,Co,S[7]);
endmodule
