module decoder7seg (input logic [3:0] number, output logic [6:0] segments);

	//Segments in the display are an array such as [abcdefg] with 0 being on.
	
logic [6:0] out;
	
//a	
assign out[0] = ~(number == 4'b0000 || number == 4'b0010 || number == 4'b0011 || number == 4'b0101 || number == 4'b0110 || number == 4'b0111 || number == 4'b1000 || number == 4'b1001 || number == 4'b1010 || number == 4'b1100 || number == 4'b1110 || number == 4'b1111);
//b
assign out[1] = ~(number == 4'b0000 || number == 4'b0001 || number == 4'b0010 || number == 4'b0011 || number == 4'b0100 || number == 4'b0111 || number == 4'b1000 || number == 4'b1001 || number == 4'b1010 || number == 4'b1101);
//c
assign out[2] = ~(number == 4'b0000 || number == 4'b0001 || number == 4'b0011 || number == 4'b0100 || number == 4'b0101 || number == 4'b0110 || number == 4'b0111 || number == 4'b1000 || number == 4'b1001 || number == 4'b1010 || number == 4'b1011 || number == 4'b1101);
//d
assign out[3] = ~(number == 4'b0000 || number == 4'b0010 || number == 4'b0011 || number == 4'b0101 || number == 4'b0110 || number == 4'b1000 || number == 4'b1001 || number == 4'b1011 || number == 4'b1100 || number == 4'b1101 || number == 4'b1110);
//e
assign out[4] = ~(number == 4'b0000 || number == 4'b0010 || number == 4'b0110 || number == 4'b1000 || number == 4'b1010 || number == 4'b1011 || number == 4'b1100 || number == 4'b1101 || number == 4'b1110 || number == 4'b1111);
//f
assign out[5] = ~(number == 4'b0000 || number == 4'b0100 || number == 4'b0101 || number == 4'b0110 || number == 4'b1000 || number == 4'b1001 || number == 4'b1011 || number == 4'b1100 || number == 4'b1110 || number == 4'b1111 || number == 4'b1010);
//g
assign out[6] = ~(number == 4'b0010 || number == 4'b0011 || number == 4'b0100 || number == 4'b0101 || number == 4'b0110 || number == 4'b1000 || number == 4'b1001 || number == 4'b1010 || number == 4'b1011 || number == 4'b1101 || number == 4'b1110 || number == 4'b1111);


	assign segments = out;



endmodule
