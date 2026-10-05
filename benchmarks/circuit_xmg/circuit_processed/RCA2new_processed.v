module top(x0 , x1 , x2 , x3 , x4 , y0 , y1 , y2 );
  input x0 , x1 , x2 , x3 , x4 ;
  output y0 , y1 , y2 ;
  wire n10 , n11 , n12 , n13 , n6 , n7 , n8 , n9 ;
  assign n13 = ( x1 & x3 ) | ( x1 & x4 ) | ( x3 & x4 ) ;
  assign n6 = x2 ^ x0 ^ 1'b0 ;
  assign n7 = n6 ^ x4 ^ 1'b0 ;
  assign n8 = x4 & n6 ;
  assign n10 = ~x1 & n8 ;
  assign n9 = n8 ^ x1 ^ 1'b0 ;
  assign n11 = n10 ^ x3 ^ 1'b0 ;
  assign n12 = ( n9 & ~n10 ) | ( n9 & n11 ) | ( ~n10 & n11 ) ;
  assign y0 = n7 ;
  assign y1 = n12 ;
  assign y2 = n13 ;
endmodule
