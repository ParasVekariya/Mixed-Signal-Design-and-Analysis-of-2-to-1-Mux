\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/    /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/  /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/  

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
		assign d0 = 0;
		assign d1 = 1;
		assign select = 0;
		ParasVekariya_2in1mux ParasVekariya_2in1mux(.y(y), .d0(d0), .d1(d1), .select(select));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule

