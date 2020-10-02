`include "RCA.v"

module testbench;
reg [15:0]a,b;
wire [15:0]sum;
wire cout;

initial  //Apply Inputs
begin
	#1 a=1025;b=255;
	#50
	a=45;b=67;
	#50
	a=1023;b=1023;
	#50
	a=65535;b=65535;
	#50	
	$finish;
end

RCA r1(a,b,cout,sum);

initial
begin
	$monitor($time, " a=%d b=%d cout=%d sum=%d",a,b,cout,sum);
end

endmodule
