`include "probador.v"
`include "paralelo_serial2.v"
`include "synth_paralelo_serial2.v"
`include "./UTILIDADES/cmos_cells.v"

module testbench;
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			active;			// From PROB of probador.v
   wire			clk_32f;		// From PROB of probador.v
   wire			clk_4f;			// From PROB of probador.v
   wire			inserter;		// From PS2_COND of paralelo_serial2.v
   wire			inserter_synt;		// From PS2_SYNT of synth_paralelo_serial2.v
   wire			reset;			// From PROB of probador.v
   // End of automatics
   probador PROB( /*AUTOINST*/
		 // Outputs
		 .active		(active),
		 .reset			(reset),
		 .clk_32f		(clk_32f),
		 .clk_4f		(clk_4f),
		 // Inputs
		 .inserter_synt		(inserter_synt),
		 .inserter		(inserter));
   paralelo_serial2 PS2_COND( /*AUTOINST*/
			     // Outputs
			     .inserter		(inserter),
			     // Inputs
			     .clk_4f		(clk_4f),
			     .clk_32f		(clk_32f),
			     .reset		(reset),
			     .active		(active));
   synth_paralelo_serial2 PS2_SYNT( /*AUTOINST*/
				   // Outputs
				   .inserter_synt	(inserter_synt),
				   // Inputs
				   .active		(active),
				   .clk_32f		(clk_32f),
				   .clk_4f		(clk_4f),
				   .reset		(reset));
   

endmodule // testbench
