module des_moore #(parameter S0=3'b000,S1=3'b001,S2=3'b010)(output reg y, input in, rst,clk);
reg [2:0] pstate,nstate;

//sequential circuit
always@(posedge clk)
begin
    if (rst)  
        pstate <= S0;  
    else 
        pstate <= nstate;  
end  
  // combinational circuits
always@(in,pstate) 
begin  
  case (pstate)  
  S0:begin     
        y=0;   
        if (in==0) 
            begin  
                nstate = S0;  
            end  
        else 
            begin  
                nstate = S1;  
            end  
        end  
  S1:begin  
        y=0;  
        if (in==1) 
            begin  
                nstate = S2;  
            end  
        else 
            begin  
                nstate = S0;  
            end   
        end  
  S2:begin    
      y=1;  
      if (in==1) 
        begin  
            nstate = S2;  
        end  
      else 
        begin  
            nstate = S0;  
      end  
    end  
  endcase
  end  
endmodule