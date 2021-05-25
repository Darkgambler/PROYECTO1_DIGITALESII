`include "demux2x4_8bits.v"
`include "synth_demux2x4_8bits.v"
`include "probador.v"
`include "./UTILIDADES/cmos_cells.v"

module testbench;
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			clk_2f;			// From PROB of probador.v
   wire			clk_f;			// From PROB of probador.v
   wire [7:0]		data_00;		// From PROB of probador.v
   wire [7:0]		data_0_cond;		// From COND of demux2x4_8bits.v
   wire [7:0]		data_0_synt;		// From SYNT of synth_demux2x4_8bits.v
   wire [7:0]		data_11;		// From PROB of probador.v
   wire [7:0]		data_1_cond;		// From COND of demux2x4_8bits.v
   wire [7:0]		data_1_synt;		// From SYNT of synth_demux2x4_8bits.v
   wire [7:0]		data_2_cond;		// From COND of demux2x4_8bits.v
   wire [7:0]		data_2_synt;		// From SYNT of synth_demux2x4_8bits.v
   wire [7:0]		data_3_cond;		// From COND of demux2x4_8bits.v
   wire [7:0]		data_3_synt;		// From SYNT of synth_demux2x4_8bits.v
   wire			valid_00;		// From PROB of probador.v
   wire			valid_0_cond;		// From COND of demux2x4_8bits.v
   wire			valid_0_synt;		// From SYNT of synth_demux2x4_8bits.v
   wire			valid_11;		// From PROB of probador.v
   wire			valid_1_cond;		// From COND of demux2x4_8bits.v
   wire			valid_1_synt;		// From SYNT of synth_demux2x4_8bits.v
   wire			valid_2_cond;		// From COND of demux2x4_8bits.v
   wire			valid_2_synt;		// From SYNT of synth_demux2x4_8bits.v
   wire			valid_3_cond;		// From COND of demux2x4_8bits.v
   wire			valid_3_synt;		// From SYNT of synth_demux2x4_8bits.v
   // End of automatics
   demux2x4_8bits COND( /*AUTOINST*/
		       // Outputs
		       .data_0_cond	(data_0_cond[7:0]),
		       .data_1_cond	(data_1_cond[7:0]),
		       .data_2_cond	(data_2_cond[7:0]),
		       .data_3_cond	(data_3_cond[7:0]),
		       .valid_0_cond	(valid_0_cond),
		       .valid_1_cond	(valid_1_cond),
		       .valid_2_cond	(valid_2_cond),
		       .valid_3_cond	(valid_3_cond),
		       // Inputs
		       .data_00		(data_00[7:0]),
		       .data_11		(data_11[7:0]),
		       .valid_00	(valid_00),
		       .valid_11	(valid_11),
		       .clk_f		(clk_f),
		       .clk_2f		(clk_2f));
   synth_demux2x4_8bits SYNT( /*AUTOINST*/
			     // Outputs
			     .data_0_synt	(data_0_synt[7:0]),
			     .data_1_synt	(data_1_synt[7:0]),
			     .data_2_synt	(data_2_synt[7:0]),
			     .data_3_synt	(data_3_synt[7:0]),
			     .valid_0_synt	(valid_0_synt),
			     .valid_1_synt	(valid_1_synt),
			     .valid_2_synt	(valid_2_synt),
			     .valid_3_synt	(valid_3_synt),
			     // Inputs
			     .clk_2f		(clk_2f),
			     .clk_f		(clk_f),
			     .data_00		(data_00[7:0]),
			     .data_11		(data_11[7:0]),
			     .valid_00		(valid_00),
			     .valid_11		(valid_11));
   probador PROB( /*AUTOINST*/
		 // Outputs
		 .data_00		(data_00[7:0]),
		 .data_11		(data_11[7:0]),
		 .valid_00		(valid_00),
		 .valid_11		(valid_11),
		 .clk_f			(clk_f),
		 .clk_2f		(clk_2f),
		 // Inputs
		 .data_0_cond		(data_0_cond[7:0]),
		 .data_0_synt		(data_0_synt[7:0]),
		 .data_1_cond		(data_1_cond[7:0]),
		 .data_1_synt		(data_1_synt[7:0]),
		 .data_2_cond		(data_2_cond[7:0]),
		 .data_2_synt		(data_2_synt[7:0]),
		 .data_3_cond		(data_3_cond[7:0]),
		 .data_3_synt		(data_3_synt[7:0]),
		 .valid_0_cond		(valid_0_cond),
		 .valid_0_synt		(valid_0_synt),
		 .valid_1_cond		(valid_1_cond),
		 .valid_1_synt		(valid_1_synt),
		 .valid_2_cond		(valid_2_cond),
		 .valid_2_synt		(valid_2_synt),
		 .valid_3_cond		(valid_3_cond),
		 .valid_3_synt		(valid_3_synt));
endmodule // testbench
