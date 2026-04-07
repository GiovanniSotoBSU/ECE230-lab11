module ring_counter (
    input Clock,
    input Reset,
    output [2:0] Q
);

    wire q0, q1, q2;
    
    tff ff0 (
        .Clock(Clock),
        .Reset(Reset),
        .Q(q0)
    );
    
    tff ff1 (
        .Clock(q0),
        .Reset(Reset),
        .Q(q1)
    );
    
    tff ff2 (
        .Clock(q1),
        .Reset(Reset),
        .Q(q2)
    );
    
    assign Q[0] = q0;
    assign Q[1] = q1;
    assign Q[2] = q2;

endmodule