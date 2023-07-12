// Name: Dev gupta,Pinkesh Mahawar
// Roll No 210318, 210719

`include "initial_instructions.v"

module instruction_memory(PC,instruction);
input [6:0] PC;
wire [4:0]addr;

// input rst;



output [31:0] instruction;
// input write_en;
// input mode;
assign addr=PC>>2;
// input [31:0] data_in;
ins_veda ins(0,0,0,32'bx,addr,instruction);
endmodule

// module tb();

// reg [6:0] PC;
// // reg write_en;
// // reg mode;
// // reg [31:0] data_in;
// // reg rst;
// wire [31:0] instruction;

// instruction_memory ins(PC,1'b0,1'b0,1'b0,32'bx,instruction);

// // initial begin
// //     $dumpfile("a.vcd");
// //     $dumpvars(0,tb);
// // end

// initial begin
//     // rst=1'b1;
//     #2
//     // rst=1'b0;
//     // mode=1'b0;
//     // write_en=1'b0;
//     PC=7'd0;
//     #10
//     PC=PC+4;
//     #10
//     PC=PC+4;
//     #10
//     PC=PC+4;
//     #10
//     PC=PC+4; 
// end

// initial #400 $finish;
// endmodule