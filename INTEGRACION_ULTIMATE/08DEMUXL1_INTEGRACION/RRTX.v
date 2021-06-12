// LAS ENTRADAS VIENEN DE ESTE PRIMER MODULO INCLUDE
`include "etapaflops1.v"
// ESTE MODULO ES INTERMEDIO PERO AUN ASI CUENTA CON ENTRADAS
// Y SALIDAS DIFERENTES A LAS ETAPAS EXTREMAS.
`include "recirculacion.v"
`include "etapaflops2.v"
`include "mux4x2_8bits.v"
`include "mux2x1_8bits.v"
`include "paralelo_serial1.v"
`include "serial_paralelo1.v"
`include "paralelo_serial2.v"
`include "serial_paralelo2.v"
`include "demux1x2_8bits.v"
`include "etapaflops3.v"
`include "demux2x4_8bits.v"

module RRTX( output wire [7:0] data_rx0, data_rx1,
	     output wire [7:0] data_rx2, data_rx3,
	     output wire       valid_rx0, valid_rx1, 
	     output wire       valid_rx2, valid_rx3, 
	     output wire       active, inserter,
	     output wire       IDLE_OUT,
	    // NO MODIFICAR LOS OUTPUTS SIGUIENTES:
	     output wire [7:0] data_0rp, data_1rp,
	     output wire [7:0] data_2rp, data_3rp,
	     output wire       valid_0rp, valid_1rp,
	     output wire       valid_2rp, valid_3rp,
	     input wire [7:0]  data_0p, data_1p,
	     input wire [7:0]  data_2p, data_3p,
	     input wire        valid_0p, valid_1p, clk_4f, 
	     input wire        valid_2p, valid_3p, clk_f, clk_2f, 
	     input wire        clk_32f, reset /*AUTOARG*/);

   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire [7:0]		data_0;			// From FLOPS2_COND of etapaflops2.v
   wire [7:0]		data_00;		// From MUXL1_COND of mux4x2_8bits.v
   wire [7:0]		data_000;		// From MUXL2_COND of mux2x1_8bits.v
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
   wire			data_out;		// From PARSER1_COND of paralelo_serial1.v
   wire [7:0]		data_rx00;		// From DEMUXL2_COND of demux1x2_8bits.v
   wire [7:0]		data_rx000;		// From SERPAR1_COND of serial_paralelo1.v
   wire [7:0]		data_rx00s;		// From FLOPS3_COND of etapaflops3.v
   wire [7:0]		data_rx11;		// From DEMUXL2_COND of demux1x2_8bits.v
   wire [7:0]		data_rx11s;		// From FLOPS3_COND of etapaflops3.v
   wire			valid_0;		// From FLOPS2_COND of etapaflops2.v
   wire			valid_00;		// From MUXL1_COND of mux4x2_8bits.v
   wire			valid_000;		// From MUXL2_COND of mux2x1_8bits.v
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
   wire			valid_rx00;		// From DEMUXL2_COND of demux1x2_8bits.v
   wire			valid_rx000;		// From SERPAR1_COND of serial_paralelo1.v
   wire			valid_rx00s;		// From FLOPS3_COND of etapaflops3.v
   wire			valid_rx11;		// From DEMUXL2_COND of demux1x2_8bits.v
   wire			valid_rx11s;		// From FLOPS3_COND of etapaflops3.v
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
   paralelo_serial1 PARSER1_COND( /*AUTOINST*/
				 // Outputs
				 .data_out		(data_out),
				 // Inputs
				 .data_000		(data_000[7:0]),
				 .clk_32f		(clk_32f),
				 .clk_4f		(clk_4f),
				 .valid_000		(valid_000),
				 .reset			(reset));
   serial_paralelo1 SERPAR1_COND( /*AUTOINST*/
				 // Outputs
				 .data_rx000		(data_rx000[7:0]),
				 .valid_rx000		(valid_rx000),
				 .active		(active),
				 // Inputs
				 .data_out		(data_out),
				 .reset			(reset),
				 .clk_4f		(clk_4f),
				 .clk_32f		(clk_32f));
   paralelo_serial2 PARSER2_COND( /*AUTOINST*/
				 // Outputs
				 .inserter		(inserter),
				 // Inputs
				 .clk_4f		(clk_4f),
				 .clk_32f		(clk_32f),
				 .reset			(reset),
				 .active		(active));
   serial_paralelo2 SERPAR2_COND( /*AUTOINST*/
				 // Outputs
				 .IDLE_OUT		(IDLE_OUT),
				 // Inputs
				 .clk_f			(clk_f),
				 .clk_4f		(clk_4f),
				 .clk_32f		(clk_32f),
				 .reset			(reset),
				 .inserter		(inserter));
   demux1x2_8bits DEMUXL2_COND( /*AUTOINST*/
			       // Outputs
			       .data_rx00	(data_rx00[7:0]),
			       .data_rx11	(data_rx11[7:0]),
			       .valid_rx00	(valid_rx00),
			       .valid_rx11	(valid_rx11),
			       // Inputs
			       .data_rx000	(data_rx000[7:0]),
			       .valid_rx000	(valid_rx000),
			       .clk_2f		(clk_2f),
			       .clk_4f		(clk_4f),
			       .reset		(reset));
   etapaflops3 FLOPS3_COND( /*AUTOINST*/
			   // Outputs
			   .data_rx00s		(data_rx00s[7:0]),
			   .data_rx11s		(data_rx11s[7:0]),
			   .valid_rx00s		(valid_rx00s),
			   .valid_rx11s		(valid_rx11s),
			   // Inputs
			   .data_rx00		(data_rx00[7:0]),
			   .data_rx11		(data_rx11[7:0]),
			   .valid_rx00		(valid_rx00),
			   .valid_rx11		(valid_rx11),
			   .clk_2f		(clk_2f));
   demux2x4_8bits DEMUXL1_COND( /*AUTOINST*/
			       // Outputs
			       .data_rx0	(data_rx0[7:0]),
			       .data_rx1	(data_rx1[7:0]),
			       .data_rx2	(data_rx2[7:0]),
			       .data_rx3	(data_rx3[7:0]),
			       .valid_rx0	(valid_rx0),
			       .valid_rx1	(valid_rx1),
			       .valid_rx2	(valid_rx2),
			       .valid_rx3	(valid_rx3),
			       // Inputs
			       .data_rx00s	(data_rx00s[7:0]),
			       .data_rx11s	(data_rx11s[7:0]),
			       .valid_rx00s	(valid_rx00s),
			       .valid_rx11s	(valid_rx11s),
			       .clk_f		(clk_f),
			       .clk_2f		(clk_2f),
			       .reset		(reset));
   
endmodule 

   
   
