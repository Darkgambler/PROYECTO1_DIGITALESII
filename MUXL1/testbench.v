`include "probador.v"
`include "mux4x2_8bits.v"
`include "synth_mux4x2_8bits.v"
`include "./UTILIDADES/cmos_cells.v"

module testbench;

   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			clk_2f;			// From PROB of probador.v
   wire			clk_f;			// From PROB of probador.v
   wire [7:0]		data_0;			// From PROB of probador.v
   wire [7:0]		data_00_cond;		// From COND of mux4x2_8bits.v
   wire [7:0]		data_00_synt;		// From SYNT of synth_mux4x2_8bits.v
   wire [7:0]		data_1;			// From PROB of probador.v
   wire [7:0]		data_11_cond;		// From COND of mux4x2_8bits.v
   wire [7:0]		data_11_synt;		// From SYNT of synth_mux4x2_8bits.v
   wire [7:0]		data_2;			// From PROB of probador.v
   wire [7:0]		data_3;			// From PROB of probador.v
   wire			valid_0;		// From PROB of probador.v
   wire			valid_00_cond;		// From COND of mux4x2_8bits.v
   wire			valid_00_synt;		// From SYNT of synth_mux4x2_8bits.v
   wire			valid_1;		// From PROB of probador.v
   wire			valid_11_cond;		// From COND of mux4x2_8bits.v
   wire			valid_11_synt;		// From SYNT of synth_mux4x2_8bits.v
   wire			valid_2;		// From PROB of probador.v
   wire			valid_3;		// From PROB of probador.v
   // End of automatics
   
   mux4x2_8bits COND( /*AUTOINST*/
		     // Outputs
		     .data_00_cond	(data_00_cond[7:0]),
		     .data_11_cond	(data_11_cond[7:0]),
		     .valid_00_cond	(valid_00_cond),
		     .valid_11_cond	(valid_11_cond),
		     // Inputs
		     .data_0		(data_0[7:0]),
		     .data_1		(data_1[7:0]),
		     .data_2		(data_2[7:0]),
		     .data_3		(data_3[7:0]),
		     .valid_0		(valid_0),
		     .valid_1		(valid_1),
		     .valid_2		(valid_2),
		     .valid_3		(valid_3),
		     .clk_2f		(clk_2f),
		     .clk_f		(clk_f));
   synth_mux4x2_8bits SYNT( /*AUTOINST*/
			   // Outputs
			   .data_00_synt	(data_00_synt[7:0]),
			   .data_11_synt	(data_11_synt[7:0]),
			   .valid_00_synt	(valid_00_synt),
			   .valid_11_synt	(valid_11_synt),
			   // Inputs
			   .clk_2f		(clk_2f),
			   .clk_f		(clk_f),
			   .data_0		(data_0[7:0]),
			   .data_1		(data_1[7:0]),
			   .data_2		(data_2[7:0]),
			   .data_3		(data_3[7:0]),
			   .valid_0		(valid_0),
			   .valid_1		(valid_1),
			   .valid_2		(valid_2),
			   .valid_3		(valid_3));
   probador PROB( /*AUTOINST*/
		 // Outputs
		 .data_0		(data_0[7:0]),
		 .data_1		(data_1[7:0]),
		 .data_2		(data_2[7:0]),
		 .data_3		(data_3[7:0]),
		 .valid_0		(valid_0),
		 .valid_1		(valid_1),
		 .valid_2		(valid_2),
		 .valid_3		(valid_3),
		 .clk_2f		(clk_2f),
		 .clk_f			(clk_f),
		 // Inputs
		 .data_00_synt		(data_00_synt[7:0]),
		 .data_11_synt		(data_11_synt[7:0]),
		 .valid_00_synt		(valid_00_synt),
		 .valid_11_synt		(valid_11_synt),
		 .data_00_cond		(data_00_cond[7:0]),
		 .data_11_cond		(data_11_cond[7:0]),
		 .valid_00_cond		(valid_00_cond),
		 .valid_11_cond		(valid_11_cond));

endmodule // testbench
