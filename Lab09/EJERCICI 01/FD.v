module updown(output  out1, output out2);
	assign out1 = 0;
	assign out2 = 1;
endmodule


module ffd1(input clk, input reset, input enable, input d, output log q);

	always @ (posedge clk, posedge reset)
		if (reset)
			salida  <= 1'b0;
		else if (enable)
			salida <= d;
endmodule

module ffd2(input clk, input reset, input enable, input [1:0]d, output log [1:0]q);

	always @ (posedge clk, posedge reset)
		if (reset)
			salida <= 2'b0;
		else if (enable)
			salida <= d;
endmodule

module ffd4(input clk, input reset, input enable, input [3:0]d, output log [3:0]q);

	always @ (posedge clk, posedge reset)
		if (reset)
			salida <= 4'b0;
		else if (enable)
			salida <= d;
endmodule
