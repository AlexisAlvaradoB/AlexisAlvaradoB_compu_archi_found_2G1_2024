module counterTop(input reg SCLK, SS, output [9:0] message);
	
	logic rst;
	logic rst_2;
	
	contador con(SCLK, rst, message);
	
	comparatorEqualThan comp (message, 4'd10, rst_2);
	
	assign rst = SS || rst_2;

endmodule