module probador( output reg [7:0] data_0, data_1, data_2, data_3,
		 output reg 	  valid_0, valid_1, valid_2, valid_3,
		 output reg 	  clk_2f, clk_f,
		 input wire [7:0] data_00_synt, data_11_synt,
		 input wire 	  valid_00_synt, valid_11_synt,
		 input wire [7:0] data_00_cond, data_11_cond,
		 input wire 	  valid_00_cond, valid_11_cond);


   reg [7:0] 			  data_0_n, data_1_n, data_2_n, data_3_n;
   reg 				  valid_0_n, valid_1_n, valid_2_n, valid_3_n;
   
   parameter 			  N = 2;
   
   initial begin: FILE_OUTPUT
      $dumpfile( "muxl1.vcd" );
      $dumpvars( 0 );
   end

   initial begin: CLK_INIT
      clk_2f = 1;
   end

   always begin: CLK_BEHAVIOR
      #2 clk_2f = !clk_2f;
   end
   initial begin
      clk_f = 0;
   end
   always begin
      #4 clk_f = !clk_f;
   end

   always @( posedge clk_f ) begin
      data_0 <= data_0_n;
      data_1 <= data_1_n;
      data_2 <= data_2_n;
      data_3 <= data_3_n;
      valid_0 <= valid_0_n;
      valid_1 <= valid_1_n;
      valid_2 <= valid_2_n;
      valid_3 <= valid_3_n;
   end
   

   initial begin: OUTPUTS_BEHAVIOR
      repeat( 2 ) begin
	 #(4*N)
	 data_0_n = $random;
	 data_1_n = $random;
	 data_2_n = $random;
	 data_3_n = $random;
	 {valid_0_n, valid_1_n, valid_2_n, valid_3_n} = 4'h0;
      end
      #(4*N) data_0_n = 8'hff;
      data_1_n = 8'hee;
      data_2_n = 8'hdd;
      data_3_n = 8'hcc;
      {valid_0_n, valid_1_n, valid_2_n, valid_3_n} = 4'hf;
      #(4*N) data_0_n = 8'hbb;
      data_1_n = 8'haa;
      data_2_n = 8'h99;
      data_3_n = 8'h88;
      {valid_0_n, valid_1_n, valid_2_n, valid_3_n} = 4'hf;
      #(4*N) data_0_n = $random;
      data_1_n = $random;
      data_2_n = 8'h77;
      data_3_n = $random;
      {valid_0_n, valid_1_n, valid_2_n, valid_3_n} = 4'h2;
      #(4*N) data_0_n = $random;
      data_1_n = $random;
      data_2_n = $random;
      data_3_n = $random;
      {valid_0_n, valid_1_n, valid_2_n, valid_3_n} = 4'h0;
      repeat( 8 ) begin	 
	 #(4*N) data_0_n = $random;
	 data_1_n = $random;
	 data_2_n = $random;
	 data_3_n = $random;
	 {valid_0_n, valid_1_n, valid_2_n, valid_3_n} = $random;
      end
      #(8*N) $finish;
   end // block: OUTPUTS_BEHAVIOR

endmodule // probador

      
