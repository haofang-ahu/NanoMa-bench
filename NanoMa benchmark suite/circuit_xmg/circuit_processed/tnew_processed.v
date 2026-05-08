module top(x0 , x1 , x2 , x3 , x4 , y0 , y1 );
  input x0 , x1 , x2 , x3 , x4 ;
  output y0 , y1 ;
  wire n10 , n11 , n12 , n6 , n7 , n8 , n9 , v1 , v2 ;
  assign n6 = ~x0 & x2 ;
  assign n7 = ( ~x1 & x2 ) | ( ~x1 & x3 ) | ( x2 & x3 ) ;
  assign v1 = x1 ;
  assign v2 = x2 ;
  assign n10 = v2 & x3 ;
  assign n11 = ~v1 & x4 ;
  assign n8 = x1 & ~n7 ;
  assign n12 = ( v1 & ~n10 ) | ( v1 & n11 ) | ( ~n10 & n11 ) ;
  assign n9 = ( v2 & ~n6 ) | ( v2 & n8 ) | ( ~n6 & n8 ) ;
  assign y0 = n9 ;
  assign y1 = n12 ;
endmodule
