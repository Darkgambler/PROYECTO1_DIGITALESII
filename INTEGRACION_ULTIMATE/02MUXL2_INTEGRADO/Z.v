// LAS ENTRADAS VIENEN DE ESTE PRIMER MODULO INCLUDE
`include "etapaflops1.v"
// ESTE MODULO ES INTERMEDIO PERO AUN ASI CUENTA CON ENTRADAS
// Y SALIDAS DIFERENTES A LAS ETAPAS EXTREMAS.
`include "recirculacion.v"
`include "etapaflops2.v"
`include "mux4x2_8bits.v"
// DE ESTE MODULO SALEN LAS SALIDAS
`include "mux2x1_8bits.v"

module Z( output wire [7:0] data_000,
	  output wire 	    valid_000,
	  output wire [7:0] data_0rp, data_1rp,
	  output wire [7:0] data_2rp, data_3rp,
	  output wire 	    valid_0rp, valid_1rp,
	  output wire 	    valid_2rp, valid_3rp,
	  input wire [7:0]  data_0p, data_1p,
	  input wire [7:0]  data_2p, data_3p,
	  input wire 	    valid_0p, valid_1p, IDLE_OUT, clk_4f, 
	  input wire 	    valid_2p, valid_3p, clk_f, clk_2f, reset /*AUTOARG*/);

   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire [7:0]		data_0;			// From FLOPS2_COND of etapaflops2.v
   wire [7:0]		data_00;		// From MUXL1_COND of mux4x2_8bits.v
   wire [7:0]		data_0ps;		// From FLOPS1_COND of etapaflops1.v
   wire [7:0]		data_0rf;		// From RECIRCULACION_COND of recirculacion.v
   wire [7:0]		data_1;			// From FLOPS2_COND of etapaflops2.v
   wire [7:0]		data_11;		// From MUXL1_COND of mux4x2_8bits.v
   wire [7:0]		data_1ps;		// From FLOPS1_COND of etapaflops1.v
   wire [7:0]		data_1rf;		// From RECIRCULACION_COND of recirculacion.v
   wire [7:0]		data_2;			// From FLOPS2_COND of etapaflops2.v
   wire [7:0]		data_2ps;		// From FLOPS1_COND of etapaflops1.v
   wire [7:0]		data_2rf;		// From RECIRCULACION_COND of recirculacion.v
   wire [7:0]		data_3;			// From FLOPS2_COND of etapaflops2.v
   wire [7:0]		data_3ps;		// From FLOPS1_COND of etapaflops1.v
   wire [7:0]		data_3rf;		// From RECIRCULACION_COND of recirculacion.v
   wire			valid_0;		// From FLOPS2_COND of etapaflops2.v
   wire			valid_00;		// From MUXL1_COND of mux4x2_8bits.v
   wire			valid_0ps;		// From FLOPS1_COND of etapaflops1.v
   wire			valid_0rf;		// From RECIRCULACION_COND of recirculacion.v
   wire			valid_1;		// From FLOPS2_COND of etapaflops2.v
   wire			valid_11;		// From MUXL1_COND of mux4x2_8bits.v
   wire			valid_1ps;		// From FLOPS1_COND of etapaflops1.v
   wire			valid_1rf;		// From RECIRCULACION_COND of recirculacion.v
   wire			valid_2;		// From FLOPS2_COND of etapaflops2.v
   wire			valid_2ps;		// From FLOPS1_COND of etapaflops1.v
   wire			valid_2rf;		// From RECIRCULACION_COND of recirculacion.v
   wire			valid_3;		// From FLOPS2_COND of etapaflops2.v
   wire			valid_3ps;		// From FLOPS1_COND of etapaflops1.v
   wire			valid_3rf;		// From RECIRCULACION_COND of recirculacion.v
   // End of automatics
   
   etapaflops1 FLOPS1_COND( /*AUTOINST*/
			   // Outputs
			   .data_0ps		(data_0ps[7:0]),
			   .data_1ps		(data_1ps[7:0]),
			   .data_2ps		(data_2ps[7:0]),
			   .data_3ps		(data_3ps[7:0]),
			   .valid_0ps		(valid_0ps),
			   .valid_1ps		(valid_1ps),
			   .valid_2ps		(valid_2ps),
			   .valid_3ps		(valid_3ps),
			   // Inputs
			   .data_0p		(data_0p[7:0]),
			   .data_1p		(data_1p[7:0]),
			   .data_2p		(data_2p[7:0]),
			   .data_3p		(data_3p[7:0]),
			   .valid_0p		(valid_0p),
			   .valid_1p		(valid_1p),
			   .valid_2p		(valid_2p),
			   .valid_3p		(valid_3p),
			   .clk_f		(clk_f));
   recirculacion RECIRCULACION_COND( /*AUTOINST*/
				    // Outputs
				    .data_0rf		(data_0rf[7:0]),
				    .data_1rf		(data_1rf[7:0]),
				    .data_2rf		(data_2rf[7:0]),
				    .data_3rf		(data_3rf[7:0]),
				    .valid_0rf		(valid_0rf),
				    .valid_1rf		(valid_1rf),
				    .valid_2rf		(valid_2rf),
				    .valid_3rf		(valid_3rf),
				    .data_0rp		(data_0rp[7:0]),
				    .data_1rp		(data_1rp[7:0]),
				    .data_2rp		(data_2rp[7:0]),
				    .data_3rp		(data_3rp[7:0]),
				    .valid_0rp		(valid_0rp),
				    .valid_1rp		(valid_1rp),
				    .valid_2rp		(valid_2rp),
				    .valid_3rp		(valid_3rp),
				    // Inputs
				    .data_0ps		(data_0ps[7:0]),
				    .data_1ps		(data_1ps[7:0]),
				    .data_2ps		(data_2ps[7:0]),
				    .data_3ps		(data_3ps[7:0]),
				    .valid_0ps		(valid_0ps),
				    .valid_1ps		(valid_1ps),
				    .valid_2ps		(valid_2ps),
				    .valid_3ps		(valid_3ps),
				    .IDLE_OUT		(IDLE_OUT));
   etapaflops2 FLOPS2_COND( /*AUTOINST*/
			   // Outputs
			   .data_0		(data_0[7:0]),
			   .data_1		(data_1[7:0]),
			   .data_2		(data_2[7:0]),
			   .data_3		(data_3[7:0]),
			   .valid_0		(valid_0),
			   .valid_1		(valid_1),
			   .valid_2		(valid_2),
			   .valid_3		(valid_3),
			   // Inputs
			   .data_0rf		(data_0rf[7:0]),
			   .data_1rf		(data_1rf[7:0]),
			   .data_2rf		(data_2rf[7:0]),
			   .data_3rf		(data_3rf[7:0]),
			   .valid_0rf		(valid_0rf),
			   .valid_1rf		(valid_1rf),
			   .valid_2rf		(valid_2rf),
			   .valid_3rf		(valid_3rf),
			   .clk_f		(clk_f));
   mux4x2_8bits MUXL1_COND( /*AUTOINST*/
			   // Outputs
			   .data_00		(data_00[7:0]),
			   .data_11		(data_11[7:0]),
			   .valid_00		(valid_00),
			   .valid_11		(valid_11),
			   // Inputs
			   .data_0		(data_0[7:0]),
			   .data_1		(data_1[7:0]),
			   .data_2		(data_2[7:0]),
			   .data_3		(data_3[7:0]),
			   .valid_0		(valid_0),
			   .valid_1		(valid_1),
			   .valid_2		(valid_2),
			   .valid_3		(valid_3),
			   .clk_2f		(clk_2f),
			   .clk_f		(clk_f),
			   .reset		(reset));
   mux2x1_8bits MUXL2_COND( /*AUTOINST*/
			   // Outputs
			   .data_000		(data_000[7:0]),
			   .valid_000		(valid_000),
			   // Inputs
			   .data_00		(data_00[7:0]),
			   .data_11		(data_11[7:0]),
			   .valid_00		(valid_00),
			   .valid_11		(valid_11),
			   .clk_4f		(clk_4f),
			   .clk_2f		(clk_2f),
			   .reset		(reset));

endmodule // W

   
   
