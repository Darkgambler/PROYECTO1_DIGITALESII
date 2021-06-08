`include "probador.v"
`include "phy_rx.v"
`include "./UTILIDADES/cmos_cells.v"
///// INCLUDES OF SYNTHESIS
`include "synth_phy_rx.v"

module testbech;
   
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			clk_2f;			// From PROB of probador.v
   wire			clk_32f;		// From PROB of probador.v
   wire			clk_4f;			// From PROB of probador.v
   wire			clk_f;			// From PROB of probador.v
   wire			data_out;		// From PROB of probador.v
   wire [7:0]		data_rx0;		// From RX_COND of phy_rx.v
   wire [7:0]		data_rx0_synt;		// From RX_SYNT of synth_phy_rx.v
   wire [7:0]		data_rx1;		// From RX_COND of phy_rx.v
   wire [7:0]		data_rx1_synt;		// From RX_SYNT of synth_phy_rx.v
   wire [7:0]		data_rx2;		// From RX_COND of phy_rx.v
   wire [7:0]		data_rx2_synt;		// From RX_SYNT of synth_phy_rx.v
   wire [7:0]		data_rx3;		// From RX_COND of phy_rx.v
   wire [7:0]		data_rx3_synt;		// From RX_SYNT of synth_phy_rx.v
   wire			inserter;		// From RX_COND of phy_rx.v
   wire			inserter_synt;		// From RX_SYNT of synth_phy_rx.v
   wire			reset;			// From PROB of probador.v
   wire			valid_rx0;		// From RX_COND of phy_rx.v
   wire			valid_rx0_synt;		// From RX_SYNT of synth_phy_rx.v
   wire			valid_rx1;		// From RX_COND of phy_rx.v
   wire			valid_rx1_synt;		// From RX_SYNT of synth_phy_rx.v
   wire			valid_rx2;		// From RX_COND of phy_rx.v
   wire			valid_rx2_synt;		// From RX_SYNT of synth_phy_rx.v
   wire			valid_rx3;		// From RX_COND of phy_rx.v
   wire			valid_rx3_synt;		// From RX_SYNT of synth_phy_rx.v
   // End of automatics
   
   phy_rx RX_COND( /*AUTOINST*/
		  // Outputs
		  .data_rx0		(data_rx0[7:0]),
		  .data_rx1		(data_rx1[7:0]),
		  .data_rx2		(data_rx2[7:0]),
		  .data_rx3		(data_rx3[7:0]),
		  .valid_rx0		(valid_rx0),
		  .valid_rx1		(valid_rx1),
		  .valid_rx2		(valid_rx2),
		  .valid_rx3		(valid_rx3),
		  .inserter		(inserter),
		  // Inputs
		  .data_out		(data_out),
		  .reset		(reset),
		  .clk_f		(clk_f),
		  .clk_2f		(clk_2f),
		  .clk_4f		(clk_4f),
		  .clk_32f		(clk_32f));
   //idletemporal IDLE_COND( /*AUTOINST*/);
   probador PROB( /*AUTOINST*/
		 // Outputs
		 .data_out		(data_out),
		 .reset			(reset),
		 .clk_f			(clk_f),
		 .clk_2f		(clk_2f),
		 .clk_4f		(clk_4f),
		 .clk_32f		(clk_32f),
		 // Inputs
		 .data_rx0		(data_rx0[7:0]),
		 .data_rx1		(data_rx1[7:0]),
		 .data_rx2		(data_rx2[7:0]),
		 .data_rx3		(data_rx3[7:0]),
		 .data_rx0_synt		(data_rx0_synt[7:0]),
		 .data_rx1_synt		(data_rx1_synt[7:0]),
		 .data_rx2_synt		(data_rx2_synt[7:0]),
		 .data_rx3_synt		(data_rx3_synt[7:0]),
		 .valid_rx0		(valid_rx0),
		 .valid_rx1		(valid_rx1),
		 .valid_rx2		(valid_rx2),
		 .valid_rx3		(valid_rx3),
		 .valid_rx0_synt	(valid_rx0_synt),
		 .valid_rx1_synt	(valid_rx1_synt),
		 .valid_rx2_synt	(valid_rx2_synt),
		 .valid_rx3_synt	(valid_rx3_synt),
		 .inserter		(inserter),
		 .inserter_synt		(inserter_synt));
   //// ARCHIVOS DE SINTESIS
   //synth_idletemporal IDLE_SYNT( /*AUTOINST*/);
   synth_phy_rx RX_SYNT( /*AUTOINST*/
			// Outputs
			.data_rx0_synt	(data_rx0_synt[7:0]),
			.data_rx1_synt	(data_rx1_synt[7:0]),
			.data_rx2_synt	(data_rx2_synt[7:0]),
			.data_rx3_synt	(data_rx3_synt[7:0]),
			.inserter_synt	(inserter_synt),
			.valid_rx0_synt	(valid_rx0_synt),
			.valid_rx1_synt	(valid_rx1_synt),
			.valid_rx2_synt	(valid_rx2_synt),
			.valid_rx3_synt	(valid_rx3_synt),
			// Inputs
			.clk_2f		(clk_2f),
			.clk_32f	(clk_32f),
			.clk_4f		(clk_4f),
			.clk_f		(clk_f),
			.data_out	(data_out),
			.reset		(reset));

endmodule // testbech
