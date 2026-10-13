module ones_compliment(
    input [3:0] A, B,
    output [3:0] Y
);  
    wire [3:0] Carry_1;
    wire [3:0] APlusB;
    
    full_adder fA0_1(
        .A(A[0]),
        .B(B[0]),
        .Cin(1'b0),
        .Y(APlusB[0]),
        .Cout(Carry_1[0])
    );
    full_adder fA1_1(
        .A(A[1]),
        .B(B[1]),
        .Cin(Carry_1[0]),
        .Y(APlusB[1]),
        .Cout(Carry_1[1])
    );  
    full_adder fA2_1(
        .A(A[2]),
        .B(B[2]),
        .Cin(Carry_1[1]),
        .Y(APlusB[2]),
        .Cout(Carry_1[2])
    );  
    full_adder fA3_1(
        .A(A[3]),
        .B(B[3]),
        .Cin(Carry_1[2]),
        .Y(APlusB[3]),
        .Cout(Carry_1[3])
    );  
    
    wire [3:0]Carry_2;
    
    full_adder fA0_2(
        .A(APlusB[0]),
        .B(1'b0),
        .Cin(Carry_1[3]),
        .Y(Y[0]),
        .Cout(Carry_2[0])
    );
    full_adder fA1_2(
        .A(APlusB[1]),
        .B(1'b0),
        .Cin(Carry_2[0]),
        .Y(Y[1]),
        .Cout(Carry_2[1])
    );  
    full_adder fA2_2(
        .A(APlusB[2]),
        .B(1'b0),
        .Cin(Carry_2[1]),
        .Y(Y[2]),
        .Cout(Carry_2[2])
    );  
    full_adder fA3_2(
        .A(APlusB[3]),
        .B(1'b0),
        .Cin(Carry_2[2]),
        .Y(Y[3]),
        .Cout(Carry_2[3])
    );  
    
endmodule