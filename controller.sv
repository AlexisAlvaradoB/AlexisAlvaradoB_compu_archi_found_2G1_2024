module controller (
	 input logic clk, rst, SCLK, SS, MOSI, confirm, 
	 input  logic [1:0] select,
	 
    input  logic [3:0] a,
    input  logic [3:0] b,
	 output Z, C, V, S, enabledSPI, MISO,
	 output logic motor_pwm, 
	 output logic [6:0] sevenSeg
	 
	 ); 
	 
	 

	 logic [3:0] result; 
	 
	 pwm pwm_inst (clk, rst, result, motor_pwm);
	
	 alu(select, a, b, result, Z, C, V, S, sevenSeg);
	 
	 SPI_slave spi (SCLK, SS, MOSI, confirm, MISO, enabledSPI);
	 
endmodule 