module pwm(
    input logic clk,
    input logic rst,
	 input logic [4:0] speed, 
    output logic motor_pwm
);

 
    logic [7:0] count = 8'h00;
    logic [7:0] motor_speed;
 
    logic motor_on;

    always_ff @(posedge clk or negedge rst) begin
        count <= (!rst) ? 8'h00 : (count == 255) ? 8'h00 : count + 1;
        motor_on <= (count <  (120 + (speed * 8)));
    end

    assign motor_pwm = motor_on;
endmodule