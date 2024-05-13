module contador #(parameter n = 4) (input logic clk, reset,              
												 output reg [n-1:0] result);  
						
	reg [n-1:0] count = 0;
	
	always @ (negedge clk) begin
		 if (reset)
			  count<= 0;
		 else
		 count <= count + 1'd1;
	end 
	
	assign result = count;

endmodule
