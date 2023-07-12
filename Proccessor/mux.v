// Name: Dev gupta,Pinkesh Mahawar
// Roll No 210318, 210719

module mux #(parameter size=1) (input[size-1:0] i0,i1,output[size-1:0] out,input switch);

assign out = (switch? i1:i0);
endmodule