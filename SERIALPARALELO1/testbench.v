`include "probador.v"
`include "serial_paralelo1.v"
`include "synth_serial_paralelo1.v"
`include "./UTILIDADES/cmos_cells.v"

module testbench;
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			active;			// From SP1_COND of serial_paralelo1.v
   wire			active_synt;		// From SP1_SYNT of synth_serial_paralelo1.v
   wire			clk_32f;		// From PROB of probador.v
   wire			clk_4f;			// From PROB of probador.v
   wire			data_out;		// From PROB of probador.v
   wire [7:0]		data_rx000;		// From SP1_COND of serial_paralelo1.v
   wire [7:0]		data_rx000_synt;	// From SP1_SYNT of synth_serial_paralelo1.v
   wire			reset;			// From PROB of probador.v
   wire			valid_rx000;		// From SP1_COND of serial_paralelo1.v
   wire			valid_rx000_synt;	// From SP1_SYNT of synth_serial_paralelo1.v
   // End of automatics
   probador PROB( /*AUTOINST*/
		 // Outputs
		 .data_out		(data_out),
		 .reset			(reset),
		 .clk_32f		(clk_32f),
		 .clk_4f		(clk_4f),
		 // Inputs
		 .data_rx000_synt	(data_rx000_synt[7:0]),
		 .data_rx000		(data_rx000[7:0]),
		 .active		(active));
   serial_paralelo1 SP1_COND( /*AUTOINST*/
			     // Outputs
			     .data_rx000	(data_rx000[7:0]),
			     .valid_rx000	(valid_rx000),
			     .active		(active),
			     // Inputs
			     .data_out		(data_out),
			     .reset		(reset),
			     .clk_4f		(clk_4f),
			     .clk_32f		(clk_32f));
   synth_serial_paralelo1 SP1_SYNT( /*AUTOINST*/
				   // Outputs
				   .active_synt		(active_synt),
				   .data_rx000_synt	(data_rx000_synt[7:0]),
				   .valid_rx000_synt	(valid_rx000_synt),
				   // Inputs
				   .clk_32f		(clk_32f),
				   .clk_4f		(clk_4f),
				   .data_out		(data_out),
				   .reset		(reset));
   

endmodule // testbench
