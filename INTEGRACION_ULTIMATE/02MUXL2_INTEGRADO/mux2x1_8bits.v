/* CREADOR: FREDDY ZUNIGA CERDAS PARA EL PROYECTO 1 DE
 CIRCUITOS DIGITALES II I SEMESTRE 2021.
 
 ESTE MODULO SE ENCARGA DE PASAR 2 LINEA DE DATOS PARALELOS A 
 1 LINEA DE DATOS SERIAL DUPLICANDO LA FRECUENCIA.
 
 LAS SALIDAS YA SALEN SINCRONIZADAS AL FLANCO ALTO DEL clk_4f
 */

module mux2x1_8bits( output reg [7:0] data_000,
		     output reg       valid_000,
		     input wire [7:0] data_00, data_11,
		     input wire       valid_00, valid_11,
		     input wire clk_4f, clk_2f, reset );

   wire [8:0] 			paq_0_x;
   wire [8:0] 			paq_1_x;
   reg [8:0] 			paq_000;
   reg 				reset_s;
   
   
   
   always @( posedge clk_4f ) begin
      reset_s <= reset;
   end
   

   assign paq_0_x = {data_00,valid_00};
   assign paq_1_x = {data_11,valid_11};

   always @( negedge clk_4f ) begin
      if( !clk_2f ) begin
	 paq_000 <= paq_1_x;
      end
      else begin
	 paq_000 <= paq_0_x;
      end
   end // always @ ( negedge clk_2f )

   always @( posedge clk_4f ) begin
      if( reset_s ) begin
	 {data_000,valid_000} <= paq_000;
      end
      else begin
	 {data_000,valid_000} <= 9'b0;
      end
   end  
 
endmodule // mux4x2_8bits
