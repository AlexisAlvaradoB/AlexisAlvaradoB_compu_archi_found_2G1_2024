module controller (
	 input logic clk, rst, 
	 input  logic [1:0] select,
	 
    input  logic [3:0] a,
    input  logic [3:0] b,
	 output Z, C, V, S,
	 output logic motor_pwm, 
	 output logic [6:0] sevenSeg); 
	 
	 

	 logic [3:0] result; 
	 
	 pwm pwm_inst (clk, rst, result, motor_pwm);
	
	 alu(select, a, b, result, Z, C, V, S, sevenSeg);
	 

endmodule 