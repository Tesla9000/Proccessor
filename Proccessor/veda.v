// Name: Dev gupta,Pinkesh Mahawar
// Roll No 210318, 210719


module veda(rst,write_en,mode,data_in,address,data_out);
input rst;
input write_en;
input [4:0]address;
input [31:0]data_in;
output reg [31:0]data_out;
input mode;


reg [31:0]memory[31:0];
integer i;

always @(address)
begin
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
                    memory[address] = data_in;
                end
            else if(write_en & mode)
                begin
                        #1
                      memory[address]=data_in;
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