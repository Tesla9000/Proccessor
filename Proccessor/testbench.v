// Name: Dev gupta,Pinkesh Mahawar
// Roll No 210318, 210719


`include "procs.v"

module tb();
reg clk;
procs p1(clk);

initial begin
    clk=1'b1;
    forever
    forever #3 clk=~clk;
end

initial begin
    $dumpfile("a.vcd");
    $dumpvars(0,tb);
end

initial #10000 $finish;

endmodule
