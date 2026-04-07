module full_adder (
    input A,
    input B,
    input cIn,
    output Sum,
    output cOut
);

    assign Sum = A ^ B ^ cIn;
    assign cOut = (A & B) | (A & cIn) | (B & cIn);
    

endmodule