module gen_adder_tb;
parameter  WIDTH=4;
reg [WIDTH-1:0]a,b;
reg cin;
wire [WIDTH-1:0]s;
wire cout;
integer i;

gen_adder #(WIDTH)dut(a,b,cin,s,cout);

initial begin
a=4'b1010;
b=4'b1111;
cin=0;
#10;
a=4'b1010;
b=4'b0101;
cin=0;
#10;
$finish;
end

initial begin
$monitor("a=%b b=%b cin=%b s=%b cout=%b",a,b,cin,s,cout);
end
endmodule