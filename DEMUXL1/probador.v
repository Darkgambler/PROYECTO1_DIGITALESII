module probador( output reg [7:0] data_00, data_11,
		 output reg 	  valid_00, valid_11, 
		 output reg 	  clk_f, clk_2f,
		 input wire [7:0] data_0_cond, data_0_synt,
		 input wire [7:0] data_1_cond, data_1_synt,
		 input wire [7:0] data_2_cond, data_2_synt,
		 input wire [7:0] data_3_cond, data_3_synt, 
		 input wire 	  valid_0_cond, valid_0_synt,
		 input wire 	  valid_1_cond, valid_1_synt,
		 input wire 	  valid_2_cond, valid_2_synt,
		 input wire 	  valid_3_cond, valid_3_synt );

   parameter 			  N = 2;
   reg [7:0] 			  data_00_n, data_11_n;
   reg 				  valid_00_n, valid_11_n;
   
   
   
   initial begin
      $dumpfile( "demuxl1.vcd" );
      $dumpvars( 0 );
   end

   initial begin
      clk_f = 1'b0;
      clk_2f = 1'b1;
   end

   always begin
      #2 clk_f = !clk_f;
   end
   always begin
      #1 clk_2f = !clk_2f;
   end

   always @( posedge clk_2f ) begin
      data_00 <= data_00_n;
      data_11 <= data_11_n;
      valid_00 <= valid_00_n;
      valid_11 <= valid_11_n;
   end
   
   initial begin
      repeat( 2 ) begin
	 #N
	 data_00_n = $random;
	 data_11_n = $random;
	 valid_00_n = 1'b0;
	 valid_11_n = 1'b0;
      end
      #N
      data_00_n = 8'hff;
      data_11_n = 8'hdd;
      valid_00_n = 1'b1;
      valid_11_n = 1'b1;
      #N
      data_00_n = 8'hee;
      data_11_n = 8'hcc;
      valid_00_n = 1'b1;
      valid_11_n = 1'b1;
      #N
      data_00_n = 8'hbb;
      data_11_n = 8'h99;
      valid_00_n = 1'b1;
      valid_11_n = 1'b1;
      #N
      data_00_n = 8'haa;
      data_11_n = 8'h88;
      valid_00_n = 1'b1;
      valid_11_n = 1'b1;
      #N
      data_00_n = $random;
      data_11_n = 8'h77;
      valid_00_n = 1'b0;
      valid_11_n = 1'b1;
      #N
      data_00_n = $random;
      data_11_n = $random;
      valid_00_n = 1'b0;
      valid_11_n = 1'b0;
      #N
      data_00_n = $random;
      data_11_n = $random;
      valid_00_n = 1'b0;
      valid_11_n = 1'b0;
      #(4*N) $finish;
   end // initial begin
endmodule // probador
