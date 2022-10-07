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
