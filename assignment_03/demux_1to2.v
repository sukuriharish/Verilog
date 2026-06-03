module demux_1to2(input i, sel, output y0, y1);
  assign y0 = (~sel) ? i : 1'b0; 
  assign y1 = (sel) ? i : 1'b0;  
endmodule