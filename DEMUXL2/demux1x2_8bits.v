/* CREADOR: FREDDY ZUNIGA CERDAS PARA EL PROYECTO 1 DE
 CIRCUITOS DIGITALES II I SEMESTRE 2021.
 
 ESTE MODULO SE ENCARGA DE PASAR 1 LINEA DE DATOS SERIAL A 
 2 LINEAS DE DATOS EN PARALELO DUPLICANDO EL PERIODO.
 
 LAS SALIDAS YA SALEN SINCRONIZADAS AL FLANCO ALTO DEL clk_2f
 */

module demux1x2_8bits( output reg [7:0] data_rx00, data_rx11,
		       output reg 	valid_rx00, valid_rx11,
		       input wire [7:0] data_rx000,
		       input wire 	valid_rx000, 
		       input wire 	clk_2f, clk_4f, reset );

   reg [8:0] 				paq_00, paq_11;
   reg 					reset_s, clk_2f_s;
   

   /// SE SINCRONIZO EL RELOJO 2F PUES SOLO CREABA
   /// DISCREPANCIAS ENTRE LA SINTESIS Y EL CONDICIONAL
   always @( posedge clk_4f ) begin
      reset_s <= reset;
      clk_2f_s <= clk_2f;
   end

   always @( negedge clk_4f ) begin
      if( !reset_s ) begin
	 paq_00 <= 9'b0;
	 paq_11 <= 9'b0;
      end
      else begin
	 if( clk_2f ) begin
	    paq_00 <= {data_rx000, valid_rx000};
	 end
	 else begin
	    paq_11 <= {data_rx000, valid_rx000};
	 end
      end // else: !if( !reset_s )
   end // always @ ( negedge clk_4f )

   
   always @( posedge clk_4f ) begin
      if( !reset_s ) begin
	 {data_rx00, valid_rx00} <= {8'h00, 1'b0};
	 {data_rx11, valid_rx11} <= {8'h00, 1'b0};
      end
      else begin
	 if( !clk_2f_s ) begin
	    {data_rx00, valid_rx00} <= paq_00;
	    {data_rx11, valid_rx11} <= paq_11;
	 end
      end
   end // always @ ( posedge clk_4f )
   
endmodule // demux2x1_8bits

   
   

   
