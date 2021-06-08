/* CREADOR: FREDDY ZUNIGA CERDAS PARA EL PROYECTO 1 DE
 CIRCUITOS DIGITALES II I SEMESTRE 2021.
 
 ESTE MODULO SE ENCARGA DE PASAR 2 LINEAS DE DATOS EN
 PARALELO A 4 LINEAS EN PARALELO DUPLICANDO EL PERIODO.
 
 LAS SALIDAS YA SALEN SINCRONIZADAS AL FLANCO ALTO DEL clk_f
 */

module demux2x4_8bits( output reg [7:0] data_rx0, data_rx1,
		       output reg [7:0] data_rx2, data_rx3,
		       output reg 	valid_rx0, valid_rx1,
		       output reg 	valid_rx2, valid_rx3,
		       input wire [7:0] data_rx00s, data_rx11s,
		       input wire 	valid_rx00s, valid_rx11s, 
		       input wire       clk_f, clk_2f, reset );
   

   reg 					reset_s;
   reg [8:0] 				paq_0, paq_1, paq_2, paq_3;
   reg					clk_f_s;


   always @( posedge clk_2f ) begin
      reset_s <= reset;
      clk_f_s <= clk_f;
   end

   
   always @( negedge clk_2f ) begin
      if( clk_f_s ) begin
	 paq_0 <= {data_rx00s, valid_rx00s};
	 paq_2 <= {data_rx11s, valid_rx11s};
      end
      else begin
	 paq_1 <= {data_rx00s, valid_rx00s};
	 paq_3 <= {data_rx11s, valid_rx11s};
      end     
   end // always @ ( negedge clk_2f )

   always @( posedge clk_2f ) begin
      if( reset_s ) begin
	 if( !clk_f_s ) begin
	    {data_rx0, valid_rx0} <= paq_0;
	    {data_rx1, valid_rx1} <= paq_1;
	    {data_rx2, valid_rx2} <= paq_2;
	    {data_rx3, valid_rx3} <= paq_3;
	 end
      end
      else begin
	 {data_rx0, valid_rx0} <= 9'b0;
	 {data_rx1, valid_rx1} <= 9'b0;
	 {data_rx2, valid_rx2} <= 9'b0;
	 {data_rx3, valid_rx3} <= 9'b0;
      end	 
   end

endmodule // demux2x4_8bits

	 
	 
      

   
   
