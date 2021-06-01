
module probador( output reg       data_out, reset,
		 output reg 	  clk_32f, clk_4f,
		 input wire [7:0] data_rx000_synt, data_rx000,
		 input wire 	  valid_rx000, valid_rx000_synt,
		 input wire 	  active_synt, active );

   parameter 		    N = 1;
   parameter 		    PERIOD = 16*N;
   
   

   // CREACION DEL ARCHIVO CON DIAGRAMA DE TIEMPOS
   initial begin
      $dumpfile( "000serialparalelo1.vcd" );
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
      data_out = 1'b0;
      reset = 1'b0;
      #(PERIOD/2);
      #(PERIOD) reset = 1'b1;    
      #(4*PERIOD);
      #14;
      repeat( 8 ) begin
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      end // repeat ( 8 )
      
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;

      
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;

      
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;

      
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;

      
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b0;

      repeat( 4 ) begin
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      end // repeat ( 4 )

      reset = 1'b0;
      #(16*N) reset = 1'b1;
      repeat( 8 ) begin
	 #(2*N) data_out = $random;
      end

      
      repeat( 4 ) begin
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b1;
      #(2*N) 
      data_out = 1'b0;
      #(2*N) 
      data_out = 1'b1;
      end // repeat ( 4 )
      repeat( 8 ) begin
	 #(2*N) data_out = $random;
      end
	 
      
      repeat( 32 ) begin
	 #(2*N) data_out = $random;
      end
      #(25*N) $finish;
   end // initial begin
   
endmodule // probador

	 
      
      
      
   

   

   
