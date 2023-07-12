// Name: Dev gupta,Pinkesh Mahawar
// Roll No 210318, 210719


module initial_data(rst,write_en,mode,data_in,address,data_out);
input rst;
input write_en;
input [4:0]address;
input [31:0]data_in;
output reg [31:0]data_out;
input mode;

wire [31:0]array0;
wire [31:0]array1;
wire [31:0]array2;
wire [31:0]array3;
wire [31:0]array4;
wire [31:0]array5;
wire [31:0]array6;
wire [31:0]array7;
wire [31:0]array8;
wire [31:0]array9;

assign array0=memory[2];
assign array1=memory[3];
assign array2=memory[4];
assign array3=memory[5];
assign array4=memory[6];
assign array5=memory[7];
assign array6=memory[8];
assign array7=memory[9];
assign array8=memory[10];
assign array9=memory[11];


reg [31:0]memory[31:0];
integer i;
initial begin
    memory[0]=32'd0;//dummy instruction
    memory[1]=32'd10;// n=size
    memory[2]=32'd2; // addr of array head
    memory[3]=32'd3;
    memory[4]=32'd2;
    memory[5]=32'd2;
    memory[6]=32'd6;
    memory[7]=32'd1;
    memory[8]=32'd4;
    memory[9]=32'd3;
    memory[10]=32'd2;
    memory[11]=32'd1;
    // 7,20,42,51,14,10,9,2,50,21
    //  32'd2, 32'd4, 32'd5, 32'd1, 32'd10, 32'd9, 32'd8, 32'd3,32'd7};
    // memory[1]={6'd2,5'd8,}
    // memory
    // memory[i]<={6'd0,}
end
always @(address or data_in or posedge write_en )begin
if(rst)begin
        for(i=0;i<32;i=i+1)begin
            memory[i] <= 32'bx;
        end
    end
        begin
            if(write_en & !mode)
                begin
                    data_out=data_in;
                    #1
                    if(write_en==1'b1)memory[address] = data_in; 
                end
            else if(write_en & mode)
                begin
                    #1
                      if(write_en==1'b1)memory[address]=data_in;
                end
            else if(!write_en & !mode) begin
                data_out=memory[address];
            end
        end
end
endmodule

// module tb;

// reg rst,write_en,mode;
// reg [31:0] data_in;
// wire [31:0] data_out;
// reg [4:0] addr;

// veda uut(rst,write_en,mode,data_in,addr,data_out);

// // initial begin
// //     clk = 0;
// //     forever #5 clk = ~clk;
// // end

// initial begin
//     $dumpfile("a.vcd");
//     $dumpvars(0,tb);
// end

// initial begin
//     $monitor("time =",$time," data_out = %d data_in = %d mode = %b addr = %b",data_out,data_in,mode,addr);
//     rst = 0;
//     write_en = 1;
//     mode = 0;
    
//     #5
//     mode=1'd1;
//     data_in=32'd40;
//     addr=32'd2;

//     #5
//     mode=1'd1;
//     data_in=32'd10;
//     addr= 32'd1;
//     #10
//     write_en=0;
//     mode=1'd0;
//     addr=32'd1;
//     #10
//     addr=32'd0;
//     #10
//     addr=32'd2;
//     #10 
//     rst=1;
//     addr=32'd1;
//     #10
//     addr=32'd0;
//     #10
//     addr=32'd2;
// end

// initial #300 $finish;
// endmodule