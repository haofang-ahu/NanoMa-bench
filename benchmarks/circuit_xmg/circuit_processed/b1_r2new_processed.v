module top(x0 , x1 , x2 , y0 , y1 , y2 , y3 );
  input x0 , x1 , x2 ;
  output y0 , y1 , y2 , y3 ;
  wire n4 , n5 , n6 , v1 ;
  assign n4 = x1 ^ x0 ^ 1'b0 ;
  assign n5 = ( x0 & x1 ) | ( x0 & x2 ) | ( x1 & x2 ) ;
  assign v1 = x2 ;
  assign n6 = n5 ^ x2 ^ 1'b0 ;
  assign y0 = v1 ;
  assign y1 = n4 ;
  assign y2 = n6 ;
  assign y3 = ~v1 ;
endmodule
