module top(x0 , x1 , x2 , y0 , y1 );
  input x0 , x1 , x2 ;
  output y0 , y1 ;
  wire n4 , n5 , n6 ;
  assign n4 = x1 ^ x0 ^ 1'b0 ;
  assign n6 = ( x0 & x1 ) | ( x0 & x2 ) | ( x1 & x2 ) ;
  assign n5 = n4 ^ x2 ^ 1'b0 ;
  assign y0 = n5 ;
  assign y1 = n6 ;
endmodule
