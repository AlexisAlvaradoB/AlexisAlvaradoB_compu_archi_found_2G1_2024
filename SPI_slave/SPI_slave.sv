module SPI_slave(input logic clk, SS, input logic MOSI,
						output logic MISO, output CS);
	
	
	always_ff @ (posedge clk) begin
		CS <= SS ? 1'b1 : 1'b0;
		
	end

endmodule