module top(x0 , x1 , x2 , x3 , x4 , y0 , y1 , y2 );
  input x0 , x1 , x2 , x3 , x4 ;
  output y0 , y1 , y2 ;
  wire n10 , n11 , n6 , n7 , n8 , n9 ;
  assign n6 = x1 ^ x0 ^ 1'b0 ;
  assign n8 = ( x0 & x1 ) | ( x0 & x2 ) | ( x1 & x2 ) ;
  assign n9 = x4 ^ x3 ^ 1'b0 ;
  assign n10 = n9 ^ n8 ^ 1'b0 ;
  assign n11 = ( x3 & x4 ) | ( x3 & n8 ) | ( x4 & n8 ) ;
  assign n7 = n6 ^ x2 ^ 1'b0 ;
  assign y0 = n7 ;
  assign y1 = n10 ;
  assign y2 = n11 ;
endmodule
