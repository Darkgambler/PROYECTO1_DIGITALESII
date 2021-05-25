/* CREADOR: FREDDY ZUNIGA CERDAS PARA EL PROYECTO 1 DE
 CIRCUITOS DIGITALES II I SEMESTRE 2021.
 
 ESTE MODULO SE ENCARGA DE PASAR 2 LINEAS DE DATOS EN
 PARALELO A 4 LINEAS EN PARALELO DUPLICANDO EL PERIODO.
 
 LAS SALIDAS YA SALEN SINCRONIZADAS AL FLANCO ALTO DEL clk_f
 */

module demux2x4_8bits( output reg [7:0] data_0_cond, data_1_cond,
		       output reg [7:0] data_2_cond, data_3_cond,
		       output reg 	valid_0_cond, valid_1_cond,
		       output reg 	valid_2_cond, valid_3_cond,
		       input wire [7:0] data_00, data_11,
		       input wire 	valid_00, valid_11, 
		       input wire 	clk_f, clk_2f );
   

   reg 					clk_f_s;
   reg [8:0] 				paq_0, paq_1, paq_2, paq_3;
   

   always @( posedge clk_2f ) begin
      clk_f_s <= clk_f;
   end

   always @( negedge clk_2f ) begin
      if( !clk_f_s ) begin
	 paq_0 <= {data_00, valid_00};
	 paq_1 <= {data_11, valid_11};
      end
      else begin
	 paq_2 <= {data_00, valid_00};
	 paq_3 <= {data_11, valid_11};
      end
   end // always @ ( negedge clk_2f )

   always @( posedge clk_2f ) begin
      if( !clk_f_s ) begin
	 {data_0_cond, valid_0_cond} <= paq_2;
	 {data_1_cond, valid_1_cond} <= paq_0;
	 {data_2_cond, valid_2_cond} <= paq_3;
	 {data_3_cond, valid_3_cond} <= paq_1;
      end
   end

endmodule // demux2x4_8bits

	 
	 
      

   
   
