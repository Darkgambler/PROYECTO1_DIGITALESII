`include "recirculacion.v"
`include "synth_recirculacion.v"
`include "probador.v"
`include "./UTILIDADES/cmos_cells.v"

module testbech;
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			IDLE_OUT;		// From PROB of probador.v
   wire [7:0]		data_0;			// From PROB of probador.v
   wire [7:0]		data_0_cond;		// From COND of recirculacion.v
   wire [7:0]		data_0_synt;		// From SYNT of synth_recirculacion.v
   wire [7:0]		data_0r_cond;		// From COND of recirculacion.v
   wire [7:0]		data_0r_synt;		// From SYNT of synth_recirculacion.v
   wire [7:0]		data_1;			// From PROB of probador.v
   wire [7:0]		data_1_cond;		// From COND of recirculacion.v
   wire [7:0]		data_1_synt;		// From SYNT of synth_recirculacion.v
   wire [7:0]		data_1r_cond;		// From COND of recirculacion.v
   wire [7:0]		data_1r_synt;		// From SYNT of synth_recirculacion.v
   wire [7:0]		data_2;			// From PROB of probador.v
   wire [7:0]		data_2_cond;		// From COND of recirculacion.v
   wire [7:0]		data_2_synt;		// From SYNT of synth_recirculacion.v
   wire [7:0]		data_2r_cond;		// From COND of recirculacion.v
   wire [7:0]		data_2r_synt;		// From SYNT of synth_recirculacion.v
   wire [7:0]		data_3;			// From PROB of probador.v
   wire [7:0]		data_3_cond;		// From COND of recirculacion.v
   wire [7:0]		data_3_synt;		// From SYNT of synth_recirculacion.v
   wire [7:0]		data_3r_cond;		// From COND of recirculacion.v
   wire [7:0]		data_3r_synt;		// From SYNT of synth_recirculacion.v
   wire			valid_0;		// From PROB of probador.v
   wire			valid_0_cond;		// From COND of recirculacion.v
   wire			valid_0_synt;		// From SYNT of synth_recirculacion.v
   wire			valid_0r_cond;		// From COND of recirculacion.v
   wire			valid_0r_synt;		// From SYNT of synth_recirculacion.v
   wire			valid_1;		// From PROB of probador.v
   wire			valid_1_cond;		// From COND of recirculacion.v
   wire			valid_1_synt;		// From SYNT of synth_recirculacion.v
   wire			valid_1r_cond;		// From COND of recirculacion.v
   wire			valid_1r_synt;		// From SYNT of synth_recirculacion.v
   wire			valid_2;		// From PROB of probador.v
   wire			valid_2_cond;		// From COND of recirculacion.v
   wire			valid_2_synt;		// From SYNT of synth_recirculacion.v
   wire			valid_2r_cond;		// From COND of recirculacion.v
   wire			valid_2r_synt;		// From SYNT of synth_recirculacion.v
   wire			valid_3;		// From PROB of probador.v
   wire			valid_3_cond;		// From COND of recirculacion.v
   wire			valid_3_synt;		// From SYNT of synth_recirculacion.v
   wire			valid_3r_cond;		// From COND of recirculacion.v
   wire			valid_3r_synt;		// From SYNT of synth_recirculacion.v
   // End of automatics
   recirculacion COND( /*AUTOINST*/
		      // Outputs
		      .data_0_cond	(data_0_cond[7:0]),
		      .data_1_cond	(data_1_cond[7:0]),
		      .data_2_cond	(data_2_cond[7:0]),
		      .data_3_cond	(data_3_cond[7:0]),
		      .valid_0_cond	(valid_0_cond),
		      .valid_1_cond	(valid_1_cond),
		      .valid_2_cond	(valid_2_cond),
		      .valid_3_cond	(valid_3_cond),
		      .data_0r_cond	(data_0r_cond[7:0]),
		      .data_1r_cond	(data_1r_cond[7:0]),
		      .data_2r_cond	(data_2r_cond[7:0]),
		      .data_3r_cond	(data_3r_cond[7:0]),
		      .valid_0r_cond	(valid_0r_cond),
		      .valid_1r_cond	(valid_1r_cond),
		      .valid_2r_cond	(valid_2r_cond),
		      .valid_3r_cond	(valid_3r_cond),
		      // Inputs
		      .data_0		(data_0[7:0]),
		      .data_1		(data_1[7:0]),
		      .data_2		(data_2[7:0]),
		      .data_3		(data_3[7:0]),
		      .valid_0		(valid_0),
		      .valid_1		(valid_1),
		      .valid_2		(valid_2),
		      .valid_3		(valid_3),
		      .IDLE_OUT		(IDLE_OUT));
   synth_recirculacion SYNT( /*AUTOINST*/
			    // Outputs
			    .data_0_synt	(data_0_synt[7:0]),
			    .data_0r_synt	(data_0r_synt[7:0]),
			    .data_1_synt	(data_1_synt[7:0]),
			    .data_1r_synt	(data_1r_synt[7:0]),
			    .data_2_synt	(data_2_synt[7:0]),
			    .data_2r_synt	(data_2r_synt[7:0]),
			    .data_3_synt	(data_3_synt[7:0]),
			    .data_3r_synt	(data_3r_synt[7:0]),
			    .valid_0_synt	(valid_0_synt),
			    .valid_0r_synt	(valid_0r_synt),
			    .valid_1_synt	(valid_1_synt),
			    .valid_1r_synt	(valid_1r_synt),
			    .valid_2_synt	(valid_2_synt),
			    .valid_2r_synt	(valid_2r_synt),
			    .valid_3_synt	(valid_3_synt),
			    .valid_3r_synt	(valid_3r_synt),
			    // Inputs
			    .IDLE_OUT		(IDLE_OUT),
			    .data_0		(data_0[7:0]),
			    .data_1		(data_1[7:0]),
			    .data_2		(data_2[7:0]),
			    .data_3		(data_3[7:0]),
			    .valid_0		(valid_0),
			    .valid_1		(valid_1),
			    .valid_2		(valid_2),
			    .valid_3		(valid_3));
   probador PROB( /*AUTOINST*/
		 // Outputs
		 .data_0		(data_0[7:0]),
		 .data_1		(data_1[7:0]),
		 .data_2		(data_2[7:0]),
		 .data_3		(data_3[7:0]),
		 .valid_0		(valid_0),
		 .valid_1		(valid_1),
		 .valid_2		(valid_2),
		 .valid_3		(valid_3),
		 .IDLE_OUT		(IDLE_OUT),
		 // Inputs
		 .data_0_cond		(data_0_cond[7:0]),
		 .data_1_cond		(data_1_cond[7:0]),
		 .data_2_cond		(data_2_cond[7:0]),
		 .data_3_cond		(data_3_cond[7:0]),
		 .valid_0_cond		(valid_0_cond),
		 .valid_1_cond		(valid_1_cond),
		 .valid_2_cond		(valid_2_cond),
		 .valid_3_cond		(valid_3_cond),
		 .data_0r_cond		(data_0r_cond[7:0]),
		 .data_1r_cond		(data_1r_cond[7:0]),
		 .data_2r_cond		(data_2r_cond[7:0]),
		 .data_3r_cond		(data_3r_cond[7:0]),
		 .valid_0r_cond		(valid_0r_cond),
		 .valid_1r_cond		(valid_1r_cond),
		 .valid_2r_cond		(valid_2r_cond),
		 .valid_3r_cond		(valid_3r_cond),
		 .data_0_synt		(data_0_synt[7:0]),
		 .data_1_synt		(data_1_synt[7:0]),
		 .data_2_synt		(data_2_synt[7:0]),
		 .data_3_synt		(data_3_synt[7:0]),
		 .valid_0_synt		(valid_0_synt),
		 .valid_1_synt		(valid_1_synt),
		 .valid_2_synt		(valid_2_synt),
		 .valid_3_synt		(valid_3_synt),
		 .data_0r_synt		(data_0r_synt[7:0]),
		 .data_1r_synt		(data_1r_synt[7:0]),
		 .data_2r_synt		(data_2r_synt[7:0]),
		 .data_3r_synt		(data_3r_synt[7:0]),
		 .valid_0r_synt		(valid_0r_synt),
		 .valid_1r_synt		(valid_1r_synt),
		 .valid_2r_synt		(valid_2r_synt),
		 .valid_3r_synt		(valid_3r_synt));

endmodule // testbech
