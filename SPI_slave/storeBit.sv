module storeBit(input reg SCLK, rst, MOSI, input logic [3:0] count, output reg MISO, 
	output reg [9:0] message);
	
	reg [9:0] message_aux;
	
	always_ff @ (posedge SCLK) begin
		
		message_aux <= (message_aux << 1) + MOSI;
		MISO <= ~message_aux[0];
		if(count == 9) begin
		
		end 
		
	end
	
endmodule 