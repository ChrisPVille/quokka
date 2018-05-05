module cpu_clockgen(
    input CLK10MHZ,
    input rst_n,
    output reg CLK1MHZ
    );
    
    reg[3:0] clkDivCtr;
    always@(posedge CLK10MHZ or negedge rst_n) begin
        if(~rst_n) begin
            clkDivCtr <= 0;
            CLK1MHZ <= 0;
        end else begin
            if(clkDivCtr == 3'h4) begin
                CLK1MHZ <= ~CLK1MHZ;
                clkDivCtr <= 0;
            end else begin
                clkDivCtr <= clkDivCtr + 1;
            end
        end
    end

endmodule
