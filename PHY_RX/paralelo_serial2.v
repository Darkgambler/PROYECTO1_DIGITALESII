module paralelo_serial2( output reg inserter,
			 input wire clk_4f, clk_32f,  
			 input wire reset, active );

   reg [7:0] 			    IDLE_COM;
   reg [2:0] 			    counter;
   reg 				    reset_s;
   
   
   
   always @( * ) begin
      if( !reset_s ) begin
	 IDLE_COM = 8'h00;
      end
      else begin
	 if( !active ) begin
	    IDLE_COM = 8'hbc;
	 end
	 else begin
	    IDLE_COM = 8'h7c;
	 end
      end
   end

   ////////////////////////////////////////////////
   always @( posedge clk_4f ) begin
      reset_s <= reset;
   end
   
   always @( posedge clk_32f ) begin
      if( reset_s ) begin
	 counter = counter + 1'b1;
      end
      else begin
	counter = 1'b0;
      end
   end


   always @( * ) begin
      inserter = IDLE_COM[counter];
   end

endmodule // paralelo_serial2


   
