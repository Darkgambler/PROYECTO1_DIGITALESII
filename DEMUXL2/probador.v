module probador( output reg [7:0] data_000,
		 output reg 	  valid_000, clk_4f, clk_2f,
		 input wire [7:0] data_00_synt, data_00_cond,
		 input wire [7:0] data_11_synt, data_11_cond,
		 input wire 	  valid_00_synt, valid_00_cond,
		 input wire 	  valid_11_synt, valid_11_cond );


   reg [7:0] 			  data_000_n;
   reg 				  valid_000_n;
   
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
      data_000 <= data_000_n;
      valid_000 <= valid_000_n;
   end
   

   initial begin: OUTPUTS_BEHAVIOR
      repeat( 4 ) begin
	 #2
	 data_000_n = $random;
	 valid_000_n = 1'b0;
      end
      #(2*N) 
      data_000_n = 8'hff;
      valid_000_n = 1'b1;
      #(2*N) 
      data_000_n = 8'hdd;
      valid_000_n = 1'b1;
      #(2*N) 
      data_000_n = 8'hee;
      valid_000_n = 1'b1;
      #(2*N) 
      data_000_n = 8'hcc;
      valid_000_n = 1'b1;
      #(2*N) 
      data_000_n = 8'hbb;
      valid_000_n = 1'b1;
      #(2*N) 
      data_000_n = 8'h99;
      valid_000_n = 1'b1;
      #(2*N) 
      data_000_n = 8'haa;
      valid_000_n = 1'b1;
      #(2*N) 
      data_000_n = 8'h88;
      valid_000_n = 1'b1;
      #(2*N) 
      data_000_n = 8'h55;
      valid_000_n = 1'b0;
      #(2*N) 
      data_000_n = 8'h77;
      valid_000_n = 1'b1;
      #(2*N) 
      data_000_n = $random;
      valid_000_n = 1'b0;
      #(2*N) 
      data_000_n = $random;
      valid_000_n = 1'b0;
      #(2*N) 
      data_000_n = $random;
      valid_000_n = 1'b0;
      #(2*N) $finish;
   end // block: OUTPUTS_BEHAVIOR

endmodule // probador

      
