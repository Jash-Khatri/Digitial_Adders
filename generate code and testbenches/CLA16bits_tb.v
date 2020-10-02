`include "CLA16bits.v"

module testbench;
reg [15:0]a,b;
wire [15:0]sum;
wire cout;

initial  //Apply Inputs
begin
	#1 a=131;b=163;
	#50
	a=16'b0111110001111100;b=16'b1010011110100111;
	#50
	a=2550;b=2550;
	#50
	a=65535;b=65535;
	#50	
	$finish;
end

CLA r1(a,b,cout,sum);

initial
begin
	$monitor($time, " a=%d b=%d cout=%d sum=%d",a,b,cout,sum);
end

endmodule
