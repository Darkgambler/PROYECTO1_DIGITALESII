
/// AGREGAR LUEGO LAS SALIDAS DEL PARALELOSERIAL COND Y SYNTH
module probador( output reg [7:0] data_000,
		 output reg valid_000, reset,
		 output reg clk_32f, clk_4f,
		 input wire data_out_synt, data_out );

   parameter 		    N = 1;
   parameter 		    PERIOD = 16*N;
   
   

   // CREACION DEL ARCHIVO CON DIAGRAMA DE TIEMPOS
   initial begin
      $dumpfile( "000paraleloserial1.vcd" );
      $dumpvars( 0 );
   end

   // LOGICA DEL RELOJ SATANICO
   initial begin
      clk_32f = 1;
   end
   always begin
      #N clk_32f = !clk_32f;
   end
   initial begin
      clk_4f = 0;
   end
   always begin
      #(8*N) clk_4f = !clk_4f;
   end

   initial begin
      data_000 = $random;
      valid_000 = 1'b0;
      reset = 1'b0;
      #(PERIOD/2);
      #(PERIOD) reset = 1'b1;
      repeat( 6 ) begin
	 data_000 = $random;
	 valid_000 = 1'b0;
	 #(PERIOD);
      end
      #(PERIOD)
      data_000 = 8'h30;
      valid_000 = 1'b0;
      #(PERIOD)
      data_000 = 8'hff;
      valid_000 = 1'b1;
      #(PERIOD)
      data_000 = 8'hdd;
      #(PERIOD)
      data_000 = 8'hee;
      #(PERIOD)
      data_000 = 8'hcc;
      #(PERIOD)
      data_000 = 8'hbb;
      #(PERIOD)
      data_000 = 8'h99;
      #(PERIOD)
      data_000 = 8'haa;
      #(PERIOD)
      data_000 = 8'h88;
      #(PERIOD)
      data_000 = $random;
      valid_000 = 1'b0;
      #(PERIOD)
      data_000 = 8'h77;
      valid_000 = 1'b1;
      #(PERIOD)
      data_000 = $random;
      valid_000 = 1'b0;
      repeat( 20 ) begin
	 #(PERIOD)
	 data_000 = $random;
	 valid_000 = $random;
      end
      #(PERIOD) $finish;
   end // initial begin
   
endmodule // probador

	 
      
      
      
   

   

   
