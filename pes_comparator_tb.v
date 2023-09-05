module pes_comparator_tb;  
 reg [1:0] A, B;  
 wire A_less_B, A_equal_B, A_greater_B;  
 integer i;  
 // device under test  
 comparator dut(A,B,A_less_B, A_equal_B, A_greater_B);  
 initial begin  
      for (i=0;i<4;i=i+1)  
      begin   
           A = i;  
           B = i + 1;  
           #20;  
      end   
      for (i=0;i<4;i=i+1)  
      begin   
           A = i;  
           B = i;  
           #20;  
      end   
      for (i=0;i<4;i=i+1)  
      begin   
           A = i+1;  
           B = i;  
           #20;  
      end   
 end   
 endmodule 
