module etapaflops2( output reg [7:0] data_0, data_1, 
		    output reg [7:0] data_2, data_3,
		    output reg 	     valid_0, valid_1,
		    output reg 	     valid_2, valid_3,
		    input wire [7:0] data_0rf, data_1rf,
		    input wire [7:0] data_2rf, data_3rf,
		    input wire 	     valid_0rf, valid_1rf,
		    input wire 	     valid_2rf, valid_3rf, clk_f );

   always @( posedge clk_f ) begin
      data_0 <= data_0rf;
      data_1 <= data_1rf;
      data_2 <= data_2rf;
      data_3 <= data_3rf;
      valid_0 <= valid_0rf;
      valid_1 <= valid_1rf;
      valid_2 <= valid_2rf;
      valid_3 <= valid_3rf;
   end
   
endmodule 		    
