module top(x0 , x1 , x2 , x3 , x4 , y0 , y1 );
  input x0 , x1 , x2 , x3 , x4 ;
  output y0 , y1 ;
  wire n10 , n11 , n12 , n6 , n7 , n8 , n9 ;
  assign n10 = x2 & x3 ;
  assign n6 = x1 | x2 ;
  assign n7 = x1 & ~x3 ;
  assign n11 = x1 & ~n10 ;
  assign n8 = ( x0 & x2 ) | ( x0 & ~n7 ) | ( x2 & ~n7 ) ;
  assign n12 = ( x4 & ~n10 ) | ( x4 & n11 ) | ( ~n10 & n11 ) ;
  assign n9 = ( x0 & n6 ) | ( x0 & ~n8 ) | ( n6 & ~n8 ) ;
  assign y0 = n9 ;
  assign y1 = n12 ;
endmodule
