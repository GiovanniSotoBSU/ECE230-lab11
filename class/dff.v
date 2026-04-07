module dff (
    input Clock,
    input Reset,
    input D,
    output reg Q
);

    initial begin
        Q <= 0;
    end
        
    always @(posedge Clock or posedge Reset) begin
        if (Reset)
            Q <= 1'b0;
        else
            Q <= D;
    end
    
endmodule