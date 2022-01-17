`include"mux2x1.v"
module mux2x1_str_tb();
reg a,b,sel;
wire out;
mux2x1_str DUT(out,a,b,sel);
initial
begin
$monitor("At time %t,a=(%0d),b=(%0d),sel=(%0d)",$time,a,b,sel);
$dumpfile("mux2x1_str_tb.vcd");
$dumpvars(0, mux2x1_str_tb);
a = 0; b = 0; sel = 0; #10;
a = 0; b = 0; sel = 1; #10;
a = 0; b = 1; sel = 0; #10;
a = 0; b = 1; sel = 1; #10;
a = 1; b = 0; sel = 0; #10;
a = 1; b = 0; sel = 1; #10;
a = 1; b = 1; sel = 0; #10;
a = 1; b = 1; sel = 1; #10;
end
endmodule