module SPI_slave(input reg SCLK, SS, MOSI,
						output reg MISO, output reg [9:0] message);
	
	reg [9:0] message_coll;
	reg [3:0] contador; 
	
	Counter co(SCLK, message);
	
	always_ff @ (posedge SCLK) begin
	
		MISO <= ~MOSI; 
	end

endmodule