module probador( output reg [7:0] data_00, data_11,
		 output reg 	  valid_00, valid_11,
		 output reg 	  clk_4f, clk_2f, reset,
		 input wire [7:0] data_000_synt, data_000_cond,
		 input wire 	  valid_000_synt, valid_000_cond );


   reg [7:0] 			  data_00_n, data_11_n;
   reg 				  valid_00_n, valid_11_n, reset_n;
   
   parameter 			  N = 1;
   
   initial begin: FILE_OUTPUT
      $dumpfile( "muxl2.vcd" );
      $dumpvars( 0 );
   end

   initial begin: CLK_INIT
      clk_4f = 1;
      clk_2f = 1;
   end

   always begin: CLK_BEHAVIOR
      #1 clk_4f = !clk_4f;
   end
   always begin
      #2 clk_2f = !clk_2f;
   end
   

   always @( posedge clk_2f ) begin
      data_00 <= data_00_n;
      data_11 <= data_11_n;
      valid_00 <= valid_00_n;
      valid_11 <= valid_11_n;
      reset <= reset_n;
   end
   

   initial begin: OUTPUTS_BEHAVIOR
      reset_n = 1'b0;
      data_00_n = 8'h00;
      data_11_n = 8'h00;
      {valid_00_n, valid_11_n} = 2'b00;   
      #(10*N)
      reset_n = 1'b1;
      data_00_n = 8'hff;
      data_11_n = 8'hdd;
      {valid_00_n, valid_11_n} = 2'b11;
      #(4*N) 
      data_00_n = 8'hee;
      data_11_n = 8'hcc;
      {valid_00_n, valid_11_n} = 2'b11;
      #(4*N) 
      data_00_n = 8'hbb;
      data_11_n = 8'h99;
      {valid_00_n, valid_11_n} = 2'b11;
      #(4*N) 
      data_00_n = 8'haa;
      data_11_n = 8'h88;
      {valid_00_n, valid_11_n} = 2'b11;
      #(4*N) 
      data_00_n = 8'h10;
      data_11_n = 8'h77;
      {valid_00_n, valid_11_n} = 2'b01;
      #(4*N) 
      data_00_n = $random;
      data_11_n = $random;
      {valid_00_n, valid_11_n} = 2'b00;
      repeat( 8 ) begin
	 #(4*N) 
	 data_00_n = $random;
	 data_11_n = $random;
	 {valid_00_n, valid_11_n} = $random;
      end
      #(8*N) $finish;
   end // block: OUTPUTS_BEHAVIOR

endmodule // probador

      
