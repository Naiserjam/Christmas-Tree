module DEC4 (X,a,b,c,d,e,f,g);
input [3:0] X;
output reg a,b,c,d,e,f,g;

reg [0:6] Seg7;
reg [3:0] DIG;

always @ (DIG) begin
 case (DIG)
 4'b0000: Seg7 = 7'b0111001;
 4'b0001: Seg7 = 7'b1000100;
 4'b0010: Seg7 = 7'b1111111;
 4'b0011: Seg7 = 7'b1111111;
 4'b0100: Seg7 = 7'b1001000;
 4'b0101: Seg7 = 7'b1111110;
 4'b0110: Seg7 = 7'b0001001;
 4'b0111: Seg7 = 7'b0001000;
 4'b1000: Seg7 = 7'b0100100;
 4'b1001: Seg7 = 7'b1111111;
 4'b1010: Seg7 = 7'b1111111;
 4'b1011: Seg7 = 7'b1111111;
 4'b1100: Seg7 = 7'b1111111;
 4'b1101: Seg7 = 7'b0001001;
 4'b1110: Seg7 = 7'b0110000;
 4'b1111: Seg7 = 7'b0111001;
 default: Seg7 = 7'bxxxxxxx;
 
 endcase
 
 DIG = {X};
 {a,b,c,d,e,f,g} = Seg7;
 end
 endmodule