`include "probador.v"
`include "idletemporal.v"
`include "PRX.v"
`include "./UTILIDADES/cmos_cells.v"
///// INCLUDES OF SYNTHESIS
`include "synth_idletemporal.v"
`include "synth_PRX.v"

module testbech;
   
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			IDLE_OUT;		// From IDLE_COND of idletemporal.v
   wire			IDLE_OUT_synt;		// From IDLE_SYNT of synth_idletemporal.v
   wire			active;			// From PRX_COND of PRX.v
   wire			active_synt;		// From PRX_SYNT of synth_PRX.v
   wire			clk_2f;			// From PROB of probador.v
   wire			clk_32f;		// From PROB of probador.v
   wire			clk_4f;			// From PROB of probador.v
   wire			clk_f;			// From PROB of probador.v
   wire [7:0]		data_0p;		// From PROB of probador.v
   wire [7:0]		data_0rp;		// From PRX_COND of PRX.v
   wire [7:0]		data_0rp_synt;		// From PRX_SYNT of synth_PRX.v
   wire [7:0]		data_1p;		// From PROB of probador.v
   wire [7:0]		data_1rp;		// From PRX_COND of PRX.v
   wire [7:0]		data_1rp_synt;		// From PRX_SYNT of synth_PRX.v
   wire [7:0]		data_2p;		// From PROB of probador.v
   wire [7:0]		data_2rp;		// From PRX_COND of PRX.v
   wire [7:0]		data_2rp_synt;		// From PRX_SYNT of synth_PRX.v
   wire [7:0]		data_3p;		// From PROB of probador.v
   wire [7:0]		data_3rp;		// From PRX_COND of PRX.v
   wire [7:0]		data_3rp_synt;		// From PRX_SYNT of synth_PRX.v
   wire [7:0]		data_rx000;		// From PRX_COND of PRX.v
   wire [7:0]		data_rx000_synt;	// From PRX_SYNT of synth_PRX.v
   wire			reset;			// From PROB of probador.v
   wire			valid_0p;		// From PROB of probador.v
   wire			valid_0rp;		// From PRX_COND of PRX.v
   wire			valid_0rp_synt;		// From PRX_SYNT of synth_PRX.v
   wire			valid_1p;		// From PROB of probador.v
   wire			valid_1rp;		// From PRX_COND of PRX.v
   wire			valid_1rp_synt;		// From PRX_SYNT of synth_PRX.v
   wire			valid_2p;		// From PROB of probador.v
   wire			valid_2rp;		// From PRX_COND of PRX.v
   wire			valid_2rp_synt;		// From PRX_SYNT of synth_PRX.v
   wire			valid_3p;		// From PROB of probador.v
   wire			valid_3rp;		// From PRX_COND of PRX.v
   wire			valid_3rp_synt;		// From PRX_SYNT of synth_PRX.v
   wire			valid_rx000;		// From PRX_COND of PRX.v
   wire			valid_rx000_synt;	// From PRX_SYNT of synth_PRX.v
   // End of automatics
   
   PRX PRX_COND( /*AUTOINST*/
		// Outputs
		.data_rx000		(data_rx000[7:0]),
		.valid_rx000		(valid_rx000),
		.active			(active),
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
		.IDLE_OUT		(IDLE_OUT),
		.clk_4f			(clk_4f),
		.valid_2p		(valid_2p),
		.valid_3p		(valid_3p),
		.clk_f			(clk_f),
		.clk_2f			(clk_2f),
		.clk_32f		(clk_32f),
		.reset			(reset));
   idletemporal IDLE_COND( /*AUTOINST*/
			  // Outputs
			  .IDLE_OUT		(IDLE_OUT),
			  // Inputs
			  .reset		(reset),
			  .clk_f		(clk_f));
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
		 .clk_32f		(clk_32f),
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
		 .data_rx000		(data_rx000[7:0]),
		 .data_rx000_synt	(data_rx000_synt[7:0]),
		 .valid_rx000		(valid_rx000),
		 .valid_rx000_synt	(valid_rx000_synt),
		 .active		(active),
		 .active_synt		(active_synt));
   //// ARCHIVOS DE SINTESIS
   synth_idletemporal IDLE_SYNT( /*AUTOINST*/
				// Outputs
				.IDLE_OUT_synt	(IDLE_OUT_synt),
				// Inputs
				.clk_f		(clk_f),
				.reset		(reset));
   synth_PRX PRX_SYNT( /*AUTOINST*/
		      // Outputs
		      .active_synt	(active_synt),
		      .data_0rp_synt	(data_0rp_synt[7:0]),
		      .data_1rp_synt	(data_1rp_synt[7:0]),
		      .data_2rp_synt	(data_2rp_synt[7:0]),
		      .data_3rp_synt	(data_3rp_synt[7:0]),
		      .data_rx000_synt	(data_rx000_synt[7:0]),
		      .valid_0rp_synt	(valid_0rp_synt),
		      .valid_1rp_synt	(valid_1rp_synt),
		      .valid_2rp_synt	(valid_2rp_synt),
		      .valid_3rp_synt	(valid_3rp_synt),
		      .valid_rx000_synt	(valid_rx000_synt),
		      // Inputs
		      .IDLE_OUT_synt	(IDLE_OUT_synt),
		      .clk_2f		(clk_2f),
		      .clk_32f		(clk_32f),
		      .clk_4f		(clk_4f),
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

endmodule // testbech
