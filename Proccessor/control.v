// Name: Dev gupta,Pinkesh Mahawar
// Roll No 210318, 210719


module control_unit(input [5:0] opcode, output reg regdest,regwrite,alusrc,output reg [1:0]aluop,output reg memread,memwrite,mem_to_reg,branch,jump);

// assign regdest=opcode[5];
// assign regwrite=opcode[4];
// assign alusrc=opcode[3];
// assign aluop=opcode[2:1];
// assign memread=1'b1;
// assign memwrite=1'b1;
// assign mem_to_reg=1'b1;
// assign opcode=instr[31:26];

initial begin
    regdest<=1'b0;
    regwrite<=1'b0;
    alusrc<=1'b0;
    aluop<=2'b0;
    memread<=1'b0;
    memwrite<=1'b0;
    mem_to_reg<=1'b1;
    branch<=1'b0;
    jump<=1'b0;
end

always @(opcode)begin
    case(opcode)
        6'd0 : begin
            regdest<=1'b0;
            regwrite<=1'b0;
            alusrc<=1'b0;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b1;
            branch<=1'b0;
            jump<=1'b0;
        end
         6'd1 : begin
            regdest<=1'b1;
            regwrite<=1'b1;
            alusrc<=1'b0;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b0;
            branch<=1'b0;
            jump<=1'b0;
        end
        6'd2 : begin
            regdest<=1'b1;
            regwrite<=1'b1;
            alusrc<=1'b0;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b0;
            branch<=1'b0;
            jump<=1'b0;
        end
        6'd3 : begin
            regdest<=1'b1;
            regwrite<=1'b1;
            alusrc<=1'b0;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b0;
            branch<=1'b0;
            jump<=1'b0;
        end
        6'd4 : begin
            regdest<=1'b1;
            regwrite<=1'b1;
            alusrc<=1'b0;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b0;
            branch<=1'b0;
            jump<=1'b0;
        end
         6'd5 : begin
            regdest<=1'b0;
            regwrite<=1'b1;
            alusrc<=1'b1;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b0;
            branch<=1'b0;
            jump<=1'b0;
        end
        6'd6 : begin
            regdest<=1'b0;
            regwrite<=1'b1;
            alusrc<=1'b0;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b0;
            branch<=1'b0;
            jump<=1'b0;
        end
        6'd7 : begin
            regdest<=1'b1;
            regwrite<=1'b1;
            alusrc<=1'b0;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b0;
            branch<=1'b0;
            jump<=1'b0;
        end
        6'd8 : begin
            regdest<=1'b1;
            regwrite<=1'b1;
            alusrc<=1'b0;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b0;
            branch<=1'b0;
            jump<=1'b0;
        end
        6'd9 : begin
            regdest<=1'b0;
            regwrite<=1'b1;
            alusrc<=1'b1;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b0;
            branch<=1'b0;
            jump<=1'b0;
        end
        6'd10 : begin
            regdest<=1'b0;
            regwrite<=1'b1;
            alusrc<=1'b1;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b0;
            branch<=1'b0;
            jump<=1'b0;
        end
        6'd11 : begin
            regdest<=1'b0;
            regwrite<=1'b1;
            alusrc<=1'b1;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b0;
            branch<=1'b0;
            jump<=1'b0;
        end
        6'd12 : begin
            regdest<=1'b0;
            regwrite<=1'b1;
            alusrc<=1'b1;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b0;
            branch<=1'b0;
            jump<=1'b0;
        end
        6'd13 : begin
            regdest<=1'b0;
            regwrite<=1'b1;
            alusrc<=1'b1;
            aluop<=2'b0;
            memread<=1'b1;
            memwrite<=1'b0;
            mem_to_reg<=1'b1;
            branch<=1'b0;
            jump<=1'b0;
        end
        6'd14 : begin
            regdest<=1'b0;
            regwrite<=1'b0;
            alusrc<=1'b1;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b1;
            mem_to_reg<=1'b0;
            branch<=1'b0;
            jump<=1'b0;
        end
        6'd15 : begin
            regdest<=1'b0;
            regwrite<=1'b0;
            alusrc<=1'b0;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b1;
            branch<=1'b1;
            jump<=1'b0;
        end
        6'd16 : begin
            regdest<=1'b1;
            regwrite<=1'b0;
            alusrc<=1'b0;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b0;
            branch<=1'b1;
            jump<=1'b0;
        end
        6'd17 : begin
            regdest<=1'b1;
            regwrite<=1'b0;
            alusrc<=1'b0;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b1;
            branch<=1'b1;
            jump<=1'b0;
        end
        6'd18 : begin
            regdest<=1'b1;
            regwrite<=1'b0;
            alusrc<=1'b0;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b1;
            branch<=1'b1;
            jump<=1'b0;
        end
        6'd19 : begin
            regdest<=1'b1;
            regwrite<=1'b0;
            alusrc<=1'b0;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b1;
            branch<=1'b1;
            jump<=1'b0;
        end
        6'd20 : begin
            regdest<=1'b1;
            regwrite<=1'b0;
            alusrc<=1'b0;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b1;
            branch<=1'b1;
            jump<=1'b0;
        end
        6'd21 : begin
            regdest<=1'b0;
            regwrite<=1'b0;
            alusrc<=1'b0;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b1;
            branch<=1'b0;
            jump<=1'b1;
        end
        6'd22 : begin
            regdest<=1'b0;
            regwrite<=1'b0;
            alusrc<=1'b0;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b1;
            branch<=1'b0;
            jump<=1'b1;
        end
        6'd23 : begin
            regdest<=1'b0;
            regwrite<=1'b0;
            alusrc<=1'b0;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b1;
            branch<=1'b0;
            jump<=1'b1;
        end
        6'd24 : begin
            regdest<=1'b1;
            regwrite<=1'b1;
            alusrc<=1'b0;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b0;
            branch<=1'b0;
            jump<=1'b0;
        end
        6'd25 : begin
            regdest<=1'b0;
            regwrite<=1'b1;
            alusrc<=1'b1;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b0;
            branch<=1'b0;
            jump<=1'b0;
        end        
        default: begin
            regdest<=1'b0;
            regwrite<=1'b0;
            alusrc<=1'b0;
            aluop<=2'b0;
            memread<=1'b0;
            memwrite<=1'b0;
            mem_to_reg<=1'b1;
            branch<=1'b0;
            jump<=1'b0;
        end
    endcase
end

// reg regdest_reg,regwrite_reg,alusrc_reg,aluop_reg,memread_reg,mem_to_reg_reg,memwrite_reg;

// assign regdest=regdest_reg;
// assign regwrite=regwrite_reg;
// assign alusrc=alusrc_reg;
// assign aluop=aluop_reg;
// assign memread=memread_reg;
// assign memwrite=memwrite_reg;
// assign mem_to_reg=mem_to_reg_reg;

// endmodule

// module mux16to1 #(parameter size;)(input [size-1] in[15:0],output[size-1:0],switch[3:0])

endmodule