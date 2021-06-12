/* CREADOR: FREDDY ZUNIGA CERDAS PARA EL PROYECTO 1 DE
 CIRCUITOS DIGITALES II I SEMESTRE 2021.
 
 ESTE MODULO SE ENCARGA DE PASAR 4 LINEA DE DATOS PARALELOS A 
 2 LINEAS DE DATOS EN PARALELO DUPLICANDO LA FRECUENCIA.
 
 LAS SALIDAS YA SALEN SINCRONIZADAS AL FLANCO ALTO DEL clk_2f
 */

module mux4x2_8bits( output reg [7:0] data_00, data_11,
		     output reg       valid_00, valid_11,
		     input wire [7:0] data_0, data_1, data_2, data_3,
		     input wire       valid_0, valid_1, valid_2, valid_3,
		     input wire clk_2f, clk_f, reset );

   wire [8:0] 			paq_0_x;
   wire [8:0] 			paq_1_x;
   wire [8:0] 			paq_2_x;
   wire [8:0] 			paq_3_x;
   reg [8:0] 			paq_00, paq_11;
   reg 				reset_s;
   
   
   
   always @( posedge clk_2f ) begin
      reset_s <= reset;
   end
   

   assign paq_0_x = {data_0,valid_0};
   assign paq_1_x = {data_1,valid_1};
   assign paq_2_x = {data_2,valid_2};
   assign paq_3_x = {data_3,valid_3};

   
   always @( negedge clk_2f ) begin
      if( !clk_f ) begin
	 paq_00 <= paq_1_x;
	 paq_11 <= paq_3_x;
      end
      else begin
	 paq_00 <= paq_0_x;
	 paq_11 <= paq_2_x;
      end
   end // always @ ( negedge clk_2f )

   always @( posedge clk_2f ) begin
      if( reset_s ) begin
	 {data_00,valid_00} <= paq_00;
	 {data_11,valid_11} <= paq_11;
      end
      else begin
	 {data_00,valid_00} <= 9'b0;
	 {data_11,valid_11} <= 9'b0;
      end
   end
 
endmodule // mux4x2_8bits
