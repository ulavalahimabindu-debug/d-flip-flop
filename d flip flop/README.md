# D Flip-Flop using Verilog

## Description

This project implements a **D (Data) Flip-Flop** using Verilog HDL.

A D Flip-Flop is a sequential logic circuit that stores one bit of data. The value of the input `D` is transferred to the output `Q` on the **positive edge of the clock**.

## Inputs

* `D` – Data input
* `CLK` – Clock input

## Outputs

* `Q` – Normal output
* `Q_bar` – Complementary output

## Truth Table

| D | Operation | Q(next) |
| - | --------- | ------- |
| 0 | Store 0   | 0       |
| 1 | Store 1   | 1       |

The output changes only on the **positive edge of CLK**.

## Project Files

```text
D_Flip_Flop/
├── d_flip_flop.v
├── d_flip_flop_tb.v
├── output.txt
└── README.md
```

## Tools Used

* Verilog HDL
* VS Code
* Icarus Verilog
* Git
* GitHub

## How to Run

Compile the design and testbench:

```bash
iverilog -o d_sim d_flip_flop.v d_flip_flop_tb.v
```

Run the simulation:

```bash
vvp d_sim
```

Save the output:

```bash
vvp d_sim > output.txt
```

View the output:

```bash
type output.txt
```

## Expected Output

The testbench verifies that:

* When `D = 0`, `Q` becomes `0` at the positive clock edge.
* When `D = 1`, `Q` becomes `1` at the positive clock edge.
* `Q_bar` always remains the complement of `Q`.

## Learning Outcomes

This project demonstrates:

* Sequential logic
* D Flip-Flop operation
* Positive-edge triggering
* Clock generation
* `always @(posedge CLK)`
* Non-blocking assignment
* Testbench development
* Verilog simulation
