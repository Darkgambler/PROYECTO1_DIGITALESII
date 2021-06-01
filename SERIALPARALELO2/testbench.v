`include "probador.v"
`include "serial_paralelo2.v"
`include "synth_serial_paralelo2.v"
`include "./UTILIDADES/cmos_cells.v"

module testbench;
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			IDLE_OUT;		// From SP2_COND of serial_paralelo2.v
   wire			IDLE_OUT_synt;		// From SP2_SYNT of synth_serial_paralelo2.v
   wire			clk_32f;		// From PROB of probador.v
   wire			clk_4f;			// From PROB of probador.v
   wire			clk_f;			// From PROB of probador.v
   wire			inserter;		// From PROB of probador.v
   wire			reset;			// From PROB of probador.v
   // End of automatics
   probador PROB( /*AUTOINST*/
		 // Outputs
		 .inserter		(inserter),
		 .reset			(reset),
		 .clk_32f		(clk_32f),
		 .clk_4f		(clk_4f),
		 .clk_f			(clk_f),
		 // Inputs
		 .IDLE_OUT		(IDLE_OUT),
		 .IDLE_OUT_synt		(IDLE_OUT_synt));
   serial_paralelo2 SP2_COND( /*AUTOINST*/
			     // Outputs
			     .IDLE_OUT		(IDLE_OUT),
			     // Inputs
			     .clk_f		(clk_f),
			     .clk_4f		(clk_4f),
			     .clk_32f		(clk_32f),
			     .reset		(reset),
			     .inserter		(inserter));
   synth_serial_paralelo2 SP2_SYNT( /*AUTOINST*/
				   // Outputs
				   .IDLE_OUT_synt	(IDLE_OUT_synt),
				   // Inputs
				   .clk_32f		(clk_32f),
				   .clk_4f		(clk_4f),
				   .clk_f		(clk_f),
				   .inserter		(inserter),
				   .reset		(reset));
   

endmodule // testbench
