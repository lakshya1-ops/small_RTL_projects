//cyclic lamp, MOORE FSM, red green and yellow one by one aftr 1sec
module cyclic_lamp(clk,light);
input clk;
output reg[0:2] light;
parameter s0=0,s1=1,s2=2;//let s0=red,s1=green and s2=yellow
//numbers of s0,s1,and s2 are c=given considering them as state in state diagram

parameter red=3'b100,green=3'b010,yellow=3'b001;//colour defined as number,red=3,green=2, yellow=1
reg[0:1] state; // can be 00,01,10 and hence s0,s1,and s2 && 11 is an invalid state

always @(posedge clk)
case (state)

s0: begin
    light<=green; state<=s1;
end
s1: begin
    light<=yellow; state<=s2;
end
s2:begin
    light<=red; state<=s0;
end
default:begin
    light<=red;
    state<=s0;
end
endcase
endmodule

