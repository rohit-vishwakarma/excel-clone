module mux2x1_str(output out, input a,b,sel);
wire selb,out1,out2;
and A1(out1,a,sel);
and A2(out2,b,selb);
not INV1(selb,sel);
or O1(out,out1,out2);
endmodule