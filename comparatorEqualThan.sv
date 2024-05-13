module comparatorEqualThan
#(parameter n = 10) 
(input wire [n-1:0] a, b,
  output reg result);

    always @* begin
		result <= (a==b) ? 1 : 0;  
    end
	 
endmodule