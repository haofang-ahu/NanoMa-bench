module top( x0 , x1 , x2 , x3 , x4 , y0 , y1 );
  input x0 , x1 , x2 , x3 , x4 ;
  output y0 , y1 ;
  wire n6 , n7 , n8 , n9 , n10 , n11 ;
  assign n6 = x0 & x2 ;
  assign n7 = x2 & x3 ;
  assign n8 = x1 & ~n7 ;
  assign n9 = n6 | n8 ;
  assign n10 = x4 & ~n7 ;
  assign n11 = n8 | n10 ;
  assign y0 = n9 ;
  assign y1 = n11 ;
endmodule
