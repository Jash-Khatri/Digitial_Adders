#include<iostream>
#include<bits/stdc++.h>
using namespace std;

int main(){
	int n;
	cin >>n;

FILE *filePointer;
filePointer = fopen("RCA.v", "w") ; 

if( filePointer == NULL ) 
    { 
        printf( "file failed to open." ) ; 
    }


	fprintf(filePointer,"module fulladder(a,b,cin,cout,sum); \n");
	fprintf(filePointer,"input a,b,cin; \n");
	fprintf(filePointer,"output cout,sum; \n");
	fprintf(filePointer,"assign #3 cout= (b&cin | a&b | cin&a );\n");
	fprintf(filePointer,"assign #6 sum=a^b^cin; \nendmodule \n");
  
  fprintf(filePointer,"\n\n");

  	fprintf(filePointer,"//defining the %d bit RCA\n",n);

  	fprintf(filePointer,"module RCA(X,Y,Co,S);\n");
  	fprintf(filePointer,"input [%d:0]X,Y;\n",n-1);
  	fprintf(filePointer,"output [%d:0]S;\n",n-1);
  	fprintf(filePointer,"output Co;\n");

 fprintf(filePointer,"\n");
  	fprintf(filePointer,"fulladder f1(X[0],Y[0],1'b0,w1,S[0]);\n");

  	for(int i=2;i<n;i++){
  	fprintf(filePointer,"fulladder f%d(X[%d],Y[%d],w%d,w%d,S[%d]);\n",i,i-1,i-1,i-1,i,i-1);
  	}

  	fprintf(filePointer,"fulladder f%d(X[%d],Y[%d],w%d,Co,S[%d]);\n",n,n-1,n-1,n-1,n-1);

  	fprintf(filePointer,"endmodule\n");

return 0;
}