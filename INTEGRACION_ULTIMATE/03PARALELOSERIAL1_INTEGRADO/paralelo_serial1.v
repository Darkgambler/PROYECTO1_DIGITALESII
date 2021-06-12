module paralelo_serial1( output reg data_out,
			 input wire [7:0] data_000,
			 input wire 	  clk_32f, clk_4f,
			 input wire 	  valid_000, reset );

   reg [7:0] 				  data2send;
   reg [2:0] 				  counter;
   reg 					  reset_s;
   
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
      if( reset_s && valid_000 ) begin
	 data2send = data_000;
      end
      else begin
	data2send = 8'hbc;
      end
   end   

   always @( * ) begin
      data_out = data2send[counter];
   end
      
endmodule // paralelo_serial1


   
