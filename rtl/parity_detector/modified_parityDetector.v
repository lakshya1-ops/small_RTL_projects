//modified parity deterctor(0->even no of 1s,1->odd no of 1s) using moore machine
module parityDetector(x,clk,z);
input x,clk;
output reg z;
reg even_odd;//machine_state//this code cause generation of latch for even_odd 
parameter even=0,odd=1;

always @(posedge clk)
case(even_odd)
even: even_odd<=x ? odd:even;//if x=1 than updated state even_odd=odd
odd: even_odd<=x?even:odd;//if x=1 than updated state even_odd=even
default: even_odd<=even;
endcase
 
always @(even_odd)
case(even_odd)
even: z=0//if x=1 than update z=0
odd: z=1;//if x=1 than update z=1 
endcase
endmodule
//only 1 FF generated here for even_odd , for z it is not generated

