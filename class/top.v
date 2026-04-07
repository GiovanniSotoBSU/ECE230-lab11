module top (
    input btnC, btnU,
    output [6:0] led
);

    wire [2:0] ringQ;
    wire [2:0] modQ;
    wire modOut;
    
    ring_counter rc (
        .Clock(btnC),
        .Reset(btnU),
        .Q(ringQ)
    );
    
    modulo_counter mc (
        .Clock(btnC),
        .Reset(btnU),
        .Q(modQ),
        .Out(modOut)
    );
    
    assign led[0] = ringQ[0];
    assign led[1] = ringQ[1];
    assign led[2] = ringQ[2];
    
    assign led[3] = modQ[0];
    assign led[4] = modQ[1];
    assign led[5] = modQ[2];
    
    assign led[6] = modOut;

endmodule