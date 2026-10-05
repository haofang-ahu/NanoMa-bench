module top(x0 , x1 , y0 , y1 );
  input x0 , x1 ;
  output y0 , y1 ;
  wire n3 , n4 ;
  assign n3 = x1 ^ x0 ^ 1'b0 ;
  assign n4 = x0 & x1 ;
  assign y0 = n3 ;
  assign y1 = n4 ;
endmodule
