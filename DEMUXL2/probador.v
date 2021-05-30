module probador( output reg [7:0] data_rx000,
		 output reg 	  valid_rx000, clk_4f, clk_2f, reset,
		 input wire [7:0] data_rx00_synt, data_rx00,
		 input wire [7:0] data_rx11_synt, data_rx11,
		 input wire 	  valid_rx00_synt, valid_rx00,
		 input wire 	  valid_rx11_synt, valid_rx11 );


   reg [7:0] 			  data_rx000_n;
   reg 				  valid_rx000_n;
   
   parameter 			  N = 1;
   
   initial begin: FILE_OUTPUT
      $dumpfile( "demuxl2.vcd" );
      $dumpvars( 0 );
   end

   initial begin: CLK_INIT1
      clk_4f = 1;
   end

   always begin: CLK_BEHAVIOR1
      #1 clk_4f = !clk_4f;
   end

   initial begin: CLK_INIT
      clk_2f = 0;
   end

   always begin: CLK_BEHAVIOR
      #2 clk_2f = !clk_2f;
   end

   always @( posedge clk_4f ) begin
      data_rx000 <= data_rx000_n;
      valid_rx000 <= valid_rx000_n;
   end
   

   initial begin: OUTPUTS_BEHAVIOR
      data_rx000_n = $random;
      valid_rx000_n = 1'b0;
      reset = 1'b0;
      #13
      reset = 1'b1;
      data_rx000_n = 8'hff;
      valid_rx000_n = 1'b1;
      #(2*N) 
      data_rx000_n = 8'hdd;
      valid_rx000_n = 1'b1;
      #(2*N) 
      data_rx000_n = 8'hee;
      valid_rx000_n = 1'b1;
      #(2*N) 
      data_rx000_n = 8'hcc;
      valid_rx000_n = 1'b1;
      #(2*N) 
      data_rx000_n = 8'hbb;
      valid_rx000_n = 1'b1;
      #(2*N) 
      data_rx000_n = 8'h99;
      valid_rx000_n = 1'b1;
      #(2*N) 
      data_rx000_n = 8'haa;
      valid_rx000_n = 1'b1;
      #(2*N) 
      data_rx000_n = 8'h88;
      valid_rx000_n = 1'b1;
      #(2*N) 
      data_rx000_n = 8'h55;
      valid_rx000_n = 1'b0;
      #(2*N) 
      data_rx000_n = 8'h77;
      valid_rx000_n = 1'b1;
      #(2*N) 
      data_rx000_n = $random;
      valid_rx000_n = 1'b0;
      #(2*N) 
      data_rx000_n = $random;
      valid_rx000_n = 1'b0;
      #(2*N) 
      data_rx000_n = $random;
      valid_rx000_n = 1'b0;
      repeat( 8 ) begin	 
	 #(2*N) 
	 data_rx000_n = $random;
	 valid_rx000_n = $random;
      end
      #(2*N) $finish;
   end // block: OUTPUTS_BEHAVIOR

endmodule // probador

      
