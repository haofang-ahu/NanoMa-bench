module top(x0 , x1 , x2 , x3 , x4 , y0 );
  input x0 , x1 , x2 , x3 , x4 ;
  output y0 ;
  wire n6 , n7 , n8 , n9 ;
  assign n6 = x1 ^ x0 ^ 1'b0 ;
  assign n8 = x4 ^ x3 ^ 1'b0 ;
  assign n7 = n6 ^ x2 ^ 1'b0 ;
  assign n9 = n8 ^ n7 ^ 1'b0 ;
  assign y0 = n9 ;
endmodule
