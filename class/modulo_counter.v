module modulo_counter (
    input Clock,
    input Reset,
    output [2:0] Q,
    output Out
);

    wire q0, q1, q2;
    wire outQ;
    wire sum0, sum1, sum2;
    wire c1, c2, c3;
    
    wire is6;
    wire d0, d1, d2;
    wire outD;
    
    dff ff0 (
        .Clock(Clock),
        .Reset(Reset),
        .D(d0),
        .Q(q0)
    );
    
    dff ff1 (
        .Clock(Clock),
        .Reset(Reset),
        .D(d1),
        .Q(q1)
    );
    
    dff ff2 (
        .Clock(Clock),
        .Reset(Reset),
        .D(d2),
        .Q(q2)
    );
    
    dff ffOut (
        .Clock(Clock),
        .Reset(Reset),
        .D(outD),
        .Q(outQ)
    );
    
    full_adder fa0 (
        .A(q0),
        .B(1'b1),
        .cIn(1'b0),
        .Sum(sum0),
        .cOut(c1)
    );
    
    full_adder fa1 (
        .A(q1),
        .B(1'b0),
        .cIn(c1),
        .Sum(sum1),
        .cOut(c2)
    );
    
    full_adder fa2 (
        .A(q2),
        .B(1'b0),
        .cIn(c2),
        .Sum(sum2),
        .cOut(c3)
    );
    
    assign is6 = q1 & q2 & ~q0;
    assign d0 = is6 ? 1'b0 : sum0;
    assign d1 = is6 ? 1'b0 : sum1;
    assign d2 = is6 ? 1'b0 : sum2;
    
    assign outD = is6 ? ~outQ : outQ;
    assign Q[0] = q0;
    assign Q[1] = q1;
    assign Q[2] = q2;
    assign Out = outQ;

endmodule