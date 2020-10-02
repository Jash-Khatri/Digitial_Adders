`include "CLA4bits.v"

module testbench;
reg [3:0]a,b;
wire [3:0]sum;
wire cout;

initial  //Apply Inputs
begin
	#1 a=15;b=15;
	#50
	a=4'b0111;b=4'b1010;
	#50
	a=5;b=3;
	#50
	a=12;b=13;
	#50	
	$finish;
end

CLA r1(a,b,cout,sum);

initial
begin
	$monitor($time, " a=%d b=%d cout=%d sum=%d",a,b,cout,sum);
end

endmodule
