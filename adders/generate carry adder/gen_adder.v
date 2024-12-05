module gen_adder #(parameter WIDTH=4)(input [WIDTH-1:0]a,b,input cin,
output [WIDTH-1:0]s,output cout);

wire [WIDTH-1:0]c;
genvar i;

generate
for(i=0;i<WIDTH;i=i+1)
begin
if(i==0)
full_adder fa(a[i],b[i],cin,s[i],c[i]);
else
full_adder fa(a[i],b[i],c[i-1],s[i],c[i]);
end
endgenerate
assign cout=c[3];
endmodule



module full_adder(a,b,c,s,cout);
input a,b,c;
output s,cout;

assign s=a^b^c;
assign cout=((a&b)|(b&c)|(a&c));

endmodule