module carry_save_adder_tb;
reg [3:0]x,y,z;
wire [4:0]s;
wire [4:1]c;


carry_save_adder dut(x,y,z,s,c);

initial 
begin

x=4'b1111;
y=4'b1111;
z=4'b1111;
#10;

x=4'b0000;
y=4'b0000;
z=4'b0000;
#10;

x=4'b0011;
y=4'b1001;
z=4'b1110;
#10;
$finish;
end

initial
$monitor("x=%b y=%b z=%b s=%b c=%b",x,y,z,s,c);
endmodule