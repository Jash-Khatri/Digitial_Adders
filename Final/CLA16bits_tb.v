`include "CLA16bits.v"

module testbench;
reg [15:0]a,b;
wire [15:0]sum;
wire cout;

initial  //Apply Inputs
begin
	#1 
	a=65535;b=1;
	#500
	$finish;
end

CLA r1(a,b,cout,sum);

initial
begin
	$monitor($time, " a=%b b=%b cout=%b sum=%b",a,b,cout,sum);
end

endmodule
