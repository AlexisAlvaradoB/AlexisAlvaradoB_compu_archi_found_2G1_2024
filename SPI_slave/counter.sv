module Counter(input logic clk, output reg [3:0] countOut);
	 
	FlipFlopUnit ff0(1'b1, 1'b1, clk, rst, countOut[1]);
	
	FlipFlopUnit ff1(1'b1, 1'b1, countOut[1], rst, countOut[0]);
	

endmodule 