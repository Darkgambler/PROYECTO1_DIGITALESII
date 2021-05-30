module probador( output reg [7:0] data_rx00, data_rx11,
		 output reg 	  valid_rx00, valid_rx11, 
		 output reg 	  clk_f, clk_2f, reset,
		 input wire [7:0] data_rx0, data_rx0_synt,
		 input wire [7:0] data_rx1, data_rx1_synt,
		 input wire [7:0] data_rx2, data_rx2_synt,
		 input wire [7:0] data_rx3, data_rx3_synt, 
		 input wire 	  valid_rx0, valid_rx0_synt,
		 input wire 	  valid_rx1, valid_rx1_synt,
		 input wire 	  valid_rx2, valid_rx2_synt,
		 input wire 	  valid_rx3, valid_rx3_synt );

   parameter 			  N = 2;
   reg [7:0] 			  data_00_n, data_11_n;
   reg 				  valid_00_n, valid_11_n;
   reg 				  reset_n;
   
   
   
   
   initial begin
      $dumpfile( "demuxl1.vcd" );
      $dumpvars( 0 );
   end

   initial begin
      clk_f = 1'b0;
      clk_2f = 1'b1;
      reset = 1'b0;
   end

   always begin
      #2 clk_f = !clk_f;
   end
   always begin
      #1 clk_2f = !clk_2f;
   end

   always @( posedge clk_2f ) begin
      data_rx00 <= data_00_n;
      data_rx11 <= data_11_n;
      valid_rx00 <= valid_00_n;
      valid_rx11 <= valid_11_n;
      //reset <= reset_n;
   end
   
   initial begin
      data_00_n = 8'h00;
      data_11_n = 8'h00;
      valid_00_n = 1'b0;
      valid_11_n = 1'b0;
      #5 reset = 1'b1;
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
      repeat( 8 ) begin
	 #N
	 data_00_n = $random;
	 data_11_n = $random;
	 valid_00_n = $random;
	 valid_11_n = $random;
      end
      #(4*N) $finish;
   end // initial begin
endmodule // probador
