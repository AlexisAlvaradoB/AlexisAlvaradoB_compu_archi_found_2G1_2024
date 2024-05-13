module alu(
    input  logic [1:0] select,
    input  logic [3:0] a,
    input  logic [3:0] b,
    output logic [3:0] result,
	 output Z, C, V, S,
	 output logic [6:0] sevenSeg
);


//For storing the results of the modules

logic [3:0] sum;
logic [3:0] subs;
logic [3:0] andop;
logic [3:0] orop;

logic [3:0] res;

logic Zt = 1'b0;
logic Ct;
logic Vt = 1'b0;
logic St;

//Creates the instances for the modules

full_adder add(a,b,0,sum,Ct);
substractor sub(a, b, subs, St);
ANDoperation andmodule(a, b, andop);
ORoperation ormodule(a, b, orop);

//Assign the output deppending on the selector. Mux created with boolean operations

assign res[0] = (((~select[1] & ~select[0]) & sum[0]) | ((~select[1] & select[0]) & subs[0]) | ((select[1] & ~select[0]) & andop[0]) | ((select[1] & select[0]) & orop[0]));
assign res[1] = (((~select[1] & ~select[0]) & sum[1]) | ((~select[1] & select[0]) & subs[1]) | ((select[1] & ~select[0]) & andop[1]) | ((select[1] & select[0]) & orop[1]));
assign res[2] = (((~select[1] & ~select[0]) & sum[2]) | ((~select[1] & select[0]) & subs[2]) | ((select[1] & ~select[0]) & andop[2]) | ((select[1] & select[0]) & orop[2]));
assign res[3] = (((~select[1] & ~select[0]) & sum[3]) | ((~select[1] & select[0]) & subs[3]) | ((select[1] & ~select[0]) & andop[3]) | ((select[1] & select[0]) & orop[3]));

assign Z = (res == 4'b0000);
assign C = Ct;
assign V = (((~select[1] & ~select[0]) & ((a[3] & b[3] & ~sum[3]) | (~a[3] & ~b[3] & sum[3]))) | ((~select[1] & select[0]) & ((a[3] & ~b[3] & ~subs[3]) | (~a[3] & b[3] & subs[3]))));
assign S = St;

assign result = res;

decoder7seg (result, sevenSeg); 

endmodule