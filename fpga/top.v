module top(
    input CLK25MHZ,
    inout[7:0] G,
    output GPIO_RW
    );

    assign GPIO_RW = 0;
    
    reg[28:0] counter;
    always@(posedge CLK25MHZ) begin
        counter = counter + 1;
    end

    assign G[7:0] = counter[28:21];
    
endmodule
