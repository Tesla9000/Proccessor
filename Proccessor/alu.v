// Name: Dev gupta,Pinkesh Mahawar
// Roll No 210318, 210719



module alu #(parameter size=32) (input [size-1:0] a,b,input [5:0] alucontrol,output reg [size-1:0] result,output zero,output reg cout);



// result_reg
always @(alucontrol or a or b ) begin
case (alucontrol)
    6'd0 : result=32'b0;
    6'd1 : result=a+b;
    6'd2 : result=a-b;
    6'd3 : result=a+b;
    6'd4 : result=a-b;
    6'd5 : result=a+b;
    6'd6 : result=a+b;
    6'd7: result=a&b;
    6'd8 : result=a|b;
    6'd9 : result=a&b;
    6'd10 : result=a|b;
    6'd11 : result=a<<b;
    6'd12 : result=a>>b;
    6'd13: result=a+b;
    6'd14 : result=a+b;
    6'd15 : result= (a==b? 32'b0:32'b1);
    6'd16 : result=(a==b? 32'b1:32'b0);
    6'd17 : result=(a<=b  ? 32'b1:32'b0 );
    6'd18 : result=(a<b  ? 32'b1:32'b0);
    6'd19 : result=(a>=b  ? 32'b1:32'b0);
    6'd20 : result=(a>b ? 32'b1:32'b0);
    6'd24 : result=(a<b ? 32'b1:32'b0);
    6'd25 : result=(a<b ? 32'b1:32'b0);
    default: result=32'd0;
endcase
end
assign zero = (result==32'b0)? 1'b1: 1'b0;
endmodule