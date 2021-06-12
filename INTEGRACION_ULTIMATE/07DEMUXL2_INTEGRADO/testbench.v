`include "probador.v"
//`include "idletemporal.v"
`include "QQTX.v"
`include "./UTILIDADES/cmos_cells.v"
///// INCLUDES OF SYNTHESIS
//`include "synth_idletemporal.v"
`include "synth_QQTX.v"

module testbech;
   
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			IDLE_OUT;		// From QQTX_COND of QQTX.v
   wire			IDLE_OUT_synt;		// From QQTX_SYNT of synth_QQTX.v
   wire			active;			// From QQTX_COND of QQTX.v
   wire			active_synt;		// From QQTX_SYNT of synth_QQTX.v
   wire			clk_2f;			// From PROB of probador.v
   wire			clk_32f;		// From PROB of probador.v
   wire			clk_4f;			// From PROB of probador.v
   wire			clk_f;			// From PROB of probador.v
   wire [7:0]		data_0p;		// From PROB of probador.v
   wire [7:0]		data_0rp;		// From QQTX_COND of QQTX.v
   wire [7:0]		data_0rp_synt;		// From QQTX_SYNT of synth_QQTX.v
   wire [7:0]		data_1p;		// From PROB of probador.v
   wire [7:0]		data_1rp;		// From QQTX_COND of QQTX.v
   wire [7:0]		data_1rp_synt;		// From QQTX_SYNT of synth_QQTX.v
   wire [7:0]		data_2p;		// From PROB of probador.v
   wire [7:0]		data_2rp;		// From QQTX_COND of QQTX.v
   wire [7:0]		data_2rp_synt;		// From QQTX_SYNT of synth_QQTX.v
   wire [7:0]		data_3p;		// From PROB of probador.v
   wire [7:0]		data_3rp;		// From QQTX_COND of QQTX.v
   wire [7:0]		data_3rp_synt;		// From QQTX_SYNT of synth_QQTX.v
   wire [7:0]		data_rx00;		// From QQTX_COND of QQTX.v
   wire [7:0]		data_rx00_synt;		// From QQTX_SYNT of synth_QQTX.v
   wire [7:0]		data_rx11;		// From QQTX_COND of QQTX.v
   wire [7:0]		data_rx11_synt;		// From QQTX_SYNT of synth_QQTX.v
   wire			inserter;		// From QQTX_COND of QQTX.v
   wire			inserter_synt;		// From QQTX_SYNT of synth_QQTX.v
   wire			reset;			// From PROB of probador.v
   wire			valid_0p;		// From PROB of probador.v
   wire			valid_0rp;		// From QQTX_COND of QQTX.v
   wire			valid_0rp_synt;		// From QQTX_SYNT of synth_QQTX.v
   wire			valid_1p;		// From PROB of probador.v
   wire			valid_1rp;		// From QQTX_COND of QQTX.v
   wire			valid_1rp_synt;		// From QQTX_SYNT of synth_QQTX.v
   wire			valid_2p;		// From PROB of probador.v
   wire			valid_2rp;		// From QQTX_COND of QQTX.v
   wire			valid_2rp_synt;		// From QQTX_SYNT of synth_QQTX.v
   wire			valid_3p;		// From PROB of probador.v
   wire			valid_3rp;		// From QQTX_COND of QQTX.v
   wire			valid_3rp_synt;		// From QQTX_SYNT of synth_QQTX.v
   wire			valid_rx00;		// From QQTX_COND of QQTX.v
   wire			valid_rx00_synt;	// From QQTX_SYNT of synth_QQTX.v
   wire			valid_rx11;		// From QQTX_COND of QQTX.v
   wire			valid_rx11_synt;	// From QQTX_SYNT of synth_QQTX.v
   // End of automatics
   
   QQTX QQTX_COND( /*AUTOINST*/
		  // Outputs
		  .data_rx00		(data_rx00[7:0]),
		  .data_rx11		(data_rx11[7:0]),
		  .valid_rx00		(valid_rx00),
		  .valid_rx11		(valid_rx11),
		  .active		(active),
		  .inserter		(inserter),
		  .IDLE_OUT		(IDLE_OUT),
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
		  .clk_4f		(clk_4f),
		  .valid_2p		(valid_2p),
		  .valid_3p		(valid_3p),
		  .clk_f		(clk_f),
		  .clk_2f		(clk_2f),
		  .clk_32f		(clk_32f),
		  .reset		(reset));
   //idletemporal IDLE_COND( /*AUTOINST*/);
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
		 .data_rx00		(data_rx00[7:0]),
		 .data_rx00_synt	(data_rx00_synt[7:0]),
		 .data_rx11		(data_rx11[7:0]),
		 .data_rx11_synt	(data_rx11_synt[7:0]),
		 .valid_rx00		(valid_rx00),
		 .valid_rx00_synt	(valid_rx00_synt),
		 .valid_rx11		(valid_rx11),
		 .valid_rx11_synt	(valid_rx11_synt),
		 .IDLE_OUT		(IDLE_OUT),
		 .IDLE_OUT_synt		(IDLE_OUT_synt));
   //// ARCHIVOS DE SINTESIS
   //synth_idletemporal IDLE_SYNT( /*AUTOINST*/);
   synth_QQTX QQTX_SYNT( /*AUTOINST*/
			// Outputs
			.IDLE_OUT_synt	(IDLE_OUT_synt),
			.active_synt	(active_synt),
			.data_0rp_synt	(data_0rp_synt[7:0]),
			.data_1rp_synt	(data_1rp_synt[7:0]),
			.data_2rp_synt	(data_2rp_synt[7:0]),
			.data_3rp_synt	(data_3rp_synt[7:0]),
			.data_rx00_synt	(data_rx00_synt[7:0]),
			.data_rx11_synt	(data_rx11_synt[7:0]),
			.inserter_synt	(inserter_synt),
			.valid_0rp_synt	(valid_0rp_synt),
			.valid_1rp_synt	(valid_1rp_synt),
			.valid_2rp_synt	(valid_2rp_synt),
			.valid_3rp_synt	(valid_3rp_synt),
			.valid_rx00_synt(valid_rx00_synt),
			.valid_rx11_synt(valid_rx11_synt),
			// Inputs
			.clk_2f		(clk_2f),
			.clk_32f	(clk_32f),
			.clk_4f		(clk_4f),
			.clk_f		(clk_f),
			.data_0p	(data_0p[7:0]),
			.data_1p	(data_1p[7:0]),
			.data_2p	(data_2p[7:0]),
			.data_3p	(data_3p[7:0]),
			.reset		(reset),
			.valid_0p	(valid_0p),
			.valid_1p	(valid_1p),
			.valid_2p	(valid_2p),
			.valid_3p	(valid_3p));

endmodule // testbech
