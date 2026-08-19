```verilog
// Testbench for D Flip-Flop

module D_Flip_Flop_tb;

reg D;
reg CLK;

wire Q;
wire Q_bar;

D_Flip_Flop uut (
    .D(D),
    .CLK(CLK),
    .Q(Q),
    .Q_bar(Q_bar)
);

// Clock generation
initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end

initial begin

    $display("Time  CLK  D  Q  Q_bar");
    $display("-----------------------");

    // D = 0
    D = 0;

    #10;
    $display("%4t   %b    %b  %b    %b",
             $time, CLK, D, Q, Q_bar);

    // D = 1
    D = 1;

    #10;
    $display("%4t   %b    %b  %b    %b",
             $time, CLK, D, Q, Q_bar);

    // D = 0
    D = 0;

    #10;
    $display("%4t   %b    %b  %b    %b",
             $time, CLK, D, Q, Q_bar);

    // D = 1
    D = 1;

    #10;
    $display("%4t   %b    %b  %b    %b",
             $time, CLK, D, Q, Q_bar);

    $finish;

end

endmodule
```
