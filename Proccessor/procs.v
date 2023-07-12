// Name: Dev gupta,Pinkesh Mahawar
// Roll No 210318, 210719


`include "fetch.v"
`include "decode.v"
`include "control.v"
`include "alu.v"
`include "sign_extend.v"
`include "alu_control.v"
`include "data_memory.v"
`include "shift_left_2.v"
// `include "initial_instructions.v"
module procs(clk);
reg rst;
input clk;
reg[6:0] pc;
assign stopper=pc;
wire [6:0]pc_next;
wire [31:0] instr;
// wire[31:0]next_instr;
wire [31:0] registers_wire [31:0];
wire [31:0] t0,t1,t2;
wire [5:0]opcode;
wire[5:0] funct;
wire[4:0] shamt;
wire [15:0] imm;
// reg[4:0] state;


// assign t0=registers[8];
// assign t1=registers[9];
// assign t2=registers[10];

// temperory 
// start time
initial begin
    #1
    rst=1'b0;
    // clk=1'b1;
    pc=7'b0;
    // pc_next=7'd4;
    // pc_next=7'd4;
    // #20
    // forever #3 clk=~clk;
end


// instruction memory
instruction_memory inst(pc,instr);


// Change this later
// assign pc_next=pc+4;

// pc update on clk
always@(posedge clk)begin
    pc<=pc_next;
    // pc_next<=pc_n;
end

// always @(pc or data1 or data2 or write_data) begin
//     case(state)
//         5'b10000 : #1 state<=5'b01000;
//         5'b01000 : #1 state<=5'b00100;
//         5'b00100 : #1 state<=5'b00010;
//         5'b00010 : #1 state<=5'b00001;
//         5'b00001 : #1 state<=5'b10000;
//         default : #1 state<=5'b10000;
//     endcase
// end
wire regdest,regwrite;
// Control unit
// assign opcode=instr[31:26];
wire [1:0]aluop;
wire alusrc;
control_unit c(opcode,regdest,regwrite,alusrc,aluop,memread,memwrite,mem_to_reg,branch,jump);
// Decode
wire [31:0] data1,data2,write_data;
register_file r1(instr,write_data,regdest,regwrite,opcode,data1,data2,funct,shamt,pc,imm);

wire [31:0] a,b;
wire [5:0]alucontrol;
wire [31:0]aluout;
wire zero;
wire [31:0] imme;
sign_extend sign1(imm,imme);
// wire result;
wire cout;
assign a=data1;
mux #(.size(32))m2(data2,imme,b,alusrc);
alu #(.size(32)) alu1(a,b,alucontrol,aluout,zero,cout);
alu_control alu_control(opcode,alucontrol);

wire [31:0] read_data;
wire memread,memwrite;
data_memory d1(aluout[4:0],data2,memwrite,memread,read_data);
wire mem_to_reg;
mux #(.size(32)) m3(aluout,read_data,write_data,mem_to_reg);
wire[6:0] offset;
shift_left_2 sl2(imme,offset);
wire cout1,cout2;
wire zero1,zero2;
wire [6:0] pc4;
alu #(.size(7))add1(pc,32'd4,6'd1,pc4,zero1,cout1);
alu #(.size(7))add2(pc4,offset,6'd1,pcoff,zero2,cout2);
wire [6:0]pcoff;
wire [6:0]pctemp;
wire dobranch;
and(dobranch,branch,zero);
mux #(.size(7)) m4(pc4,pcoff,pctemp,dobranch);
wire[6:0] jump_address;
// change this
assign jump_address=instr[6:0]<<2;
// wire [6:0] pc_n;
mux #(.size(7)) m5(pctemp,jump_address,pc_next,jump);
// integer round;
// initial round=0;
// always @(pc)begin
//     if(pc==7'b0)begin
//         if(round)$finish;
//     end
//     round=round+1;
// end

initial #10000 $finish;

endmodule