module SPI_slave(input logic SCLK, SS, MOSI,
						output reg MISO, output reg [9:0] message);
	
	reg [9:0] message_aux;
	reg [3:0] count; 
	
	
	logic rst;
	logic rst_2;
	
	contador con(SCLK, rst, count);
	
	comparatorEqualThan comp (count, 10, rst_2);
	
	storeBit strB (SCLK, rst, MOSI, count, MISO, message);
	
	assign rst = SS || rst_2;
	
	
endmodule