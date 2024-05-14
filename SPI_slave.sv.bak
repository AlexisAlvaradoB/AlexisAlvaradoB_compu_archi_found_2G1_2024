module SPI_slave(input logic SCLK, SS, MOSI, confirm,
						output reg MISO, output reg [9:0] message);
	
	logic confirm_state = 0;
	
	reg [3:0] contador;
	
	always_ff @ (posedge SCLK or negedge SS) begin
		
		if(~SS) begin
			contador = 4'b0000;
		end else begin
			MISO <= ~MOSI && SS && confirm_state;
			if(contador == 4'b1001) begin
				contador = 4'b0000;
			end else begin
				contador = contador + 1;
			end
		end
		
		
	end
	
	always_ff @ (negedge confirm) begin
		confirm_state = ~confirm_state;
	end
	
	assign message = contador;
	
	
endmodule