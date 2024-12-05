module halfadder_tb();
reg a,b;
wire s,c;
integer i;

halfadder dut(a,b,s,c);

initial begin
a=1'b0;
b=1'b0;
end
initial begin
for(i=0;i<4;i=i+1)
begin
{a,b}=i;
#10;
end
end
initial 
#50 $finish();
endmodule