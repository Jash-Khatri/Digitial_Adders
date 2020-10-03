`include "RCA128bits.v"

module testbench;
reg [127:0]a,b;
wire [127:0]sum;
wire cout;

initial  //Apply Inputs
begin
	#1 
	a=340282366920938463463374607431768211455;b=1;
	#500	
	$finish;
end

RCA r1(a,b,cout,sum);

initial
begin
	$monitor($time, " a=%b b=%b cout=%b sum=%b",a,b,cout,sum);
end

endmodule
