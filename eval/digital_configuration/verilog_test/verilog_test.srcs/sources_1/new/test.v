module test(
    input CLK100MHZ,
    output [3:0] led,
    output debug,
    input [3:0] sw
    );
    
    assign led[0] = 1;
    assign debug = 1;

endmodule