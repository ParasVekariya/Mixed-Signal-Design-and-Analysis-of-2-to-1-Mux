# Mixed-Signal-Design-and-Analysis-of-2-to-1-Mux

## Table of Contents
- [Abstract](#abstract)
- [Referance Circuit Diagram](#referance-circuit-diagram)
- [Reference Waveform](#reference-waveform)
- [Working Of Circuit](#working-of-circuit)
- [Truth Table](#truth-table)
- [Software Used](#software-used)
  * [eSim](#esim)
  * [ngSpice](#ngspice)
  * [MakerChip](#makerchip)
  * [Verilator](#verilator)
- [Circuit Design in eSim](#circuit-design-in-esim)
- [Verilog Code](#verilog-code)
- [MakerChip](#makerchip-1)
- [MakerChip Plots](#makerchip-plots)
- [Netlist](#netlist)
- [ngSpice Plots](#ngspice-plots)
- [Steps to Run NgVeri Model](#steps-to-run-ngveri-model)
- [Steps to run this project](#steps-to-run-this-project)
- [Acknowledgements](#acknowledgements)


## Abstract
Multiplexer (MUX) being one of the most useful tool in communication, so in this paper we will try to find effective way of designing the mux using the knwoledge of both analog and digital circuits. Hence in here, usage of CMOS technologies along with the gates to effectively construct the component having the best of efficiency and speed.

## Referance Circuit Diagram

**Nand gates and Not gate are marked and when both are clubbed together, they make AND gate as expected**

![Circuit](https://user-images.githubusercontent.com/81183082/194605182-e6efa135-4861-49ff-9f33-aa42e57c436f.jpeg)

## Reference Waveform

**Note: The markdowns are made just for highlighting the refernece line**

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

## Circuit Design in eSim
This circuit was built on eSim platform using the sky130 model.
<img width="1224" alt="Circuit-esim" src="https://user-images.githubusercontent.com/81183082/194627506-3a554f6b-4430-4c5f-8349-9a36f6f9d9d2.png">

## Verilog Code
```
module ParasVekariya_2in1mux(y, d1, d0 , select);
	output reg y;  //output
	input wire d0,d1,select;	//inputs and select line
	
	always@(d0 or d1 or select) begin
	if(select)
		y = d1;
	else
		y = d0;
	end
	

endmodule
```

## MakerChip

This online IDE was used to generte the .tlv (Top Level Verilog) file of 2 to 1 mux design. After generation of the below code, we have to simulate and check the waveforms. It initially throws some error so we have to remove that sentences from the tlv file which are in between /* ``` some code to remove ```*\ After that the simulations will show up. If not all are displayed, click on +sv to show all.

```
\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/  /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/  /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/   

//Your Verilog/System Verilog Code Starts Here:
module ParasVekariya_2in1mux(y, d1, d0 , select);
	output reg y;  //output
	input wire d0,d1,select;	//inputs and select line
	
	always@(d0 or d1 or select) begin
	if(select)
		y = d1;
	else
		y = d0;
	end
	

endmodule


//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  y;//output
		logic  d0;//input
		logic  d1;//input
		logic  select;//input
//The $random() can be replaced if user wants to assign values
		assign d0 = 1;
		assign d1 = 0;
		assign select = 0;
		ParasVekariya_2in1mux ParasVekariya_2in1mux(.y(y), .d0(d0), .d1(d1), .select(select));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule


```

## MakerChip Plots
Below are the plots from makerchip after generation of the tlv file.
1. When the select line is 0 in tlv file
<img width="654" alt="sel0" src="https://user-images.githubusercontent.com/81183082/194637266-780b697a-f2ba-4151-93fb-e4c4b4e184ac.png">

2. When the select line is 1 in tlv file
<img width="660" alt="sel1" src="https://user-images.githubusercontent.com/81183082/194637284-52cdd674-5b24-4463-846a-c5b03374a99a.png">


## Netlist
Netlist of the schematics is given below. Netlist is generated after the schematics are exported to spice and then the Kicad to Ngspice converter tool is used. It contains spice level information about the schematics and also the plotting instructions are given inside the netlist.
<img width="755" alt="net1" src="https://user-images.githubusercontent.com/81183082/194637559-009d08d6-58b7-403c-b317-535e29e88ee6.png">
<img width="759" alt="net2" src="https://user-images.githubusercontent.com/81183082/194637573-4162e393-7797-4816-a378-99d41b0cdc68.png">


## ngSpice Plots
This is the final waveform that is generated after the netlist is generated. It has been scaled such that all plots are accomodated inside a single window.
- Yellow is for Y(output) which toggles between 0 and 5 as per select line
- Orange is for D0 i.e +5v if plotted from 0 line
- Blue is for D1 i.e 0v if plotted from 0 line
- Red is for select which toggles between 0 and 5
<img width="1221" alt="ngspicePlots" src="https://user-images.githubusercontent.com/81183082/194638560-db3d5c75-5d2d-43f7-8bfc-10d926458357.png">


## Steps to Run NgVeri Model
1. Open eSim
2. Open NgVeri-Makerchip tab
3. Accept the makerchip T&C
4. Add the verilog file whose model is intended to be made
5. Hit the **Edit in makerchip** button in the tab
6. It asks for creation of the .tlv file, Hit enter and it will open up the makerchip window
7. Run the tlv file
8. If it throws the error, debug and solve it.
9. Close the makerchip tab and open the ngveri tab
10. Hit the **convert verilog to ngspice** 
11. Model will be created successfully

## Steps to run this project
**Note : Download ngSpice before running this project**
1. Open the terminal
2. Type the command \ ``` git clone https://github.com/ParasVekariya/Mixed-Signal-Design-and-Analysis-of-2-to-1-Mux.git ```
3. Change the directory to \ ``` cd Mixed-Signal-Design-and-Analysis-of-2-to-1-Mux ```
4. Run the ngspice \ ``` ngspice mixed.cir.out```
5. To run it in eSim
- Run eSim
- Load the project
- Open eeSchema

## Acknowledgements
1. FOSSEE, IIT Bombay
2. Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd.
3. Sumanto Kar, eSim Team, FOSSEE
