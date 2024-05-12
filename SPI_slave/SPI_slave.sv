module SPI_slave(input reg SCLK, SS, MOSI,
						output reg MISO, output reg Order);

	always_ff @ (posedge SCLK) begin
		MISO <= SS;
	end	

endmodule