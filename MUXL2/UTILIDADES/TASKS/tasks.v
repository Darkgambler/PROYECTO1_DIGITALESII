task signal_init;
   #(TIME*0.5) {reset_n, selector_n, data_in0_n, data_in1_n, 
		   valid_in0_n, valid_in1_n, data_in2_n, data_in3_n,
		valid_in2_n, valid_in3_n} = 'b0_00_1000_0011_11_1100_0110_11;
endtask

integer n = 0;
task reset_test;
   repeat( 11 ) begin: RESET_TEST
      #(TIME*2) {selector_n, data_in0_n, data_in1_n} = $random;
     // {data_in2_n, data_in3_n} = $random;
      if( n < 5 ) begin
	 reset_n = 1'b0;
      end
      else begin
	 reset_n = 1'b1;
      end
      n = n + 1;
   end
endtask

integer k = 0;
task valid_test;
   repeat( 10 ) begin
      #(TIME*2) {data_in0_n,data_in1_n} = $random;
      //{data_in2_n,data_in3_n} = $random;
      if( k < 5 ) begin
	 valid_in0_n = 1'b0;
      end
      else begin
	 valid_in0_n = 1'b1;
      end
      
      if( k % 2 == 0 ) begin
	 selector_n = $random;
      end
      else begin
	 selector_n = 'b00;
      end
      k = k + 1;
   end
endtask

task intro_test;
   repeat( 24 ) begin
      #(TIME*2) data_in0_n = 'b1100 + k; 
      data_in1_n = 'b0001 + k; 
      data_in2_n = 'b1001 + k; 
      data_in3_n = 'b1101 + k;
      if( k % 2 == 0 ) begin
	 selector_n = 'b10;
      end
      else begin
	 selector_n = 'b11;
      end
      k = k + 1;
   end
endtask
      
