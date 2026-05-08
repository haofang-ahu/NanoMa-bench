module top(x0 , x1 , y0 , y1 );
  input x0 , x1 ;
  output y0 , y1 ;
  wire n3 , n4 , n5 ;
  assign n3 = ~x0 & x1 ;
  assign n4 = x1 & ~n3 ;
  assign n5 = ( x0 & n3 ) | ( x0 & ~n4 ) | ( n3 & ~n4 ) ;
  assign y0 = n5 ;
  assign y1 = n3 ;
endmodule
