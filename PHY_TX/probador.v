module probador(  output reg [7:0] data_0p, data_1p, data_2p, data_3p,
		  output reg 	   valid_0p, valid_1p, valid_2p, valid_3p,
		  output reg 	   inserter,
		  output reg 	   reset , clk_f, clk_2f, clk_4f, clk_32f,
		  input wire [7:0] data_0rp, data_1rp, data_2rp, data_3rp, 
		  input wire 	   valid_0rp, valid_1rp, valid_2rp, valid_3rp,
		  input wire 	   IDLE_OUT, IDLE_OUT_synt,
		  input wire 	   data_out,data_out_synt );


   /* NO TOCAR ES SIMPLEMENTE PARA CONTROLAR LOS SEMIPERIODOS
      DE LOS RELOJES Y PARA CONTROLAR EL TIEMPO DE LAS SALIDAS
    */
   parameter 			   K = 1;
   parameter 			   N = 64 * K;
   /* REGULA QUE TANTO TIEMPO SE EXTIENDE EL RESET QUE SALE DEL 
      PROBADOR HACIA TODOS LOS MODULOS, VARIARLO PARA IR VIENDO
      COMO CAMBIAN LAS SENALES.
    */
   parameter 			   REP = 2; 
   
 			   
   
   always @( posedge clk_32f ) begin: CHECKER_CONDITIONAL_AND_ESTRUCTURAL
      if( data_out != data_out_synt ) begin
	 $display( "\t tiempo ", $time, ", discrepancia estructural-condicional" );
      end
   end
   
   initial begin
      $dumpfile( "000ptx.vcd" );
      $dumpvars( 0 );
   end

   initial begin
      clk_f = 0;
      clk_2f = 1;
      clk_4f = 1;
      clk_32f = 1;
   end
   
   always begin
      #(32*K) clk_f = !clk_f;
   end
   always begin
      #(16*K) clk_2f = !clk_2f;
   end
   always begin
      #(8*K) clk_4f = !clk_4f;
   end
   always begin
      #K clk_32f = !clk_32f;
   end

   initial begin
      #14;
      repeat( 10 ) begin
	 #(2*K) inserter = 1'b0;
	 #(2*K) inserter = 1'b0;
	 #(2*K) inserter = 1'b0;
	 #(2*K) inserter = 1'b0;
	 #(2*K) inserter = 1'b0;
	 #(2*K) inserter = 1'b0;
	 #(2*K) inserter = 1'b0;
	 #(2*K) inserter = 1'b0;
      end
      repeat( 5 ) begin
	 #(2*K) inserter = 1'b0;
	 #(2*K) inserter = 1'b0;
	 #(2*K) inserter = 1'b1;
	 #(2*K) inserter = 1'b1;
	 #(2*K) inserter = 1'b1;
	 #(2*K) inserter = 1'b1;
	 #(2*K) inserter = 1'b0;
	 #(2*K) inserter = 1'b1;
      end
      repeat( 50 ) begin
	 #(2*K) inserter = 1'b0;
	 #(2*K) inserter = 1'b0;
	 #(2*K) inserter = 1'b1;
	 #(2*K) inserter = 1'b1;
	 #(2*K) inserter = 1'b1;
	 #(2*K) inserter = 1'b1;
	 #(2*K) inserter = 1'b1;
	 #(2*K) inserter = 1'b0;
      end
   end // initial begin
   
	 
      
   initial begin
      reset = 1'b0;
      data_0p = 8'h00;
      data_1p = 8'h00;
      data_2p = 8'h00;
      data_3p = 8'h00;
      {valid_0p, valid_1p, valid_2p, valid_3p} = 4'h0;
      repeat( REP ) begin
	 #(N) reset = 1'b0;
      end
      #49 reset = 1'b1;
   end
   
   initial begin
	 #N
	 data_0p = 8'hff;
	 data_1p = 8'hee;
	 data_2p = 8'hdd;
	 data_3p = 8'hcc;
	 {valid_0p, valid_1p, valid_2p, valid_3p} = 4'hf;	    	 
      while( !IDLE_OUT ) begin
	 #N
	 data_0p = data_0rp;
	 data_1p = data_1rp;
	 data_2p = data_2rp;
	 data_3p = data_3rp;
	 valid_0p = valid_0rp;
	 valid_1p = valid_1rp;
	 valid_2p = valid_2rp;
	 valid_3p = valid_3rp;	    	 
      end
      data_0p = 8'hbb;
      data_1p = 8'haa;
      data_2p = 8'h99;
      data_3p = 8'h88;
      {valid_0p, valid_1p, valid_2p, valid_3p} = 4'hf;    
      #N
      data_0p = $random;
      data_1p = $random;
      data_2p = 8'h77;
      data_3p = $random;
      {valid_0p, valid_1p, valid_2p, valid_3p} = 4'h2;
      #N
      data_0p = $random;
      data_1p = $random;
      data_2p = $random;
      data_3p = $random;
      {valid_0p, valid_1p, valid_2p, valid_3p} = 4'h0;
      #N
      data_0p = $random;
      data_1p = $random;
      data_2p = $random;
      data_3p = $random;
      {valid_0p, valid_1p, valid_2p, valid_3p} = 4'h0;
      #N
      data_0p = $random;
      data_1p = $random;
      data_2p = $random;
      data_3p = $random;
      {valid_0p, valid_1p, valid_2p, valid_3p} = 4'h0;
      repeat( 15 ) begin
	 #N
	 data_0p = $random;
	 data_1p = $random;
	 data_2p = $random;
	 data_3p = $random;
	 {valid_0p, valid_1p, valid_2p, valid_3p} = $random;
      end
	 
      #N $finish;
      
   end // initial begin
endmodule // probador

      
