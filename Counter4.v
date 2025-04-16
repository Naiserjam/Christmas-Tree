
 module Counter4(clock, enable, clrn, Q);
 input clock, enable, clrn;
 output [3:0] Q;
 reg[3:0] Q;

 always @(posedge clock, negedge clrn)
 begin
   if (!clrn)
	   Q<= 0;
	else
	  if (enable)
	   Q <= Q + 1;

		end
   endmodule
