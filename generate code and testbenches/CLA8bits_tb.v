`include "CLA8bits.v"

module testbench;
reg [7:0]a,b;
wire [7:0]sum;
wire cout;

initial  //Apply Inputs
begin
	#1 a=131;b=163;
	#50
	a=8'b01111100;b=8'b10100111;
	#50
	a=255;b=255;
	#50
	a=63;b=31;
	#50	
	$finish;
end

CLA r1(a,b,cout,sum);

initial
begin
	$monitor($time, " a=%d b=%d cout=%d sum=%d",a,b,cout,sum);
end

endmodule
