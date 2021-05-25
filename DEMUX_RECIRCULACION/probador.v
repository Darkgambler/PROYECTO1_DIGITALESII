module probador(  output reg [7:0] data_0, data_1, data_2, data_3,
		  output reg 	   valid_0, valid_1, valid_2, valid_3,
		  output reg 	   IDLE_OUT, clk_f, clk_2f, clk_4f,
		  input wire [7:0] data_0_cond, data_1_cond,
		  input wire [7:0] data_2_cond, data_3_cond,
		  input wire 	   valid_0_cond, valid_1_cond,
		  input wire 	   valid_2_cond, valid_3_cond,
		  input wire [7:0] data_0r_cond, data_1r_cond,
		  input wire [7:0] data_2r_cond, data_3r_cond,
		  input wire 	   valid_0r_cond, valid_1r_cond,
		  input wire 	   valid_2r_cond, valid_3r_cond,
		  input wire [7:0] data_0_synt, data_1_synt,
		  input wire [7:0] data_2_synt, data_3_synt,
		  input wire 	   valid_0_synt, valid_1_synt,
		  input wire 	   valid_2_synt, valid_3_synt,
		  input wire [7:0] data_0r_synt, data_1r_synt,
		  input wire [7:0] data_2r_synt, data_3r_synt,
		  input wire 	   valid_0r_synt, valid_1r_synt,
		  input wire 	   valid_2r_synt, valid_3r_synt );

   reg [7:0] 			   data_0_n, data_1_n, data_2_n, data_3_n;
   reg 				   valid_0_n, valid_1_n, valid_2_n, valid_3_n;
   reg 				   IDLE_OUT_N;
   
 
   parameter 			   N = 8;
   
   initial begin
      $dumpfile( "recirculacion.vcd" );
      $dumpvars( 0 );
   end

   initial begin
      clk_f = 0;
      clk_2f = 1;
      clk_4f = 1;
   end
   
   always begin
      #4 clk_f = !clk_f;
   end
   always begin
      #2 clk_2f = !clk_2f;
   end
   always begin
      #1 clk_4f = !clk_4f;
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

   initial begin
      IDLE_OUT = 0;
	 repeat( 4 ) begin
	    #N IDLE_OUT = 0;
	 end
	 #1 IDLE_OUT = 1;
   end
   
   
   initial begin
	 #N
	 data_0_n = 8'hff;
	 data_1_n = 8'hee;
	 data_2_n = 8'hdd;
	 data_3_n = 8'hcc;
	 {valid_0_n, valid_1_n, valid_2_n, valid_3_n} = 4'hf;	    	 
      while( !IDLE_OUT ) begin
	 #N
	 data_0_n = data_0r_cond;
	 data_1_n = data_1r_cond;
	 data_2_n = data_2r_cond;
	 data_3_n = data_3r_cond;
	 valid_0_n = valid_0r_cond;
	 valid_1_n = valid_1r_cond;
	 valid_2_n = valid_2r_cond;
	 valid_3_n = valid_3r_cond;	    	 
      end
      data_0_n = 8'hbb;
      data_1_n = 8'haa;
      data_2_n = 8'h99;
      data_3_n = 8'h88;
      {valid_0_n, valid_1_n, valid_2_n, valid_3_n} = 4'hf;    
      #N
      data_0_n = $random;
      data_1_n = $random;
      data_2_n = 8'h77;
      data_3_n = $random;
      {valid_0_n, valid_1_n, valid_2_n, valid_3_n} = 4'h2;
      #N
      data_0_n = $random;
      data_1_n = $random;
      data_2_n = $random;
      data_3_n = $random;
      {valid_0_n, valid_1_n, valid_2_n, valid_3_n} = 4'h0;
      #N
      data_0_n = $random;
      data_1_n = $random;
      data_2_n = $random;
      data_3_n = $random;
      {valid_0_n, valid_1_n, valid_2_n, valid_3_n} = 4'h0;
      #N
      data_0_n = $random;
      data_1_n = $random;
      data_2_n = $random;
      data_3_n = $random;
      {valid_0_n, valid_1_n, valid_2_n, valid_3_n} = 4'h0;
      
      #N $finish;
      
   end // initial begin
endmodule // probador

      
