module serial_paralelo1( output reg [7:0] data_rx000,
			 output reg valid_rx000, active,
			 input wire data_out, reset,
			 input wire clk_4f, clk_32f );

   reg 				    reset_s;
   reg [2:0] 			    counter;
   reg [7:0] 			    container;
   reg [2:0] 			    BC_counter;
 			    
   

   always @( posedge clk_4f ) begin
      reset_s <= reset;
   end

   // CONTADOR INTERNO PARA CONTROLAR LA CREACION DEL
   // ARRAY PARA LA SENAL EN PARALELO
   always @( posedge clk_32f ) begin
      if( reset_s ) begin
	 counter <= counter + 1'b1;
      end
      else begin
	 counter <= 1'b0;
      end
   end

   // CONTENEDOR DE VALORES PARA LA CONSTRUCCION DE LA
   // SIGNAL EN PARALELO A PARTIR DE LA SIGNAL EN SERIE
   always @( negedge clk_32f ) begin
      if( reset_s ) begin
	 container[counter] <= data_out;
      end
      else begin
	 container <= 8'hbc;
      end
   end

   // LOGICA DEL BC_counter PARA CONTROLAR EL ACTIVE
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

   // LOGICA DEL ACTIVE
   always @( * ) begin
      if( BC_counter == 3'b100 ) begin
	 active = 1'b1;
      end
      else begin
	 active = 1'b0;
      end
   end

   // LOGICA PARA MANERJAR EL valid_rx000
   always @( posedge clk_4f ) begin
      if( !reset_s ) begin
	 valid_rx000 <= 1'b0;
      end
      else begin
	 if( BC_counter < 3'b100 ) begin
	    valid_rx000 <= 1'b0;
	 end
	 else begin
	    if( container == 8'hbc ) begin
	       valid_rx000 <= 1'b0;
	    end
	    else begin
	       valid_rx000 <= 1'b1;
	    end
	 end // else: !if( BC_counter < 3'b100 )
      end
   end // always @ ( posedge clk_4f )
   
   always @( posedge clk_4f ) begin
      data_rx000 <= container;
   end
endmodule // serial_paralelo1

   
 

   
