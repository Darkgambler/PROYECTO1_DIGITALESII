parameter N = 4;
function [N-1:0] random_no_repetido_Nbits;
   input [N-1:0] entrada;
   begin
      random_no_repetido_Nbits = $random;
      while( entrada === random_no_repetido_Nbits ) begin
	 random_no_repetido_Nbits = $random;
      end
   end
endfunction // random_no_repetido

function [1:0] random_no_repetido_2bits;
   input [1:0] entrada;
   begin
      random_no_repetido_2bits = $random;
      while( entrada === random_no_repetido_2bits ) begin
	 random_no_repetido_2bits = $random;
      end
   end
endfunction // random_no_repetido


function [3:0] random_no_repetido_4bits;
   input [3:0] entrada;
   begin
      random_no_repetido_4bits = $random;
      while( entrada === random_no_repetido_4bits ) begin
	 random_no_repetido_4bits = $random;
      end
   end
endfunction // random_no_repetido

function [7:0] random_no_repetido_8bits;
   input [7:0] entrada;
   begin
      random_no_repetido_8bits = $random;
      while( entrada === random_no_repetido_8bits ) begin
	 random_no_repetido_8bits = $random;
      end
   end
endfunction // random_no_repetido
