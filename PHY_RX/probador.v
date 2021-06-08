module probador(  output reg       data_out, reset,
		  output reg 	   clk_f, clk_2f, clk_4f, clk_32f,
		  input wire [7:0] data_rx0, data_rx1,
		  input wire [7:0] data_rx2, data_rx3,
		  input wire [7:0] data_rx0_synt, data_rx1_synt,
		  input wire [7:0] data_rx2_synt, data_rx3_synt,
		  input wire 	   valid_rx0, valid_rx1,
		  input wire 	   valid_rx2, valid_rx3,
		  input wire 	   valid_rx0_synt, valid_rx1_synt,
		  input wire 	   valid_rx2_synt, valid_rx3_synt,
		  input wire 	   inserter, inserter_synt);


   reg 				   reset_n;
   reg 				   data_out_n;
   
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
      if( inserter != inserter_synt ) begin
	 $display( "\t tiempo ", $time, ", discrepancia estructural-condicional" );
      end
   end
   
   initial begin
      $dumpfile( "000phyrx.vcd" );
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

   always @( clk_4f ) begin
      reset <= reset_n;
   end

   always @( clk_32f ) begin
      data_out <= data_out_n;
   end

   initial begin
      reset_n = 0;
      #145 reset_n = 1;
   end
   initial begin
      data_out_n = 0;
      
      #158;
      
      repeat( 15 ) begin
	 #(2*K) data_out_n = 1'b0;
	 #(2*K) data_out_n = 1'b0;
	 #(2*K) data_out_n = 1'b1;
	 #(2*K) data_out_n = 1'b1;
	 #(2*K) data_out_n = 1'b1;
	 #(2*K) data_out_n = 1'b1;
	 #(2*K) data_out_n = 1'b0;
	 #(2*K) data_out_n = 1'b1;
      end

      // 0xFF
      repeat( 1 ) begin
	 #(2*K) data_out_n = 1'b1;
	 #(2*K) data_out_n = 1'b1;
	 #(2*K) data_out_n = 1'b1;
	 #(2*K) data_out_n = 1'b1;
	 #(2*K) data_out_n = 1'b1;
	 #(2*K) data_out_n = 1'b1;
	 #(2*K) data_out_n = 1'b1;
	 #(2*K) data_out_n = 1'b1;
      end
      
      // 0xDD
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      
      // 0xEE
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      
      
      // 0xCC
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      
      // 0xBB
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b1;
      // 0x99
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b1;
      // 0xAA
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b1;
      // 0x88
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b1;
      // 0xBC
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b1;
      // 0x77
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b0;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b1;
      #(2*K) data_out_n = 1'b0;

      repeat( 15 ) begin	 
	 // 0xBC
	 #(2*K) data_out_n = 1'b0;
	 #(2*K) data_out_n = 1'b0;
	 #(2*K) data_out_n = 1'b1;
	 #(2*K) data_out_n = 1'b1;
	 #(2*K) data_out_n = 1'b1;
	 #(2*K) data_out_n = 1'b1;
	 #(2*K) data_out_n = 1'b0;
	 #(2*K) data_out_n = 1'b1;
      end
	 

      #N $finish;
      
   end // initial begin
endmodule // probador

      
