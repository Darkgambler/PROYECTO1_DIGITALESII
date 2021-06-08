module etapaflops3( output reg [7:0] data_rx00s, data_rx11s,
		    output reg 	     valid_rx00s, valid_rx11s,
		    input wire [7:0] data_rx00, data_rx11,
		    input wire 	     valid_rx00, valid_rx11,
		    input wire 	     clk_2f );

   always @( posedge clk_2f ) begin
      data_rx00s <= data_rx00;
      data_rx11s <= data_rx11;
      valid_rx00s <= valid_rx00;
      valid_rx11s <= valid_rx11;
   end
   
endmodule 		    
