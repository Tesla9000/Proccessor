// Name: Dev gupta,Pinkesh Mahawar
// Roll No 210318, 210719

`include "initial_data.v"

module data_memory(input [4:0] address,input [31:0]write_data,input memwrite,memread,output [31:0] read_data);
// wire mode;
// assign mode=~memread;
wire memwrite_temp;
assign memwrite_temp= (memwrite==1'b1 ? 1'b1: 1'b0);
initial_data v2(1'b0,memwrite_temp,1'b0,write_data,address,read_data);
endmodule