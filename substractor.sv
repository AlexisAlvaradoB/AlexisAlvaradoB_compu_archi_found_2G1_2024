module substractor (
    input logic [3:0] a, b,
    output logic [3:0] result,
    output logic sign
);

logic [3:0] inverted;

//Subtrahend is inverted
assign inverted[0] = ~b[0];
assign inverted[1] = ~b[1];
assign inverted[2] = ~b[2];
assign inverted[3] = ~b[3];

logic [3:0] substr;

full_adder add(inverted,4'b0001,0,substr); //Twos complement is calculated

logic [3:0] res;
logic carryout;

full_adder sub(a,substr, 0, res, carryout); //Substraction is calculated with a fulladder

assign sign = carryout;
assign result = res;


endmodule

//Calculates the twos complement and instantiates the adder module