module substractor_tb;

    // Inputs
    logic [3:0] a, b;
    
    // Outputs
    logic [3:0] result;
    logic sign;

    // Instantiate the substractor module
    substractor dut (
        .a(a),
        .b(b),
        .result(result),
        .sign(sign)
    );

    // Stimulus
    initial begin
        // Test case 1: Positive result
        a = 4'b1010; // 10
        b = 4'b0110; // 6
        #10;
        
        // Test case 2: Negative result
        a = 4'b0010; // 2
        b = 4'b1100; // -4
        #10;
        
        // Test case 3: Zero result
        a = 4'b1010; // 10
        b = 4'b1010; // 10
        #10;
        
        // Add more test cases if needed
        
        $finish;
    end

endmodule
