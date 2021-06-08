`include "serial_paralelo1.v"
`include "paralelo_serial2.v"
`include "etapaflops3.v"
`include "demux1x2_8bits.v"
`include "demux2x4_8bits.v"

module phy_rx( output wire [7:0] data_rx0, data_rx1,
	       output wire [7:0] data_rx2, data_rx3,
	       output wire 	 valid_rx0, valid_rx1,
	       output wire 	 valid_rx2, valid_rx3,
	       output wire 	 inserter,
	       input wire 	 data_out, reset,
	       input wire 	 clk_f, clk_2f, clk_4f, clk_32f /*AUTOARG*/);

   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			active;			// From SERPAR1 of serial_paralelo1.v
   wire [7:0]		data_rx00;		// From DEMUXL2 of demux1x2_8bits.v
   wire [7:0]		data_rx000;		// From SERPAR1 of serial_paralelo1.v
   wire [7:0]		data_rx00s;		// From FLOPS3 of etapaflops3.v
   wire [7:0]		data_rx11;		// From DEMUXL2 of demux1x2_8bits.v
   wire [7:0]		data_rx11s;		// From FLOPS3 of etapaflops3.v
   wire			valid_rx00;		// From DEMUXL2 of demux1x2_8bits.v
   wire			valid_rx000;		// From SERPAR1 of serial_paralelo1.v
   wire			valid_rx00s;		// From FLOPS3 of etapaflops3.v
   wire			valid_rx11;		// From DEMUXL2 of demux1x2_8bits.v
   wire			valid_rx11s;		// From FLOPS3 of etapaflops3.v
   // End of automatics
   
   serial_paralelo1 SERPAR1( /*AUTOINST*/
			    // Outputs
			    .data_rx000		(data_rx000[7:0]),
			    .valid_rx000	(valid_rx000),
			    .active		(active),
			    // Inputs
			    .data_out		(data_out),
			    .reset		(reset),
			    .clk_4f		(clk_4f),
			    .clk_32f		(clk_32f));
   paralelo_serial2 PARSER2( /*AUTOINST*/
			    // Outputs
			    .inserter		(inserter),
			    // Inputs
			    .clk_4f		(clk_4f),
			    .clk_32f		(clk_32f),
			    .reset		(reset),
			    .active		(active));
   demux1x2_8bits DEMUXL2( /*AUTOINST*/
			  // Outputs
			  .data_rx00		(data_rx00[7:0]),
			  .data_rx11		(data_rx11[7:0]),
			  .valid_rx00		(valid_rx00),
			  .valid_rx11		(valid_rx11),
			  // Inputs
			  .data_rx000		(data_rx000[7:0]),
			  .valid_rx000		(valid_rx000),
			  .clk_2f		(clk_2f),
			  .clk_4f		(clk_4f),
			  .reset		(reset));
   demux2x4_8bits DEMUXL1( /*AUTOINST*/
			  // Outputs
			  .data_rx0		(data_rx0[7:0]),
			  .data_rx1		(data_rx1[7:0]),
			  .data_rx2		(data_rx2[7:0]),
			  .data_rx3		(data_rx3[7:0]),
			  .valid_rx0		(valid_rx0),
			  .valid_rx1		(valid_rx1),
			  .valid_rx2		(valid_rx2),
			  .valid_rx3		(valid_rx3),
			  // Inputs
			  .data_rx00s		(data_rx00s[7:0]),
			  .data_rx11s		(data_rx11s[7:0]),
			  .valid_rx00s		(valid_rx00s),
			  .valid_rx11s		(valid_rx11s),
			  .clk_f		(clk_f),
			  .clk_2f		(clk_2f),
			  .reset		(reset));
   etapaflops3 FLOPS3( /*AUTOINST*/
		      // Outputs
		      .data_rx00s	(data_rx00s[7:0]),
		      .data_rx11s	(data_rx11s[7:0]),
		      .valid_rx00s	(valid_rx00s),
		      .valid_rx11s	(valid_rx11s),
		      // Inputs
		      .data_rx00	(data_rx00[7:0]),
		      .data_rx11	(data_rx11[7:0]),
		      .valid_rx00	(valid_rx00),
		      .valid_rx11	(valid_rx11),
		      .clk_2f		(clk_2f));

endmodule // phy_rx
