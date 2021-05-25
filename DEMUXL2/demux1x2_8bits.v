/* CREADOR: FREDDY ZUNIGA CERDAS PARA EL PROYECTO 1 DE
 CIRCUITOS DIGITALES II I SEMESTRE 2021.
 
 ESTE MODULO SE ENCARGA DE PASAR 1 LINEA DE DATOS SERIAL A 
 2 LINEAS DE DATOS EN PARALELO DUPLICANDO EL PERIODO.
 
 LAS SALIDAS YA SALEN SINCRONIZADAS AL FLANCO ALTO DEL clk_2f
 */

module demux1x2_8bits( output reg [7:0] data_00_cond, data_11_cond,
		       output reg 	valid_00_cond, valid_11_cond,
		       input wire [7:0] data_000,
		       input wire 	valid_000, clk_4f, clk_2f );

   reg [8:0] 				paq_00, paq_11;
   reg 					clk_2f_s;
   

   /// SE SINCRONIZO EL RELOJO 2F PUES SOLO CREABA
   /// DISCREPANCIAS ENTRE LA SINTESIS Y EL CONDICIONAL
   always @( posedge clk_4f ) begin
      clk_2f_s <= clk_2f;
   end

   always @( negedge clk_4f ) begin
      if( !clk_2f_s ) begin
	 paq_00 <= {data_000,valid_000};
      end
      else begin
	 paq_11 <= {data_000,valid_000};
      end
   end // always @ ( negedge clk_4f )
   
   always @( posedge clk_4f ) begin
      if( !clk_2f_s ) begin
	 {data_00_cond,valid_00_cond} <= paq_11;
	 {data_11_cond,valid_11_cond} <= paq_00;
      end
   end
   
	    

endmodule // demux2x1_8bits

   
   

   
