module FlipFlopUnit(input  logic J, K, clk, rst,
  output logic Q);
	
	logic QAux = 1'b0;
	
	always_ff @(posedge clk, posedge rst) begin
    if (rst) begin
      QAux  <= 0;
    end else if (J && K) begin
      QAux  <= ~QAux;
    end else if (J) begin
      QAux  <= 1;
    end else if (K) begin
      QAux  <= 0;
    end
  end
  
  assign Q = QAux;
	
endmodule 