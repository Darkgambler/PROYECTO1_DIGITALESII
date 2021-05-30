`include "recirculacion_sincronico.v"
`include "synth_recirculacion_sincronico.v"
//`include "synth_recirculacion.v"
`include "probador.v"
`include "idletemporal.v"
`include "synth_idletemporal.v"
`include "./UTILIDADES/cmos_cells.v"

module testbech;
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			IDLE_OUT;		// From IDLE_COND of idletemporal.v
   wire			IDLE_OUT_synt;		// From IDLE_SYNT of synth_idletemporal.v
   wire			clk_2f;			// From PROB of probador.v
   wire			clk_4f;			// From PROB of probador.v
   wire			clk_f;			// From PROB of probador.v
   wire [7:0]		data_0;			// From COND of recirculacion_sincronico.v
   wire [7:0]		data_0_synt;		// From SYNT of synth_recirculacion_sincronico.v
   wire [7:0]		data_0p;		// From PROB of probador.v
   wire [7:0]		data_0rp;		// From COND of recirculacion_sincronico.v
   wire [7:0]		data_1;			// From COND of recirculacion_sincronico.v
   wire [7:0]		data_1_synt;		// From SYNT of synth_recirculacion_sincronico.v
   wire [7:0]		data_1p;		// From PROB of probador.v
   wire [7:0]		data_1ps_synt6;		// From SYNT of synth_recirculacion_sincronico.v
   wire [7:0]		data_1ps_synt7;		// From SYNT of synth_recirculacion_sincronico.v
   wire [7:0]		data_1ps_synt8;		// From SYNT of synth_recirculacion_sincronico.v
   wire [7:0]		data_1ps_synt9;		// From SYNT of synth_recirculacion_sincronico.v
   wire [7:0]		data_1rp;		// From COND of recirculacion_sincronico.v
   wire [7:0]		data_2;			// From COND of recirculacion_sincronico.v
   wire [7:0]		data_2_synt;		// From SYNT of synth_recirculacion_sincronico.v
   wire [7:0]		data_2p;		// From PROB of probador.v
   wire			data_2ps_synt0;		// From SYNT of synth_recirculacion_sincronico.v
   wire			data_2ps_synt1;		// From SYNT of synth_recirculacion_sincronico.v
   wire			data_2ps_synt2;		// From SYNT of synth_recirculacion_sincronico.v
   wire			data_2ps_synt3;		// From SYNT of synth_recirculacion_sincronico.v
   wire [7:0]		data_2rp;		// From COND of recirculacion_sincronico.v
   wire [7:0]		data_3;			// From COND of recirculacion_sincronico.v
   wire [7:0]		data_3_synt;		// From SYNT of synth_recirculacion_sincronico.v
   wire [7:0]		data_3p;		// From PROB of probador.v
   wire [7:0]		data_3rp;		// From COND of recirculacion_sincronico.v
   wire			reset;			// From PROB of probador.v
   wire			valid_0;		// From COND of recirculacion_sincronico.v
   wire			valid_0_synt;		// From SYNT of synth_recirculacion_sincronico.v
   wire			valid_0p;		// From PROB of probador.v
   wire			valid_0rp;		// From COND of recirculacion_sincronico.v
   wire			valid_1;		// From COND of recirculacion_sincronico.v
   wire			valid_1_synt;		// From SYNT of synth_recirculacion_sincronico.v
   wire			valid_1p;		// From PROB of probador.v
   wire			valid_1rp;		// From COND of recirculacion_sincronico.v
   wire			valid_2;		// From COND of recirculacion_sincronico.v
   wire			valid_2_synt;		// From SYNT of synth_recirculacion_sincronico.v
   wire			valid_2p;		// From PROB of probador.v
   wire			valid_2rp;		// From COND of recirculacion_sincronico.v
   wire			valid_3;		// From COND of recirculacion_sincronico.v
   wire			valid_3_synt;		// From SYNT of synth_recirculacion_sincronico.v
   wire			valid_3p;		// From PROB of probador.v
   wire			valid_3rp;		// From COND of recirculacion_sincronico.v
   // End of automatics
   probador PROB( /*AUTOINST*/
		 // Outputs
		 .data_0p		(data_0p[7:0]),
		 .data_1p		(data_1p[7:0]),
		 .data_2p		(data_2p[7:0]),
		 .data_3p		(data_3p[7:0]),
		 .valid_0p		(valid_0p),
		 .valid_1p		(valid_1p),
		 .valid_2p		(valid_2p),
		 .valid_3p		(valid_3p),
		 .reset			(reset),
		 .clk_f			(clk_f),
		 .clk_2f		(clk_2f),
		 .clk_4f		(clk_4f),
		 // Inputs
		 .data_0rp		(data_0rp[7:0]),
		 .data_1rp		(data_1rp[7:0]),
		 .data_2rp		(data_2rp[7:0]),
		 .data_3rp		(data_3rp[7:0]),
		 .valid_0rp		(valid_0rp),
		 .valid_1rp		(valid_1rp),
		 .valid_2rp		(valid_2rp),
		 .valid_3rp		(valid_3rp),
		 .IDLE_OUT		(IDLE_OUT));
   recirculacion_sincronico COND( /*AUTOINST*/
				 // Outputs
				 .data_0		(data_0[7:0]),
				 .data_1		(data_1[7:0]),
				 .data_2		(data_2[7:0]),
				 .data_3		(data_3[7:0]),
				 .valid_0		(valid_0),
				 .valid_1		(valid_1),
				 .valid_2		(valid_2),
				 .valid_3		(valid_3),
				 .data_0rp		(data_0rp[7:0]),
				 .data_1rp		(data_1rp[7:0]),
				 .data_2rp		(data_2rp[7:0]),
				 .data_3rp		(data_3rp[7:0]),
				 .valid_0rp		(valid_0rp),
				 .valid_1rp		(valid_1rp),
				 .valid_2rp		(valid_2rp),
				 .valid_3rp		(valid_3rp),
				 // Inputs
				 .data_0p		(data_0p[7:0]),
				 .data_1p		(data_1p[7:0]),
				 .data_2p		(data_2p[7:0]),
				 .data_3p		(data_3p[7:0]),
				 .valid_0p		(valid_0p),
				 .valid_1p		(valid_1p),
				 .valid_2p		(valid_2p),
				 .valid_3p		(valid_3p),
				 .IDLE_OUT		(IDLE_OUT),
				 .clk_f			(clk_f));
   idletemporal IDLE_COND( /*AUTOINST*/
			  // Outputs
			  .IDLE_OUT		(IDLE_OUT),
			  // Inputs
			  .reset		(reset),
			  .clk_f		(clk_f));
   synth_recirculacion_sincronico SYNT( /*AUTOINST*/
				       // Outputs
				       .data_0_synt	(data_0_synt[7:0]),
				       .data_1ps_synt6	(data_1ps_synt6[7:0]),
				       .data_1_synt	(data_1_synt[7:0]),
				       .data_1ps_synt7	(data_1ps_synt7[7:0]),
				       .data_2_synt	(data_2_synt[7:0]),
				       .data_1ps_synt8	(data_1ps_synt8[7:0]),
				       .data_3_synt	(data_3_synt[7:0]),
				       .data_1ps_synt9	(data_1ps_synt9[7:0]),
				       .valid_0_synt	(valid_0_synt),
				       .data_2ps_synt0	(data_2ps_synt0),
				       .valid_1_synt	(valid_1_synt),
				       .data_2ps_synt1	(data_2ps_synt1),
				       .valid_2_synt	(valid_2_synt),
				       .data_2ps_synt2	(data_2ps_synt2),
				       .valid_3_synt	(valid_3_synt),
				       .data_2ps_synt3	(data_2ps_synt3),
				       // Inputs
				       .IDLE_OUT_synt	(IDLE_OUT_synt),
				       .clk_f		(clk_f),
				       .data_0p		(data_0p[7:0]),
				       .data_1p		(data_1p[7:0]),
				       .data_2p		(data_2p[7:0]),
				       .data_3p		(data_3p[7:0]),
				       .valid_0p	(valid_0p),
				       .valid_1p	(valid_1p),
				       .valid_2p	(valid_2p),
				       .valid_3p	(valid_3p));
   synth_idletemporal IDLE_SYNT( /*AUTOINST*/
				// Outputs
				.IDLE_OUT_synt	(IDLE_OUT_synt),
				// Inputs
				.clk_f		(clk_f),
				.reset		(reset));
   
   
   //synth_recirculacion SYNT( /*AUTOINST*/);

endmodule // testbech
