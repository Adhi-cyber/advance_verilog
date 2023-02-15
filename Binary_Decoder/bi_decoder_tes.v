module bi_decodertb;
  reg [2:0] D;
  wire [7:0] y;
  bi_decoder bin_dec(D, y);
  initial begin
    $dumpfile("dump.vcd");
	  $dumpvars;
    $monitor("D = %b -> y = %0b", D, y);
    repeat(5) begin
      D=$random; #1;
    end
  end
endmodule
