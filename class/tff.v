module tff (
    input Clock,
    input Reset,
    output Q
);

    wire qInt, dInt;

    assign dInt = ~qInt;
    
    dff ff (
        .Clock(Clock),
        .Reset(Reset),
        .D(dInt),
        .Q(qInt)
    );
        
    assign Q = qInt;

endmodule