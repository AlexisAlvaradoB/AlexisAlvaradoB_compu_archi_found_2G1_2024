module pwm(
    input logic clk,
    input logic rst,
	 input logic [6:0] speed, 
    output logic motor_pwm
);

 
    logic [7:0] count = 8'h00;
    logic [7:0] motor_speed;
 
    logic motor_on;

    always_ff @(posedge clk or posedge rst) begin
        count <= (rst) ? 8'h00 : (count == 255) ? 8'h00 : count + 1;
        motor_on <= (count < speed + 128 );
    end

    assign motor_pwm = motor_on;
endmodule
