module halfadder_tb;
reg a,b;
wire s,c;
integer i;

halfadder dut(a,b,s,c);

initial begin
for(i=0;i<5;i=i+1)
{a,b}=i;
#10;
end
initial begin
#50 $finish();
end
endmodule