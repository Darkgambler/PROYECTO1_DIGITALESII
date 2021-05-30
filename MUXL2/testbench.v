`include "probador.v"
`include "mux2x1_8bits.v"
`include "synth_mux2x1_8bits.v"
`include "./UTILIDADES/cmos_cells.v"

module testbench;

   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			clk_2f;			// From PROB of probador.v
   wire			clk_4f;			// From PROB of probador.v
   wire [7:0]		data_00;		// From PROB of probador.v
   wire [7:0]		data_000_cond;		// From COND of mux2x1_8bits.v
   wire [7:0]		data_000_synt;		// From SYNT of synth_mux2x1_8bits.v
   wire [7:0]		data_11;		// From PROB of probador.v
   wire			reset;			// From PROB of probador.v
   wire			valid_00;		// From PROB of probador.v
   wire			valid_000_cond;		// From COND of mux2x1_8bits.v
   wire			valid_000_synt;		// From SYNT of synth_mux2x1_8bits.v
   wire			valid_11;		// From PROB of probador.v
   // End of automatics
   
   mux2x1_8bits COND( /*AUTOINST*/
		     // Outputs
		     .data_000_cond	(data_000_cond[7:0]),
		     .valid_000_cond	(valid_000_cond),
		     // Inputs
		     .data_00		(data_00[7:0]),
		     .data_11		(data_11[7:0]),
		     .valid_00		(valid_00),
		     .valid_11		(valid_11),
		     .clk_4f		(clk_4f),
		     .clk_2f		(clk_2f),
		     .reset		(reset));
   synth_mux2x1_8bits SYNT( /*AUTOINST*/
			   // Outputs
			   .data_000_synt	(data_000_synt[7:0]),
			   .valid_000_synt	(valid_000_synt),
			   // Inputs
			   .clk_2f		(clk_2f),
			   .clk_4f		(clk_4f),
			   .data_00		(data_00[7:0]),
			   .data_11		(data_11[7:0]),
			   .reset		(reset),
			   .valid_00		(valid_00),
			   .valid_11		(valid_11));
   probador PROB( /*AUTOINST*/
		 // Outputs
		 .data_00		(data_00[7:0]),
		 .data_11		(data_11[7:0]),
		 .valid_00		(valid_00),
		 .valid_11		(valid_11),
		 .clk_4f		(clk_4f),
		 .clk_2f		(clk_2f),
		 .reset			(reset),
		 // Inputs
		 .data_000_synt		(data_000_synt[7:0]),
		 .data_000_cond		(data_000_cond[7:0]),
		 .valid_000_synt	(valid_000_synt),
		 .valid_000_cond	(valid_000_cond));

endmodule // testbench
