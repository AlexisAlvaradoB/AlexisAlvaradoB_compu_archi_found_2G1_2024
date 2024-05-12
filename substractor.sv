module substractor (
    input logic [3:0] a, b,
    output logic [3:0] result,
    output logic sign
);

logic inverted [3:0];

//Subtrahend is inverted
assign inverted[0] = ~b[0];
assign inverted[1] = ~b[1];
assign inverted[2] = ~b[2];
assign inverted[3] = ~b[3];



//Calculates the twos complement and instantiates the adder module