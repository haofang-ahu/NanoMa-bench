module top(x0 , x1 , x2 , x3 , x4 , y0 , y1 );
  input x0 , x1 , x2 , x3 , x4 ;
  output y0 , y1 ;
  wire n6 , n7 ;
  assign n6 = ( x0 & x1 ) | ( x0 & x2 ) | ( x1 & x2 ) ;
  assign n7 = ( x3 & x4 ) | ( x3 & n6 ) | ( x4 & n6 ) ;
  assign y0 = n6 ;
  assign y1 = n7 ;
endmodule
