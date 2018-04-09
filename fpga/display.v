module display(
    input clk,
    input rst_n,
    input[71:0] display_bits,
    output sclk,
    output sdata,
    output reg sload,
    output reg sclr_n
    );

reg[12:0] counter;
reg count_en;
always@(posedge clk) begin
    if(count_en) counter <= counter + 1;
    else counter <= 0;
end

reg[1:0] state;

always@(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        //state <= 0;
        sclr_n <= 0;
        count_en <= 0;
    end else begin
        sclr_n <= 1;
        count_en <= 0;
        sload <= 0;
        case(state)
        2'b00: begin
            count_en <= 1;
            if(counter[12:6]==72) state <= 2'b01;
        end
        2'b01: begin
            count_en <= 0;
            sload <= 1; //TODO dwell?
            state <= 2'b10;
        end
        2'b10: begin
            sload <= 0;
            state <= 2'b00;
        end
        endcase
    end
end

assign sclk = counter[4];
assign sdata = 1;

endmodule
