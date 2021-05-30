`include "probador.v"
`include "paralelo_serial1.v"
`include "synth_paralelo_serial1.v"
`include "./UTILIDADES/cmos_cells.v"

module testbench;
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			clk_32f;		// From PROB of probador.v
   wire			clk_4f;			// From PROB of probador.v
   wire [7:0]		data_000;		// From PROB of probador.v
   wire			data_out;		// From PS1_COND of paralelo_serial1.v
   wire			data_out_synt;		// From PS1_SYNT of synth_paralelo_serial1.v
   wire			reset;			// From PROB of probador.v
   wire			valid_000;		// From PROB of probador.v
   // End of automatics
   probador PROB( /*AUTOINST*/
		 // Outputs
		 .data_000		(data_000[7:0]),
		 .valid_000		(valid_000),
		 .reset			(reset),
		 .clk_32f		(clk_32f),
		 .clk_4f		(clk_4f),
		 // Inputs
		 .data_out_synt		(data_out_synt),
		 .data_out		(data_out));
   paralelo_serial1 PS1_COND( /*AUTOINST*/
			     // Outputs
			     .data_out		(data_out),
			     // Inputs
			     .data_000		(data_000[7:0]),
			     .clk_32f		(clk_32f),
			     .clk_4f		(clk_4f),
			     .valid_000		(valid_000),
			     .reset		(reset));
   synth_paralelo_serial1 PS1_SYNT( /*AUTOINST*/
				   // Outputs
				   .data_out_synt	(data_out_synt),
				   // Inputs
				   .clk_32f		(clk_32f),
				   .clk_4f		(clk_4f),
				   .data_000		(data_000[7:0]),
				   .reset		(reset),
				   .valid_000		(valid_000));
   

endmodule // testbench
