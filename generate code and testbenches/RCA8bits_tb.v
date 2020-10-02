`include "RCA8bits.v"

module testbench;
reg [7:0]a,b;
wire [7:0]sum;
wire cout;

initial  //Apply Inputs
begin
	#1 a=8'b10001000;b=8'b01100101;
	#50
	a=8'b11101111;b=8'b01110010;
	#50
	a=8'b10101100;b=8'b10100011;
	#50
	a=8'b10100101;b=8'b10101010;
	#50	
	$finish;
end

RCA r1(a,b,cout,sum);

initial
begin
	$monitor($time, " a=%b b=%b cout=%b sum=%b",a,b,cout,sum);
end

endmodule
