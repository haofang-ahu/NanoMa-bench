module top(x0 , x1 , x2 , y0 , y1 , y2 , y3 );
  input x0 , x1 , x2 ;
  output y0 , y1 , y2 , y3 ;
  wire n10 , n4 , n5 , n6 , n7 , n8 , n9 , v1 ;
  assign n4 = ~x0 & x1 ;
  assign n7 = ( ~x0 & x1 ) | ( ~x0 & x2 ) | ( x1 & x2 ) ;
  assign v1 = x1 ;
  assign n5 = v1 & ~n4 ;
  assign n8 = v1 & n7 ;
  assign n6 = ( x0 & n4 ) | ( x0 & ~n5 ) | ( n4 & ~n5 ) ;
  assign n9 = ( v1 & n7 ) | ( v1 & ~n8 ) | ( n7 & ~n8 ) ;
  assign n10 = ~n8 & n9 ;
  assign y0 = x2 ;
  assign y1 = n6 ;
  assign y2 = n10 ;
  assign y3 = ~x2 ;
endmodule
