/* CREADOR: FREDDY ZUNIGA CERDAS PARA EL PROYECTO 1 DE
 CIRCUITOS DIGITALES II I SEMESTRE 2021.
 
 ESTE MODULO SE ENCARGA DE PASAR 4 LINEA DE DATOS PARALELOS A 
 UNA DE LAS DOS SALIDAS DE 4 LINEAS CADA UNA, DEPENDIENDO DE
 EL VALOR DE IDLE_OUT, EN CASO DE SER 0 VUELVE A PONER LA ENTRADA
 ANTERIOR EN EL PROBADOR Y SOLO PASA DATOS A LA SALIDA 1 CUANDO
 IDLE_OUT ES 1, EN TANTO SIGA SIENDO 0 SEGUIRA EN BUCLE. 
 */

module recirculacion( output reg [7:0] data_0rf, data_1rf,
		      output reg [7:0] data_2rf, data_3rf,
		      output reg       valid_0rf, valid_1rf,
		      output reg       valid_2rf, valid_3rf,
		      output reg [7:0] data_0rp, data_1rp,
		      output reg [7:0] data_2rp, data_3rp,
		      output reg       valid_0rp, valid_1rp,
		      output reg       valid_2rp, valid_3rp,
		      input wire [7:0] data_0ps, data_1ps, data_2ps, data_3ps,
		      input wire       valid_0ps, valid_1ps, valid_2ps, valid_3ps,
		      input wire       IDLE_OUT, clk_f );
   

   // data_0rf, el rf significa recirculacion a etapa de flops2
   // data_0rp, el rp significa recirculacion a probador
   // data_0ps, el ps significa probador sincronizado
   
   always @( * ) begin
      if( IDLE_OUT ) begin
	 data_0rf = data_0ps;
	 valid_0rf = valid_0ps;
	 data_1rf = data_1ps;
	 valid_1rf = valid_1ps;
	 data_2rf = data_2ps;
	 valid_2rf = valid_2ps;
	 data_3rf = data_3ps;
	 valid_3rf = valid_3ps;
	 ///////////////////////////
	 data_0rp = 8'h00;
	 valid_0rp = 1'b0;
	 data_1rp = 8'h00;
	 valid_1rp = 1'b0;
	 data_2rp = 8'h00;
	 valid_2rp = 1'b0;
	 data_3rp = 8'h00;
	 valid_3rp = 1'b0;
      end // if ( IDLE_OUT )
      
      else begin
	 data_0rp = data_0ps;
	 valid_0rp = valid_0ps;
	 data_1rp = data_1ps;
	 valid_1rp = valid_1ps;
	 data_2rp = data_2ps;
	 valid_2rp = valid_2ps;
	 data_3rp = data_3ps;
	 valid_3rp = valid_3ps;
	 ///////////////////////////	 
	 data_0rf = 8'h00;
	 valid_0rf = 1'b0;
	 data_1rf = 8'h00;
	 valid_1rf = 1'b0;
	 data_2rf = 8'h00;
	 valid_2rf = 1'b0;
	 data_3rf = 8'h00;
	 valid_3rf = 1'b0;
      end // else: !if( IDLE_OUT )
   end // always @ ( * )

endmodule // recirculacion
