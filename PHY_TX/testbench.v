`include "probador.v"
`include "phy_tx.v"
`include "./UTILIDADES/cmos_cells.v"
///// INCLUDES OF SYNTHESIS
`include "synth_phy_tx.v"

module testbech;
   
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			IDLE_OUT;		// From PTX_COND of phy_tx.v
   wire			IDLE_OUT_synt;		// From PTX_SYNT of synth_phy_tx.v
   wire			clk_2f;			// From PROB of probador.v
   wire			clk_32f;		// From PROB of probador.v
   wire			clk_4f;			// From PROB of probador.v
   wire			clk_f;			// From PROB of probador.v
   wire [7:0]		data_0p;		// From PROB of probador.v
   wire [7:0]		data_0rp;		// From PTX_COND of phy_tx.v
   wire [7:0]		data_0rp_synt;		// From PTX_SYNT of synth_phy_tx.v
   wire [7:0]		data_1p;		// From PROB of probador.v
   wire [7:0]		data_1rp;		// From PTX_COND of phy_tx.v
   wire [7:0]		data_1rp_synt;		// From PTX_SYNT of synth_phy_tx.v
   wire [7:0]		data_2p;		// From PROB of probador.v
   wire [7:0]		data_2rp;		// From PTX_COND of phy_tx.v
   wire [7:0]		data_2rp_synt;		// From PTX_SYNT of synth_phy_tx.v
   wire [7:0]		data_3p;		// From PROB of probador.v
   wire [7:0]		data_3rp;		// From PTX_COND of phy_tx.v
   wire [7:0]		data_3rp_synt;		// From PTX_SYNT of synth_phy_tx.v
   wire			data_out;		// From PTX_COND of phy_tx.v
   wire			data_out_synt;		// From PTX_SYNT of synth_phy_tx.v
   wire			inserter;		// From PROB of probador.v
   wire			reset;			// From PROB of probador.v
   wire			valid_0p;		// From PROB of probador.v
   wire			valid_0rp;		// From PTX_COND of phy_tx.v
   wire			valid_0rp_synt;		// From PTX_SYNT of synth_phy_tx.v
   wire			valid_1p;		// From PROB of probador.v
   wire			valid_1rp;		// From PTX_COND of phy_tx.v
   wire			valid_1rp_synt;		// From PTX_SYNT of synth_phy_tx.v
   wire			valid_2p;		// From PROB of probador.v
   wire			valid_2rp;		// From PTX_COND of phy_tx.v
   wire			valid_2rp_synt;		// From PTX_SYNT of synth_phy_tx.v
   wire			valid_3p;		// From PROB of probador.v
   wire			valid_3rp;		// From PTX_COND of phy_tx.v
   wire			valid_3rp_synt;		// From PTX_SYNT of synth_phy_tx.v
   // End of automatics
   
   phy_tx PTX_COND( /*AUTOINST*/
		   // Outputs
		   .data_out		(data_out),
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
		   .inserter		(inserter),
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
		 .inserter		(inserter),
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
		 .IDLE_OUT_synt		(IDLE_OUT_synt),
		 .data_out		(data_out),
		 .data_out_synt		(data_out_synt));
   //// ARCHIVOS DE SINTESIS
   //synth_idletemporal IDLE_SYNT( /*AUTOINST*/);
   synth_phy_tx PTX_SYNT( /*AUTOINST*/
			 // Outputs
			 .IDLE_OUT_synt		(IDLE_OUT_synt),
			 .data_0rp_synt		(data_0rp_synt[7:0]),
			 .data_1rp_synt		(data_1rp_synt[7:0]),
			 .data_2rp_synt		(data_2rp_synt[7:0]),
			 .data_3rp_synt		(data_3rp_synt[7:0]),
			 .data_out_synt		(data_out_synt),
			 .valid_0rp_synt	(valid_0rp_synt),
			 .valid_1rp_synt	(valid_1rp_synt),
			 .valid_2rp_synt	(valid_2rp_synt),
			 .valid_3rp_synt	(valid_3rp_synt),
			 // Inputs
			 .clk_2f		(clk_2f),
			 .clk_32f		(clk_32f),
			 .clk_4f		(clk_4f),
			 .clk_f			(clk_f),
			 .data_0p		(data_0p[7:0]),
			 .data_1p		(data_1p[7:0]),
			 .data_2p		(data_2p[7:0]),
			 .data_3p		(data_3p[7:0]),
			 .inserter		(inserter),
			 .reset			(reset),
			 .valid_0p		(valid_0p),
			 .valid_1p		(valid_1p),
			 .valid_2p		(valid_2p),
			 .valid_3p		(valid_3p));

endmodule // testbech
