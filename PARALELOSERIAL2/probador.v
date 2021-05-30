
module probador( output reg active, reset,
		 output reg clk_32f, clk_4f,
		 input wire inserter_synt, inserter );

   parameter 		    N = 1;
   parameter 		    PERIOD = 16*N;
   
   

   // CREACION DEL ARCHIVO CON DIAGRAMA DE TIEMPOS
   initial begin
      $dumpfile( "000paraleloserial2.vcd" );
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
      active = 1'b0;
      reset = 1'b0;
      #(PERIOD/2);
      #(PERIOD) reset = 1'b1;
      
      #(4*PERIOD)
      active = 1'b1;
      
      #(5*PERIOD) $finish;
   end // initial begin
   
endmodule // probador

	 
      
      
      
   

   

   
