`include "RCA.v"

module testbench;
reg [3:0]a,b;
wire [3:0]sum;
wire cout;

initial  //Apply Inputs
begin
	#1 a=8;b=5;
	#50
	a=4'b1110;b=4'b0111;
	#50
	a=4'b1010;b=4'b1010;
	#50
	a=4'b1011;b=4'b1110;
	#50	
	$finish;
end

RCA r1(a,b,cout,sum);

initial
begin
	$monitor($time, " a=%d b=%d cout=%d sum=%d",a,b,cout,sum);
end

endmodule
