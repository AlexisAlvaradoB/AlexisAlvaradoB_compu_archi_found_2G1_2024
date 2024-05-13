module pwm_top (input logic rst, clk, 
					 input logic [7:0] speed, 
					 output logic motor_pwm);  
	
	pwm pwm_inst (clk, rst, speed, motor_pwm); 

endmodule