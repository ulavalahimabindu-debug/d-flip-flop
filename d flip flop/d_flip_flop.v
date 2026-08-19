```verilog
// D Flip-Flop using Verilog

module D_Flip_Flop (
    input D,
    input CLK,
    output reg Q,
    output Q_bar
);

assign Q_bar = ~Q;

always @(posedge CLK) begin
    Q <= D;
end

endmodule
```
