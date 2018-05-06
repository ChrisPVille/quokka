module edge_detect(
    input clk,
    input rst_n,
    input in,
    output out
    );
    
    reg[1:0] track;
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) track <= 0;
        else track <= {track[0], in};
    end
    
    assign out = (track == 2'b01);


endmodule
