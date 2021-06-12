module idletemporal( output reg IDLE_OUT,
		     input wire reset, clk_f );

   always @( posedge clk_f ) begin
      if( reset ) begin
	 IDLE_OUT <= 1'b1;
      end
      else begin
	 IDLE_OUT <= 1'b0;
      end
   end
   
endmodule // idletemporal
