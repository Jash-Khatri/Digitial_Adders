module fulladder(a,b,cin,cout,sum); 
input a,b,cin; 
output cout,sum; 
assign #3 cout= (b&cin | a&b | cin&a );
assign #6 sum=a^b^cin; 
endmodule 


//defining the 4 bit RCA
module RCA(X,Y,Co,S);
input [3:0]X,Y;
output [3:0]S;
output Co;

fulladder f1(X[0],Y[0],1'b0,w1,S[0]);
fulladder f2(X[1],Y[1],w1,w2,S[1]);
fulladder f3(X[2],Y[2],w2,w3,S[2]);
fulladder f4(X[3],Y[3],w3,Co,S[3]);
endmodule
