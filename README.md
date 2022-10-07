# Mixed-Signal-Design-and-Analysis-of-2-to-1-Mux

## Table of Contents


## Abstract
Multiplexer (MUX) being one of the most useful tool in communication, so in this paper we will try to find effective way of designing the mux using the knwoledge of both analog and digital circuits. Hence in here, usage of CMOS technologies along with the gates to effectively construct the component having the best of efficiency and speed.

## Referance Circuit Diagram
![Circuit](https://user-images.githubusercontent.com/81183082/194605182-e6efa135-4861-49ff-9f33-aa42e57c436f.jpeg)

## Reference Waveform
![waveform](https://user-images.githubusercontent.com/81183082/194605761-ce7c08ba-de5b-4372-844d-9449b53a321b.jpeg)

## Working Of Circuit
MUX is a data selector tool that selects one of the given sets of inputs and passes to the output line.General formula to design the mux goes as follows where if there are n inputs and then the mux contains 2n select lines.It is also called switch box as the name suggests, it does the job of switching between the inputs. A 2:1 mux has two input lines D1 and D0, one select line S, one output line O. A very simple thing to design and the working of the mux is equally simple. When the select line is 0, then the input D1 is passed to the output line and for S to be equal to 1, D0 is passes through to the output line O. Now generally the design is done either in analog or in digital. 
Analog design is about designing the component in the gate level design for example and gate,nor gates and so on. It is comparatively easy to design and has an advantage of being the most effective as it is being driven in-out based systems. Digital Design is considered bit complicated as compared to analog design. Here component is initially broken down to gate level diagrams initially and then the gates are further broken down to the more simple level of hierarchy or basic building blocks of the circuits i.e C PMOS and NMOS logic. It is collectively known as CMOS technologies. It is considered complicated as it uses multiple level of hierarchy to design the simple logic.
So we will design the mux with both analog and digital signals as ”mixed signal” where some part of the design will be in the analog and some part in the digital design to get the best efficiency and speed of the design.In this design, PMOS substrate is connected to the VDD(+5v) rail and the NMOS substrate is connected to Ground(GND) rail.

## Truth Table
| Select |   D0  |   D1  |  Y
| ------ | :---: | :---: | :---:
|    0   |   0   |   0   |  0   |
|    0   |   0   |   1   |  0   |
|    0   |   1   |   0   |  1   |
|    0   |   1   |   1   |  1   |
|    1   |   0   |   0   |  0   |
|    1   |   0   |   1   |  1   |
|    1   |   1   |   0   |  0   |
|    1   |   1   |   1   |  1   |

## Software Used 

### eSim
It is an Open Source EDA developed by FOSSEE, IIT Bombay. It is used for electronic circuit simulation. It is made by the combination of two software namely NgSpice and KiCAD. For more details on this, please visit [eSim](https://esim.fossee.in/home) website

### ngSpice
An open source software used for spice simulations. Here is the link to [ngspice's](http://ngspice.sourceforge.net/docs.html) official website.

### MakerChip
It is an online web browser IDE for Verilog/System-verilog/TL-Verilog Simulation. Here is the [makerchip](https://www.makerchip.com/) website link.

### Verilator
It is a tool which converts Verilog code to C++ objects. Link to [verilator](https://www.veripool.org/verilator/) website.
