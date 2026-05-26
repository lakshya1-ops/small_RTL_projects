module tb_parity;
reg clk,x; wire z;

parityDetector PAR(x,clk,z);
initial
begin
    $dumpfile("parity.vcd");
    $dumpvars(0,tb_parity);
    clk=1'b0;
end
always #5 clk=~clk;
initial 
begin
    #2 x=0;  #10 x=1; #10 x=1; #10 x=1;
    #10 x=0; #10 x=1; #10 x=1;#10 x=0;
    #10 x=0; #10 x=1; #10 x=1;#10 x=0;
    #10 $finish;
end
endmodule