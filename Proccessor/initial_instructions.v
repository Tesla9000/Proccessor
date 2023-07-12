// Name: Dev gupta,Pinkesh Mahawar
// Roll No 210318, 210719


module ins_veda(rst,write_en,mode,data_in,address,data_out);
input rst;
input write_en;
input [4:0]address;
input [31:0]data_in;
output reg [31:0]data_out;
input mode;

reg [31:0]memory[31:0];

integer i;
initial begin
    // memory[0]=32'd0;
    // memory[1]=32'd0;
    // memory[2]={6'd5,5'd0,5'd8,16'd2};
    // memory[3]={6'd5,5'd0,5'd9,16'd3};
    // memory[4]={6'd1,5'd8,5'd9,5'd10,11'd0};

    memory[0]=32'd0;
    memory[1]=32'd0; //dummy instruction
    memory[2]={6'd5,5'd0,5'd8,16'd2}; //first instruction
    memory[3]={6'd5,5'd0,5'd9,16'd1};
    memory[4]={6'd13,5'd9,5'd9,16'd0};
    memory[5]={6'd5,5'd9,5'd10,{16{1'b1}}};
    memory[6]={6'd5,5'd0,5'd11,16'd0};

    memory[7]={6'd18,5'd11,5'd10, 16'd15}; //23-7-1
    memory[8]={6'd2,5'd10,5'd11,5'd12,11'd0};
    memory[9]={6'd5,5'd0,5'd13,16'd0};
    
    memory[10]={6'd18,5'd13,5'd12,16'd10}; //21-10-1
    // memory[11]={6'd11,5'd13,5'd14,16'd2};
    memory[11]={6'd5,5'd13,5'd14,16'd0};
    memory[12]={6'd1,5'd8,5'd14,5'd14,11'd0};
    memory[13]={6'd13,5'd14,5'd15,16'd0};
    memory[14]={6'd13,5'd14,5'd16,16'd1};
    memory[15]={6'd20,5'd15,5'd16,16'd3};
    memory[16]={6'd5,5'd15,5'd17,16'd0};
    memory[17]={6'd14,5'd14,5'd16,16'd0};
    memory[18]={6'd14,5'd14,5'd17,16'd1};
    //fi
    memory[19]={6'd5,5'd13,5'd13,16'd1};
    memory[20]={6'd21,26'd10};
    // exit 2
    memory[21] = {6'd5,5'd11,5'd11,16'd1};
    memory[22]= {6'd21,26'd7};
    // exit 1
    memory[23]=32'd0;

    // memory[4]={6'd5,5'd0,5'd11,16'd2};
    // memory[5]={6'd16,5'd0,5'd11,16'd2};
    // memory[6]={6'd5,5'd0,5'd10,16'd2};
    // // memory[6]={6'd13,5'd9,5'd9,16'd0};
    // memory[7]={6'd21,26'd9};
    // memory[8]={6'd5,5'd0,5'd10,16'd3};
    // // memory[8]={6'd2,5'd8,5'd9,5'd10,11'd0};
    // memory[9]={6'd11,5'd10,5'd10,16'd2};
    // memory[10]={6'd14,5'd9,5'd10,16'd0};

    // memory[0]=32'd0;
    // memory[1]=32'd0;
    // memory[2]={6'd5,5'd0,5'd8,16'd0};
    // memory[3]={6'd5,5'd0,5'd9,16'd1};
    // memory[4]={6'd16,5'd8,5'd0,16'd3};
    // memory[1]={6'd2,5'd8,}
    // memory
    // memory[i]<={6'd0,}
    // for(i=4;i<32;i=i+1)begin
    //     memory[i]={6'd5,5'd0,5'd8,16'd2};
    // end
end

always @(address)
begin
if(rst)begin
        // memory[0]<=32'd1;
        // memory[1]<=32'd0;
        // memory[2]<=32'd4;
        // memory[3]<=32'd5;
        // memory[4]<=32'd7;
        for(i=5;i<32;i=i+1)begin
            memory[i] <= 32'bx;
        end
    end
        begin
            if(write_en & !mode)
                begin
                    memory[address] = data_in;
                    data_out=data_in;
                end
            else if(write_en & mode)
                begin
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