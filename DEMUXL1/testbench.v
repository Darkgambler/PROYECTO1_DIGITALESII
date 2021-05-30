`include "demux2x4_8bits.v"
`include "synth_demux2x4_8bits.v"
`include "probador.v"
`include "./UTILIDADES/cmos_cells.v"

module testbench;
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			clk_2f;			// From PROB of probador.v
   wire			clk_f;			// From PROB of probador.v
   wire [7:0]		data_rx0;		// From COND of demux2x4_8bits.v
   wire [7:0]		data_rx00;		// From PROB of probador.v
   wire [7:0]		data_rx0_synt;		// From SYNT of synth_demux2x4_8bits.v
   wire [7:0]		data_rx1;		// From COND of demux2x4_8bits.v
   wire [7:0]		data_rx11;		// From PROB of probador.v
   wire [7:0]		data_rx1_synt;		// From SYNT of synth_demux2x4_8bits.v
   wire [7:0]		data_rx2;		// From COND of demux2x4_8bits.v
   wire [7:0]		data_rx2_synt;		// From SYNT of synth_demux2x4_8bits.v
   wire [7:0]		data_rx3;		// From COND of demux2x4_8bits.v
   wire [7:0]		data_rx3_synt;		// From SYNT of synth_demux2x4_8bits.v
   wire			reset;			// From PROB of probador.v
   wire			valid_rx0;		// From COND of demux2x4_8bits.v
   wire			valid_rx00;		// From PROB of probador.v
   wire			valid_rx0_synt;		// From SYNT of synth_demux2x4_8bits.v
   wire			valid_rx1;		// From COND of demux2x4_8bits.v
   wire			valid_rx11;		// From PROB of probador.v
   wire			valid_rx1_synt;		// From SYNT of synth_demux2x4_8bits.v
   wire			valid_rx2;		// From COND of demux2x4_8bits.v
   wire			valid_rx2_synt;		// From SYNT of synth_demux2x4_8bits.v
   wire			valid_rx3;		// From COND of demux2x4_8bits.v
   wire			valid_rx3_synt;		// From SYNT of synth_demux2x4_8bits.v
   // End of automatics
   demux2x4_8bits COND( /*AUTOINST*/
		       // Outputs
		       .data_rx0	(data_rx0[7:0]),
		       .data_rx1	(data_rx1[7:0]),
		       .data_rx2	(data_rx2[7:0]),
		       .data_rx3	(data_rx3[7:0]),
		       .valid_rx0	(valid_rx0),
		       .valid_rx1	(valid_rx1),
		       .valid_rx2	(valid_rx2),
		       .valid_rx3	(valid_rx3),
		       // Inputs
		       .data_rx00	(data_rx00[7:0]),
		       .data_rx11	(data_rx11[7:0]),
		       .valid_rx00	(valid_rx00),
		       .valid_rx11	(valid_rx11),
		       .clk_f		(clk_f),
		       .clk_2f		(clk_2f),
		       .reset		(reset));
   synth_demux2x4_8bits SYNT( /*AUTOINST*/
			     // Outputs
			     .data_rx0_synt	(data_rx0_synt[7:0]),
			     .data_rx1_synt	(data_rx1_synt[7:0]),
			     .data_rx2_synt	(data_rx2_synt[7:0]),
			     .data_rx3_synt	(data_rx3_synt[7:0]),
			     .valid_rx0_synt	(valid_rx0_synt),
			     .valid_rx1_synt	(valid_rx1_synt),
			     .valid_rx2_synt	(valid_rx2_synt),
			     .valid_rx3_synt	(valid_rx3_synt),
			     // Inputs
			     .clk_2f		(clk_2f),
			     .clk_f		(clk_f),
			     .data_rx00		(data_rx00[7:0]),
			     .data_rx11		(data_rx11[7:0]),
			     .reset		(reset),
			     .valid_rx00	(valid_rx00),
			     .valid_rx11	(valid_rx11));
   probador PROB( /*AUTOINST*/
		 // Outputs
		 .data_rx00		(data_rx00[7:0]),
		 .data_rx11		(data_rx11[7:0]),
		 .valid_rx00		(valid_rx00),
		 .valid_rx11		(valid_rx11),
		 .clk_f			(clk_f),
		 .clk_2f		(clk_2f),
		 .reset			(reset),
		 // Inputs
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
		 .valid_rx3_synt	(valid_rx3_synt));
endmodule // testbench
