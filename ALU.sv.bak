/*
Arithmetic Logic Unit. Implemented as a mux only with logic gates.
Select gets the operation
a and b are the operators
Inputs come from the Arduino

SELECTOR
00 addition
01 substraction
10 AND
11 OR

Z is the zero flag
C is the carry flag
V is the Overflow flag
S is the sign flag
*/
module ALU(
    input  logic [1:0] select,
    input  logic [3:0] a,
    input  logic [3:0] b,
    output logic [3:0] result,
	 output Z, C, V, S
);


//For storing the results of the modules

logic [3:0] sum;
logic [3:0] subs;
logic [3:0] andop;
logic [3:0] orop;

logic Zt, Ct, Vt, St;

//Creates the instances for the modules

full_adder add(a,b,0,sum,Ct);
substractor sub(a, b, subs, St);
AND andmodule(a, b, andop);
OR ormodule(a, b, orop);

//Assign the output deppending on the selector. Mux created with boolean operations

assign result[0] = ((~select[1] & ~select[0]) & sum[0]) | ((~select[1] & select[0]) & subs[0]) | ((select[1] & ~select[0]) & andop[0]) | ((select[1] & select[0]) & orop[0]);
assign result[1] = ((~select[1] & ~select[0]) & sum[1]) | ((~select[1] & select[0]) & subs[1]) | ((select[1] & ~select[0]) & andop[1]) | ((select[1] & select[0]) & orop[1]);
assign result[2] = ((~select[1] & ~select[0]) & sum[2]) | ((~select[1] & select[0]) & subs[2]) | ((select[1] & ~select[0]) & andop[2]) | ((select[1] & select[0]) & orop[2]);
assign result[3] = ((~select[1] & ~select[0]) & sum[3]) | ((~select[1] & select[0]) & subs[3]) | ((select[1] & ~select[0]) & andop[3]) | ((select[1] & select[0]) & orop[3]);

endmodule