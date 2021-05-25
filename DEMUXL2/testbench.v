`include "probador.v"
`include "demux1x2_8bits.v"
`include "synth_demux1x2_8bits.v"
`include "./UTILIDADES/cmos_cells.v"

module testbench;

   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			clk_2f;			// From PROB of probador.v
   wire			clk_4f;			// From PROB of probador.v
   wire [7:0]		data_000;		// From PROB of probador.v
   wire [7:0]		data_00_cond;		// From COND of demux1x2_8bits.v
   wire [7:0]		data_00_synt;		// From SYNT of synth_demux1x2_8bits.v
   wire [7:0]		data_11_cond;		// From COND of demux1x2_8bits.v
   wire [7:0]		data_11_synt;		// From SYNT of synth_demux1x2_8bits.v
   wire			valid_000;		// From PROB of probador.v
   wire			valid_00_cond;		// From COND of demux1x2_8bits.v
   wire			valid_00_synt;		// From SYNT of synth_demux1x2_8bits.v
   wire			valid_11_cond;		// From COND of demux1x2_8bits.v
   wire			valid_11_synt;		// From SYNT of synth_demux1x2_8bits.v
   // End of automatics
   
   demux1x2_8bits COND( /*AUTOINST*/
		       // Outputs
		       .data_00_cond	(data_00_cond[7:0]),
		       .data_11_cond	(data_11_cond[7:0]),
		       .valid_00_cond	(valid_00_cond),
		       .valid_11_cond	(valid_11_cond),
		       // Inputs
		       .data_000	(data_000[7:0]),
		       .valid_000	(valid_000),
		       .clk_4f		(clk_4f),
		       .clk_2f		(clk_2f));
   synth_demux1x2_8bits SYNT( /*AUTOINST*/
			     // Outputs
			     .data_00_synt	(data_00_synt[7:0]),
			     .data_11_synt	(data_11_synt[7:0]),
			     .valid_00_synt	(valid_00_synt),
			     .valid_11_synt	(valid_11_synt),
			     // Inputs
			     .clk_2f		(clk_2f),
			     .clk_4f		(clk_4f),
			     .data_000		(data_000[7:0]),
			     .valid_000		(valid_000));
   probador PROB( /*AUTOINST*/
		 // Outputs
		 .data_000		(data_000[7:0]),
		 .valid_000		(valid_000),
		 .clk_4f		(clk_4f),
		 .clk_2f		(clk_2f),
		 // Inputs
		 .data_00_synt		(data_00_synt[7:0]),
		 .data_00_cond		(data_00_cond[7:0]),
		 .data_11_synt		(data_11_synt[7:0]),
		 .data_11_cond		(data_11_cond[7:0]),
		 .valid_00_synt		(valid_00_synt),
		 .valid_00_cond		(valid_00_cond),
		 .valid_11_synt		(valid_11_synt),
		 .valid_11_cond		(valid_11_cond));

endmodule // testbench
