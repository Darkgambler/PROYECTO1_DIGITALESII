module serial_paralelo2( output reg IDLE_OUT,
			 input wire clk_f, clk_4f, clk_32f,
			 input wire reset, inserter );


   reg 				    reset_s, IDLE_OUT_N;
   reg 				    BC_counter4, idle_in;
   reg [2:0] 			    counter, BC_counter;
   reg [7:0] 			    container;
   
   
   always @( posedge clk_4f ) begin
      reset_s <= reset;
   end

   always @( posedge clk_32f ) begin
      if( reset_s ) begin
	 counter <= counter + 3'b001;
      end
      else begin
	 counter <= 3'b000;
      end
   end

   always @( negedge clk_32f ) begin
      container[counter] <= inserter;
   end

   // COMPORTAMIENTO DEL BC_counter
   always @( posedge clk_4f ) begin
      if( !reset_s ) begin
	 BC_counter <= 3'b000;
      end
      else begin
	 if( container == 8'hbc && BC_counter < 3'b100 ) begin
	    BC_counter <= BC_counter + 3'b001;
	 end
	 else begin
	    BC_counter <= BC_counter;
	 end
      end // else: !if( !reset_s )
   end // always @ ( posedge clk_4f )

   // LOGICA DE idle_in 
   always @( posedge clk_4f ) begin
      if( !reset_s ) begin
	 idle_in <= 1'b0;
      end
      else begin
	 if( container == 8'h7c ) begin
	    idle_in <= 1'b1;
	 end
	 else begin
	    idle_in <= idle_in;
	 end
      end // else: !if( !reset_s )
   end // always @ ( posedge clk_4f )
   
   // LOGICA DEL BC_counter4
   always @( * ) begin
      if( BC_counter >= 3'b100 ) begin
	 BC_counter4 = 1'b1;
      end
      else begin
	 BC_counter4 = 1'b0;
      end
   end
  
   // LOGICA DE IDLE_OUT
   
   always @( * ) begin
      if( BC_counter4 & idle_in ) begin
	 IDLE_OUT_N = 1'b1;
      end
      else begin
	 IDLE_OUT_N = 1'b0;
      end
   end

   always @( posedge clk_f ) begin
      if( reset_s ) begin
	 IDLE_OUT <= IDLE_OUT_N;
      end
      else begin
	 IDLE_OUT <= 1'b0;
      end
   end
   
   
endmodule // serial_paralelo2

      
      
      
   
