module probador(  output reg [7:0] data_0p, data_1p, data_2p, data_3p,
		  output reg 	   valid_0p, valid_1p, valid_2p, valid_3p,
		  output reg 	   reset , clk_f, clk_2f, clk_4f, clk_32f,
		  input wire [7:0] data_0rp, data_1rp, data_2rp, data_3rp, 
		  input wire 	   valid_0rp, valid_1rp, valid_2rp, valid_3rp,
		  input wire [7:0] data_rx0, data_rx0_synt, 
		  input wire [7:0] data_rx1, data_rx1_synt,
		  input wire [7:0] data_rx2, data_rx2_synt, 
		  input wire [7:0] data_rx3, data_rx3_synt,
		  input wire 	   valid_rx0, valid_rx0_synt,
		  input wire 	   valid_rx1, valid_rx1_synt,
		  input wire 	   valid_rx2, valid_rx2_synt,
		  input wire 	   valid_rx3, valid_rx3_synt,
		  input wire 	   IDLE_OUT, IDLE_OUT_synt );


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
   
   
 			   
   
   always @( posedge clk_4f ) begin: CHECKER_CONDITIONAL_AND_ESTRUCTURAL
      if( data_rx0 != data_rx0_synt ) begin
	 $display( "\t tiempo ", $time, ", discrepancia estructural-condicional" );
      end
      if( data_rx1 != data_rx1_synt ) begin
	 $display( "\t tiempo ", $time, ", discrepancia estructural-condicional" );
      end
      if( data_rx2 != data_rx2_synt ) begin
	 $display( "\t tiempo ", $time, ", discrepancia estructural-condicional" );
      end
      if( data_rx3 != data_rx3_synt ) begin
	 $display( "\t tiempo ", $time, ", discrepancia estructural-condicional" );
      end
      if( valid_rx0 != valid_rx0_synt ) begin
	 $display( "\t tiempo ", $time, ", discrepancia estructural-condicional" );
      end
      if( valid_rx1 != valid_rx1_synt ) begin
	 $display( "\t tiempo ", $time, ", discrepancia estructural-condicional" );
      end
      if( valid_rx2 != valid_rx2_synt ) begin
	 $display( "\t tiempo ", $time, ", discrepancia estructural-condicional" );
      end
      if( valid_rx3 != valid_rx3_synt ) begin
	 $display( "\t tiempo ", $time, ", discrepancia estructural-condicional" );
      end
      if( IDLE_OUT != IDLE_OUT_synt ) begin
	 $display( "\t tiempo ", $time, ", discrepancia estructural-condicional" );
      end
   end
   
   initial begin
      $dumpfile( "000rrtx.vcd" );
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
      reset = 1'b0;
      data_0p = 8'h00;
      data_1p = 8'h00;
      data_2p = 8'h00;
      data_3p = 8'h00;
      {valid_0p, valid_1p, valid_2p, valid_3p} = 4'h0;
      repeat( REP ) begin
	 #(45) reset = 1'b0;
      end
      #55 reset = 1'b1; // 55 value
   end // initial begin
   
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

      
