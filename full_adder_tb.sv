module full_adder_tb();

	reg [3:0] a,b, sum;
	reg cin, cout;

	full_adder add(
		a,b,cin,sum,cout
		);

	initial begin
	
		cin = 1'b0;
		a = 4'b0101;
		b = 4'b0001;
		
		#1ns;
		
		a = 4'b0000;
		b = 4'b0000;
		
		#1ns;
		
		cin = 1'b1;
		
		#1ns;
		
		cin = 1'b0;
		
		#1ns;
		
		a = 4'b1111;
		b = 4'b0001;
		
		#1ns;
		
		
	end

endmodule