module reset(
    input clk,
    output rst_n
    );

    reg[3:0] rst_counter = 0;
    
    always@(posedge clk) begin
        if(rst_counter != 4'hF) rst_counter <= rst_counter + 1;
    end
    
    assign rst_n = &rst_counter;

endmodule
