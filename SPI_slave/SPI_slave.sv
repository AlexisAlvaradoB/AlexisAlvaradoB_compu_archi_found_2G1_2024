module SPI_slave(input logic SCLK, SS, MOSI, confirm,
						output reg MISO, output reg [9:0] message);
	
	logic confirm_state = 0;
	
	always_ff @ (posedge SCLK) begin
		MISO <= ~MOSI && SS && confirm_state;
		
	end
	
	always_ff @ (negedge confirm) begin
		confirm_state = ~confirm_state;
	end
	
	assign message[0] = confirm_state;
	
	
endmodule