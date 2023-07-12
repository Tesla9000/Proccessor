// Name: Dev gupta,Pinkesh Mahawar
// Roll No 210318, 210719

`include "mux.v"
module register_file(
    input [31:0] instr,
    input [31:0]write_data,
    input regdest,regwrite,
    output [5:0] opcode,
    output[31:0] data1,
    output[31:0] data2,
    output [5:0] funct,
    output [4:0] shamt,
    input [6:0]pc,
    output [15:0] imm
);
reg [31:0] data1_reg,data2_reg;
reg [31:0] registers [31:0];
reg [4:0] rs,rt;
reg [4:0]writeReg;
wire [4:0] writeWire;
wire [31:0] t0;
wire [31:0] t1;
wire [31:0] t2;
wire [31:0] t3;
wire [31:0] t4;
wire [31:0] t5;
wire [31:0] t6;
wire [31:0] t7;
wire [31:0] t8;
wire [31:0] t9;

assign zero_reg=registers[0];
assign t0=registers[8];
assign t1=registers[9];
assign t2=registers[10];
assign t3=registers[11];
assign t4=registers[12];
assign t5=registers[13];
assign t6=registers[14];
assign t7=registers[15];
assign t8=registers[16];
assign t9=registers[17];


assign opcode=instr[31:26];
assign funct=instr[5:0];
assign shamt=instr[10:6];
assign imm = instr[15:0];
mux #(.size(5))m1(instr[20:16],instr[15:11],writeWire,regdest);

initial begin
    registers[0]=32'b0;
end

always @(pc or instr)begin
    rs=instr[25:21];
    rt=instr[20:16];
    data1_reg=registers[instr[25:21]];
    data2_reg=registers[instr[20:16]];
    // if(regwrite==1'b1&& writeReg!=5'd0)begin
    //         registers[writeReg]=write_data;
    // end
end

always @(writeWire) writeReg=writeWire;

always @(write_data or writeReg) begin
    #1
    if(regwrite==1'b1&& writeReg!=5'd0)begin
            registers[writeReg]=write_data;
        end
end
assign data1=data1_reg;
assign data2=data2_reg;

endmodule