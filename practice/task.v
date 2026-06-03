module task_(output y)

reg y;

  task clk(y);
  
 task clk(cl)
 begin 
 
 forever 
    begin 
	    #5;
		 clk=~clk;
		 end 
 end 
 endmodule