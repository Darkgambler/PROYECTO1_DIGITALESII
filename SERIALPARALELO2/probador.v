
module probador( output reg       inserter, reset,
		 output reg 	  clk_32f, clk_4f, clk_f,
		 input wire 	  IDLE_OUT, IDLE_OUT_synt );

   parameter 		    N = 1;
   parameter 		    PERIOD = 16*N;
   
   

   // CREACION DEL ARCHIVO CON DIAGRAMA DE TIEMPOS
   initial begin
      $dumpfile( "000serialparalelo2.vcd" );
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
      clk_4f = 1;
   end
   always begin
      #(8*N) clk_4f = !clk_4f;
   end
   initial begin
      clk_f = 0;
   end
   always begin
      #(32*N) clk_f = !clk_f;
   end

   initial begin
      inserter = 1'b0;
      reset = 1'b0;
      #(PERIOD/2);
      #(2*PERIOD) reset = 1'b1;    
      #(4*PERIOD);
      #22;
      repeat( 8 ) begin
      #(2*N) 
      inserter = 1'b0;
      #(2*N) 
      inserter = 1'b0;
      #(2*N) 
      inserter = 1'b1;
      #(2*N) 
      inserter = 1'b1;
      #(2*N) 
      inserter = 1'b1;
      #(2*N) 
      inserter = 1'b1;
      #(2*N) 
      inserter = 1'b0;
      #(2*N) 
      inserter = 1'b1;
      end // repeat ( 8 )
      repeat( 5 ) begin
      #(2*N) 
      inserter = 1'b0;
      #(2*N) 
      inserter = 1'b0;
      #(2*N) 
      inserter = 1'b1;
      #(2*N) 
      inserter = 1'b1;
      #(2*N) 
      inserter = 1'b1;
      #(2*N) 
      inserter = 1'b1;
      #(2*N) 
      inserter = 1'b1;
      #(2*N) 
      inserter = 1'b0;
      end
  
      
      #(25*N) $finish;
   end // initial begin
   
endmodule // probador

	 
      
      
      
   

   

   
