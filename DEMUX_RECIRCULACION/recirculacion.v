/* CREADOR: FREDDY ZUNIGA CERDAS PARA EL PROYECTO 1 DE
 CIRCUITOS DIGITALES II I SEMESTRE 2021.
 
 ESTE MODULO SE ENCARGA DE PASAR 4 LINEA DE DATOS PARALELOS A 
 UNA DE LAS DOS SALIDAS DE 4 LINEAS CADA UNA, DEPENDIENDO DE
 EL VALOR DE IDLE_OUT, EN CASO DE SER 0 VUELVE A PONER LA ENTRADA
 ANTERIOR EN EL PROBADOR Y SOLO PASA DATOS A LA SALIDA 1 CUANDO
 IDLE_OUT ES 1, EN TANTO SIGA SIENDO 0 SEGUIRA EN BUCLE. 
 */

module recirculacion( output reg [7:0] data_0_cond, data_1_cond,
		      output reg [7:0] data_2_cond, data_3_cond,
		      output reg       valid_0_cond, valid_1_cond,
		      output reg       valid_2_cond, valid_3_cond,
		      output reg [7:0] data_0r_cond, data_1r_cond,
		      output reg [7:0] data_2r_cond, data_3r_cond,
		      output reg       valid_0r_cond, valid_1r_cond,
		      output reg       valid_2r_cond, valid_3r_cond,
		      input wire [7:0] data_0, data_1, data_2, data_3,
		      input wire       valid_0, valid_1, valid_2, valid_3,
		      input wire       IDLE_OUT );

   always @( * ) begin
      if( IDLE_OUT ) begin
	 data_0_cond = data_0;
	 valid_0_cond = valid_0;
	 data_1_cond = data_1;
	 valid_1_cond = valid_1;
	 data_2_cond = data_2;
	 valid_2_cond = valid_2;
	 data_3_cond = data_3;
	 valid_3_cond = valid_3;
	 ///////////////////////////
	 data_0r_cond = 8'h00;
	 valid_0r_cond = 1'b0;
	 data_1r_cond = 8'h00;
	 valid_1r_cond = 1'b0;
	 data_2r_cond = 8'h00;
	 valid_2r_cond = 1'b0;
	 data_3r_cond = 8'h00;
	 valid_3r_cond = 1'b0;
      end
      else begin
	 data_0r_cond = data_0;
	 valid_0r_cond = valid_0;
	 data_1r_cond = data_1;
	 valid_1r_cond = valid_1;
	 data_2r_cond = data_2;
	 valid_2r_cond = valid_2;
	 data_3r_cond = data_3;
	 valid_3r_cond = valid_3;
	 ///////////////////////////	 
	 data_0_cond = 8'h00;
	 valid_0_cond = 1'b0;
	 data_1_cond = 8'h00;
	 valid_1_cond = 1'b0;
	 data_2_cond = 8'h00;
	 valid_2_cond = 1'b0;
	 data_3_cond = 8'h00;
	 valid_3_cond = 1'b0;
      end // else: !if( IDLE_OUT )
   end // always @ ( * )

endmodule // recirculacion
