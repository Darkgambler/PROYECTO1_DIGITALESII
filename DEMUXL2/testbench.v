`include "probador.v"
`include "demux1x2_8bits.v"
`include "synth_demux1x2_8bits.v"
`include "./UTILIDADES/cmos_cells.v"

module testbench;

   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			clk_2f;			// From PROB of probador.v
   wire			clk_4f;			// From PROB of probador.v
   wire [7:0]		data_rx00;		// From COND of demux1x2_8bits.v
   wire [7:0]		data_rx000;		// From PROB of probador.v
   wire [7:0]		data_rx00_synt;		// From SYNT of synth_demux1x2_8bits.v
   wire [7:0]		data_rx11;		// From COND of demux1x2_8bits.v
   wire [7:0]		data_rx11_synt;		// From SYNT of synth_demux1x2_8bits.v
   wire			reset;			// From PROB of probador.v
   wire			valid_rx00;		// From COND of demux1x2_8bits.v
   wire			valid_rx000;		// From PROB of probador.v
   wire			valid_rx00_synt;	// From SYNT of synth_demux1x2_8bits.v
   wire			valid_rx11;		// From COND of demux1x2_8bits.v
   wire			valid_rx11_synt;	// From SYNT of synth_demux1x2_8bits.v
   // End of automatics
   
   demux1x2_8bits COND( /*AUTOINST*/
		       // Outputs
		       .data_rx00	(data_rx00[7:0]),
		       .data_rx11	(data_rx11[7:0]),
		       .valid_rx00	(valid_rx00),
		       .valid_rx11	(valid_rx11),
		       // Inputs
		       .data_rx000	(data_rx000[7:0]),
		       .valid_rx000	(valid_rx000),
		       .clk_2f		(clk_2f),
		       .clk_4f		(clk_4f),
		       .reset		(reset));
   synth_demux1x2_8bits SYNT( /*AUTOINST*/
			     // Outputs
			     .data_rx00_synt	(data_rx00_synt[7:0]),
			     .data_rx11_synt	(data_rx11_synt[7:0]),
			     .valid_rx00_synt	(valid_rx00_synt),
			     .valid_rx11_synt	(valid_rx11_synt),
			     // Inputs
			     .clk_2f		(clk_2f),
			     .clk_4f		(clk_4f),
			     .data_rx000	(data_rx000[7:0]),
			     .reset		(reset),
			     .valid_rx000	(valid_rx000));
   probador PROB( /*AUTOINST*/
		 // Outputs
		 .data_rx000		(data_rx000[7:0]),
		 .valid_rx000		(valid_rx000),
		 .clk_4f		(clk_4f),
		 .clk_2f		(clk_2f),
		 .reset			(reset),
		 // Inputs
		 .data_rx00_synt	(data_rx00_synt[7:0]),
		 .data_rx00		(data_rx00[7:0]),
		 .data_rx11_synt	(data_rx11_synt[7:0]),
		 .data_rx11		(data_rx11[7:0]),
		 .valid_rx00_synt	(valid_rx00_synt),
		 .valid_rx00		(valid_rx00),
		 .valid_rx11_synt	(valid_rx11_synt),
		 .valid_rx11		(valid_rx11));

endmodule // testbench
