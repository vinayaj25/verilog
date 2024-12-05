module carry_save_adder(x,y,z,s,c);
input [3:0]x,y,z;
output [4:0]s;
output [4:1]c;

wire [3:0]s1,c1;



full_adder fa0(x[0],y[0],z[0],s1[0],c1[0]);
full_adder fa1(x[1],y[1],z[1],s1[1],c1[1]);
full_adder fa2(x[2],y[2],z[2],s1[2],c1[2]);
full_adder fa3(x[3],y[3],z[3],s1[3],c1[3]);

full_adder fa4(s1[1],c1[0],1'b0,s[1],c[1]);
full_adder fa5(s1[2],c1[1],c[1],s[2],c[2]);
full_adder fa6(s1[3],c1[2],c[2],s[3],c[3]);
full_adder fa7(1'b0,c1[3],c[3],s[4],c[4]);

assign s[0]=s1[0];

endmodule