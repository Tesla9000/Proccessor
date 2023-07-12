// Name: Dev gupta,Pinkesh Mahawar
// Roll No 210318, 210719


module sign_extend(input [15:0] imm,output reg [31:0]imme);

always @(imm)begin
    case(imm[15])
        1'b0 :  imme = {16'b0,imm};
        1'b1 :  imme ={{16{1'b1}},imm};
    endcase
end
endmodule