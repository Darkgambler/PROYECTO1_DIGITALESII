module etapaflops1( output reg [7:0] data_0ps, data_1ps, 
		    output reg [7:0] data_2ps, data_3ps,
		    output reg 	     valid_0ps, valid_1ps,
		    output reg 	     valid_2ps, valid_3ps,
		    input wire [7:0] data_0p, data_1p,
		    input wire [7:0] data_2p, data_3p,
		    input wire 	     valid_0p, valid_1p,
		    input wire 	     valid_2p, valid_3p, clk_f );

   always @( posedge clk_f ) begin
      data_0ps <= data_0p;
      data_1ps <= data_1p;
      data_2ps <= data_2p;
      data_3ps <= data_3p;
      valid_0ps <= valid_0p;
      valid_1ps <= valid_1p;
      valid_2ps <= valid_2p;
      valid_3ps <= valid_3p;
   end
   
endmodule // etapaflops1

      
		    
