module top(x0 , x1 , x2 , x3 , x4 , y0 );
  input x0 , x1 , x2 , x3 , x4 ;
  output y0 ;
  wire n10 , n6 , n7 , n8 , n9 ;
  assign n6 = ( x0 & x1 ) | ( x0 & x4 ) | ( x1 & x4 ) ;
  assign n7 = ( x0 & x1 ) | ( x0 & ~x4 ) | ( x1 & ~x4 ) ;
  assign n8 = ( x2 & x4 ) | ( x2 & n7 ) | ( x4 & n7 ) ;
  assign n9 = n6 & n8 ;
  assign n10 = x3 | n9 ;
  assign y0 = n10 ;
endmodule
