module half_sub(
    input A, B,
    output Y, Bor
);

    assign Y = A ^ B;
    assign Bor = ~A & B;
    
endmodule