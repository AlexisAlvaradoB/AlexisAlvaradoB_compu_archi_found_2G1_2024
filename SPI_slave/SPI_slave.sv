module SPI_slave(input reg SCLK, SS, MOSI,
						output reg MISO);
	
	
	always_ff @ (posedge SCLK) begin
		MISO <= ~MOSI; 
	end

endmodule