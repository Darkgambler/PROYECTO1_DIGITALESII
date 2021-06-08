`include "phy_rx.v"
`include "phy_tx.v"

module phy( output wire [7:0] data_rx0, data_rx1,
	    output wire [7:0] data_rx2, data_rx3,
	    output wire       valid_rx0, valid_rx1, 
	    output wire       valid_rx2, valid_rx3, 
	    output wire       active, inserter,
	    output wire       IDLE_OUT,
	    // NO MODIFICAR LOS OUTPUTS SIGUIENTES:
	    output wire [7:0] data_0rp, data_1rp,
	    output wire [7:0] data_2rp, data_3rp,
	    output wire       valid_0rp, valid_1rp,
	    output wire       valid_2rp, valid_3rp,
	    input wire [7:0]  data_0p, data_1p,
	    input wire [7:0]  data_2p, data_3p,
	    input wire 	      valid_0p, valid_1p, clk_4f, 
	    input wire 	      valid_2p, valid_3p, clk_f, clk_2f, 
	    input wire 	      clk_32f, reset /*AUTOARG*/);

   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			data_out;		// From PHYTX of phy_tx.v
   // End of automatics

   phy_rx PHYRX( /*AUTOINST*/
		// Outputs
		.data_rx0		(data_rx0[7:0]),
		.data_rx1		(data_rx1[7:0]),
		.data_rx2		(data_rx2[7:0]),
		.data_rx3		(data_rx3[7:0]),
		.valid_rx0		(valid_rx0),
		.valid_rx1		(valid_rx1),
		.valid_rx2		(valid_rx2),
		.valid_rx3		(valid_rx3),
		.inserter		(inserter),
		// Inputs
		.data_out		(data_out),
		.reset			(reset),
		.clk_f			(clk_f),
		.clk_2f			(clk_2f),
		.clk_4f			(clk_4f),
		.clk_32f		(clk_32f));
   phy_tx PHYTX( /*AUTOINST*/
		// Outputs
		.data_out		(data_out),
		.IDLE_OUT		(IDLE_OUT),
		.data_0rp		(data_0rp[7:0]),
		.data_1rp		(data_1rp[7:0]),
		.data_2rp		(data_2rp[7:0]),
		.data_3rp		(data_3rp[7:0]),
		.valid_0rp		(valid_0rp),
		.valid_1rp		(valid_1rp),
		.valid_2rp		(valid_2rp),
		.valid_3rp		(valid_3rp),
		// Inputs
		.data_0p		(data_0p[7:0]),
		.data_1p		(data_1p[7:0]),
		.data_2p		(data_2p[7:0]),
		.data_3p		(data_3p[7:0]),
		.valid_0p		(valid_0p),
		.valid_1p		(valid_1p),
		.inserter		(inserter),
		.clk_4f			(clk_4f),
		.valid_2p		(valid_2p),
		.valid_3p		(valid_3p),
		.clk_f			(clk_f),
		.clk_2f			(clk_2f),
		.clk_32f		(clk_32f),
		.reset			(reset));

endmodule // phy
