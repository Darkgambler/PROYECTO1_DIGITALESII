`include "probador.v"
//`include "idletemporal.v"
`include "RRTX.v"
`include "./UTILIDADES/cmos_cells.v"
///// INCLUDES OF SYNTHESIS
//`include "synth_idletemporal.v"
`include "synth_RRTX.v"

module testbech;
   
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			IDLE_OUT;		// From RRTX_COND of RRTX.v
   wire			IDLE_OUT_synt;		// From RRTX_SYNT of synth_RRTX.v
   wire			active;			// From RRTX_COND of RRTX.v
   wire			active_synt;		// From RRTX_SYNT of synth_RRTX.v
   wire			clk_2f;			// From PROB of probador.v
   wire			clk_32f;		// From PROB of probador.v
   wire			clk_4f;			// From PROB of probador.v
   wire			clk_f;			// From PROB of probador.v
   wire [7:0]		data_0p;		// From PROB of probador.v
   wire [7:0]		data_0rp;		// From RRTX_COND of RRTX.v
   wire [7:0]		data_0rp_synt;		// From RRTX_SYNT of synth_RRTX.v
   wire [7:0]		data_1p;		// From PROB of probador.v
   wire [7:0]		data_1rp;		// From RRTX_COND of RRTX.v
   wire [7:0]		data_1rp_synt;		// From RRTX_SYNT of synth_RRTX.v
   wire [7:0]		data_2p;		// From PROB of probador.v
   wire [7:0]		data_2rp;		// From RRTX_COND of RRTX.v
   wire [7:0]		data_2rp_synt;		// From RRTX_SYNT of synth_RRTX.v
   wire [7:0]		data_3p;		// From PROB of probador.v
   wire [7:0]		data_3rp;		// From RRTX_COND of RRTX.v
   wire [7:0]		data_3rp_synt;		// From RRTX_SYNT of synth_RRTX.v
   wire [7:0]		data_rx0;		// From RRTX_COND of RRTX.v
   wire [7:0]		data_rx0_synt;		// From RRTX_SYNT of synth_RRTX.v
   wire [7:0]		data_rx1;		// From RRTX_COND of RRTX.v
   wire [7:0]		data_rx1_synt;		// From RRTX_SYNT of synth_RRTX.v
   wire [7:0]		data_rx2;		// From RRTX_COND of RRTX.v
   wire [7:0]		data_rx2_synt;		// From RRTX_SYNT of synth_RRTX.v
   wire [7:0]		data_rx3;		// From RRTX_COND of RRTX.v
   wire [7:0]		data_rx3_synt;		// From RRTX_SYNT of synth_RRTX.v
   wire			inserter;		// From RRTX_COND of RRTX.v
   wire			inserter_synt;		// From RRTX_SYNT of synth_RRTX.v
   wire			reset;			// From PROB of probador.v
   wire			valid_0p;		// From PROB of probador.v
   wire			valid_0rp;		// From RRTX_COND of RRTX.v
   wire			valid_0rp_synt;		// From RRTX_SYNT of synth_RRTX.v
   wire			valid_1p;		// From PROB of probador.v
   wire			valid_1rp;		// From RRTX_COND of RRTX.v
   wire			valid_1rp_synt;		// From RRTX_SYNT of synth_RRTX.v
   wire			valid_2p;		// From PROB of probador.v
   wire			valid_2rp;		// From RRTX_COND of RRTX.v
   wire			valid_2rp_synt;		// From RRTX_SYNT of synth_RRTX.v
   wire			valid_3p;		// From PROB of probador.v
   wire			valid_3rp;		// From RRTX_COND of RRTX.v
   wire			valid_3rp_synt;		// From RRTX_SYNT of synth_RRTX.v
   wire			valid_rx0;		// From RRTX_COND of RRTX.v
   wire			valid_rx0_synt;		// From RRTX_SYNT of synth_RRTX.v
   wire			valid_rx1;		// From RRTX_COND of RRTX.v
   wire			valid_rx1_synt;		// From RRTX_SYNT of synth_RRTX.v
   wire			valid_rx2;		// From RRTX_COND of RRTX.v
   wire			valid_rx2_synt;		// From RRTX_SYNT of synth_RRTX.v
   wire			valid_rx3;		// From RRTX_COND of RRTX.v
   wire			valid_rx3_synt;		// From RRTX_SYNT of synth_RRTX.v
   // End of automatics
   
   RRTX RRTX_COND( /*AUTOINST*/
		  // Outputs
		  .data_rx0		(data_rx0[7:0]),
		  .data_rx1		(data_rx1[7:0]),
		  .data_rx2		(data_rx2[7:0]),
		  .data_rx3		(data_rx3[7:0]),
		  .valid_rx0		(valid_rx0),
		  .valid_rx1		(valid_rx1),
		  .valid_rx2		(valid_rx2),
		  .valid_rx3		(valid_rx3),
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
		 .data_rx0		(data_rx0[7:0]),
		 .data_rx0_synt		(data_rx0_synt[7:0]),
		 .data_rx1		(data_rx1[7:0]),
		 .data_rx1_synt		(data_rx1_synt[7:0]),
		 .data_rx2		(data_rx2[7:0]),
		 .data_rx2_synt		(data_rx2_synt[7:0]),
		 .data_rx3		(data_rx3[7:0]),
		 .data_rx3_synt		(data_rx3_synt[7:0]),
		 .valid_rx0		(valid_rx0),
		 .valid_rx0_synt	(valid_rx0_synt),
		 .valid_rx1		(valid_rx1),
		 .valid_rx1_synt	(valid_rx1_synt),
		 .valid_rx2		(valid_rx2),
		 .valid_rx2_synt	(valid_rx2_synt),
		 .valid_rx3		(valid_rx3),
		 .valid_rx3_synt	(valid_rx3_synt),
		 .IDLE_OUT		(IDLE_OUT),
		 .IDLE_OUT_synt		(IDLE_OUT_synt));
   //// ARCHIVOS DE SINTESIS
   //synth_idletemporal IDLE_SYNT( /*AUTOINST*/);
   synth_RRTX RRTX_SYNT( /*AUTOINST*/
			// Outputs
			.IDLE_OUT_synt	(IDLE_OUT_synt),
			.active_synt	(active_synt),
			.data_0rp_synt	(data_0rp_synt[7:0]),
			.data_1rp_synt	(data_1rp_synt[7:0]),
			.data_2rp_synt	(data_2rp_synt[7:0]),
			.data_3rp_synt	(data_3rp_synt[7:0]),
			.data_rx0_synt	(data_rx0_synt[7:0]),
			.data_rx1_synt	(data_rx1_synt[7:0]),
			.data_rx2_synt	(data_rx2_synt[7:0]),
			.data_rx3_synt	(data_rx3_synt[7:0]),
			.inserter_synt	(inserter_synt),
			.valid_0rp_synt	(valid_0rp_synt),
			.valid_1rp_synt	(valid_1rp_synt),
			.valid_2rp_synt	(valid_2rp_synt),
			.valid_3rp_synt	(valid_3rp_synt),
			.valid_rx0_synt	(valid_rx0_synt),
			.valid_rx1_synt	(valid_rx1_synt),
			.valid_rx2_synt	(valid_rx2_synt),
			.valid_rx3_synt	(valid_rx3_synt),
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
