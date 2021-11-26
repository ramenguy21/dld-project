module clk_div(clk, clk_d);
  parameter div_value = 1;
  input clk;
  output clk_d;
  reg clk_d;
  reg count;
  intial
  begin
    clk_d = 0;
    count = 0;
  end 
  always @(posedge clk)
    begin
      if(count == div_value)
        count <= 0;
      else
        count <= count + 1;
    end
  
  always @(posedge clk)
    begin
      if(count == div_value)
        clk_d <= ~clk_d;
    end
endmodule 
