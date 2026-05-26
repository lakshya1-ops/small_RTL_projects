//n bit ripple adder using generator!!
module rca(cout,a,b,cin,sum)

parameter n = 8;
input[N-1:0] a,b;input cin;
output[N-1:0] sum;output cout;
wire[N:0] c;//carry
assign c[0]=cin;
assign cout=c[n];
genvar i;

generate for(i=0;i<N;i=i+1)
begin fa_loop //inside it we write normal FA code only
wire t1,t2,t3;
xor g1(t1,a[i],b[i]),g2(sum[i],t1,c[i]);
and g3(t2,a[i],b[i]),g4(t3,t1,c[i]);
or g5(c[i+1],t2,t3);
end
endgenerate
    
endmodule