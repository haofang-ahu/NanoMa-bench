module top(x0 , x1 , x2 , y0 , y1 );
  input x0 , x1 , x2 ;
  output y0 , y1 ;
  wire n4 , n5 , n6 , n7 ;
  assign n4 = ( x0 & ~x1 ) | ( x0 & x2 ) | ( ~x1 & x2 ) ;
  assign n7 = ( ~x0 & x1 ) | ( ~x0 & x2 ) | ( x1 & x2 ) ;
  assign n5 = ( ~x0 & x1 ) | ( ~x0 & n4 ) | ( x1 & n4 ) ;
  assign n6 = ( ~x2 & n4 ) | ( ~x2 & n5 ) | ( n4 & n5 ) ;
  assign y0 = n6 ;
  assign y1 = n7 ;
endmodule
