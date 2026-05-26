//parity deterctor(0->even no of 1s,1->odd no of 1s) using moore machine
module parityDetector(x,clk,z);
input x,clk;
output reg z;
reg even_odd;//machine_state//this code cause generation of latch for even_odd o/ p
parameter even=0,odd=1;

always @(posedge clk)

case(even_odd)

even: begin
    z<=x ? 1:0;//if x=1,than o/p=1
    even_odd<=x ? odd:even;//if x=1 than updated state even_odd=odd
end
odd:begin
    z<=x?0:1;//if x=1,than o/p=0
    even_odd<=x?even:odd;//if x=1 than updated state even_odd=even
end
default: even_odd<=even;

endcase
 
endmodule
//total 2 FF generated here,one for z and one for even_odd 

