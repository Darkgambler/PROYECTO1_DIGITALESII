`include "probador.v"
`include "idletemporal.v"
`include "X.v"
`include "synth_X.v"
`include "./UTILIDADES/cmos_cells.v"
`include "synth_idletemporal.v"

module testbech;
   
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			IDLE_OUT;		// From IDLE_COND of idletemporal.v
   wire			IDLE_OUT_synt;		// From IDLE_SYNT of synth_idletemporal.v
   wire			clk_2f;			// From PROB of probador.v
   wire			clk_4f;			// From PROB of probador.v
   wire			clk_f;			// From PROB of probador.v
   wire [7:0]		data_00;		// From X_COND of X.v
   wire [7:0]		data_00_synt;		// From X_SYNT of synth_X.v
   wire [7:0]		data_0p;		// From PROB of probador.v
   wire [7:0]		data_0rp;		// From X_COND of X.v
   wire [7:0]		data_0rp_synt;		// From X_SYNT of synth_X.v
   wire [7:0]		data_11;		// From X_COND of X.v
   wire [7:0]		data_11_synt;		// From X_SYNT of synth_X.v
   wire [7:0]		data_1p;		// From PROB of probador.v
   wire [7:0]		data_1rp;		// From X_COND of X.v
   wire [7:0]		data_1rp_synt;		// From X_SYNT of synth_X.v
   wire [7:0]		data_2p;		// From PROB of probador.v
   wire [7:0]		data_2rp;		// From X_COND of X.v
   wire [7:0]		data_2rp_synt;		// From X_SYNT of synth_X.v
   wire [7:0]		data_3p;		// From PROB of probador.v
   wire [7:0]		data_3rp;		// From X_COND of X.v
   wire [7:0]		data_3rp_synt;		// From X_SYNT of synth_X.v
   wire			reset;			// From PROB of probador.v
   wire			valid_00;		// From X_COND of X.v
   wire			valid_00_synt;		// From X_SYNT of synth_X.v
   wire			valid_0p;		// From PROB of probador.v
   wire			valid_0rp;		// From X_COND of X.v
   wire			valid_0rp_synt;		// From X_SYNT of synth_X.v
   wire			valid_11;		// From X_COND of X.v
   wire			valid_11_synt;		// From X_SYNT of synth_X.v
   wire			valid_1p;		// From PROB of probador.v
   wire			valid_1rp;		// From X_COND of X.v
   wire			valid_1rp_synt;		// From X_SYNT of synth_X.v
   wire			valid_2p;		// From PROB of probador.v
   wire			valid_2rp;		// From X_COND of X.v
   wire			valid_2rp_synt;		// From X_SYNT of synth_X.v
   wire			valid_3p;		// From PROB of probador.v
   wire			valid_3rp;		// From X_COND of X.v
   wire			valid_3rp_synt;		// From X_SYNT of synth_X.v
   // End of automatics
   
   X X_COND( /*AUTOINST*/
	    // Outputs
	    .data_00			(data_00[7:0]),
	    .data_11			(data_11[7:0]),
	    .valid_00			(valid_00),
	    .valid_11			(valid_11),
	    .data_0rp			(data_0rp[7:0]),
	    .data_1rp			(data_1rp[7:0]),
	    .data_2rp			(data_2rp[7:0]),
	    .data_3rp			(data_3rp[7:0]),
	    .valid_0rp			(valid_0rp),
	    .valid_1rp			(valid_1rp),
	    .valid_2rp			(valid_2rp),
	    .valid_3rp			(valid_3rp),
	    // Inputs
	    .data_0p			(data_0p[7:0]),
	    .data_1p			(data_1p[7:0]),
	    .data_2p			(data_2p[7:0]),
	    .data_3p			(data_3p[7:0]),
	    .valid_0p			(valid_0p),
	    .valid_1p			(valid_1p),
	    .IDLE_OUT			(IDLE_OUT),
	    .valid_2p			(valid_2p),
	    .valid_3p			(valid_3p),
	    .clk_f			(clk_f),
	    .clk_2f			(clk_2f),
	    .reset			(reset));
   synth_X X_SYNT( /*AUTOINST*/
		  // Outputs
		  .data_00_synt		(data_00_synt[7:0]),
		  .data_0rp_synt	(data_0rp_synt[7:0]),
		  .data_11_synt		(data_11_synt[7:0]),
		  .data_1rp_synt	(data_1rp_synt[7:0]),
		  .data_2rp_synt	(data_2rp_synt[7:0]),
		  .data_3rp_synt	(data_3rp_synt[7:0]),
		  .valid_00_synt	(valid_00_synt),
		  .valid_0rp_synt	(valid_0rp_synt),
		  .valid_11_synt	(valid_11_synt),
		  .valid_1rp_synt	(valid_1rp_synt),
		  .valid_2rp_synt	(valid_2rp_synt),
		  .valid_3rp_synt	(valid_3rp_synt),
		  // Inputs
		  .IDLE_OUT_synt	(IDLE_OUT_synt),
		  .clk_2f		(clk_2f),
		  .clk_f		(clk_f),
		  .data_0p		(data_0p[7:0]),
		  .data_1p		(data_1p[7:0]),
		  .data_2p		(data_2p[7:0]),
		  .data_3p		(data_3p[7:0]),
		  .reset		(reset),
		  .valid_0p		(valid_0p),
		  .valid_1p		(valid_1p),
		  .valid_2p		(valid_2p),
		  .valid_3p		(valid_3p));
   idletemporal IDLE_COND( /*AUTOINST*/
			  // Outputs
			  .IDLE_OUT		(IDLE_OUT),
			  // Inputs
			  .reset		(reset),
			  .clk_f		(clk_f));
   synth_idletemporal IDLE_SYNT( /*AUTOINST*/
				// Outputs
				.IDLE_OUT_synt	(IDLE_OUT_synt),
				// Inputs
				.clk_f		(clk_f),
				.reset		(reset));
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
		 .IDLE_OUT		(IDLE_OUT),
		 .data_00		(data_00[7:0]),
		 .data_11		(data_11[7:0]),
		 .data_00_synt		(data_00_synt[7:0]),
		 .data_11_synt		(data_11_synt[7:0]),
		 .valid_00		(valid_00),
		 .valid_11		(valid_11),
		 .valid_00_synt		(valid_00_synt),
		 .valid_11_synt		(valid_11_synt));

endmodule // testbech
