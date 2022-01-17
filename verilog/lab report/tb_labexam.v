`include "labexam.v"
module tb_moore;
wire y;
reg in,rst,clk;

des_moore DUT(y,in,rst,clk);

initial 
begin
    clk=1'b0;
    forever #1 clk=~clk;
end
initial 
begin
rst = 1'b1;  
 #2 rst = 1'b0;  
 
 #2 in =1'b1; 
 #2 in =1'b0; 
 #2 in =1'b1; 
 #2 in =1'b0; 
 #2 in =1'b0; 
 #2 in =1'b0; 
 #2 in =1'b1; 
 #2 in =1'b1; 
 #2 in =1'b1; 
 #2 in =1'b0; 
 #2 in =1'b0; 
 #2 in =1'b1; 
 #2 in =1'b1; 
 #2 in =1'b1; 
 #2 in =1'b1; 
 #2 in =1'b1; 
 #2 in =1'b1; 
 #2 in =1'b1;
 #2 in =1'b1; 
 #2 in =1'b0;  
 #2 $finish;   
end  

initial
begin
$monitor("At time %t,clk=%b,in=%b,y=%b",$time,clk,in,y);
$dumpfile("tb_moore.vcd");
$dumpvars(0,tb_moore);
end
endmodule