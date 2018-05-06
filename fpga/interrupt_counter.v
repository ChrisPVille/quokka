module interrupt_counter(
    input clk,
    input rst_n,
    input start,
    output intN
    );

    reg[6:0] counter; //Ensures a minimum pulse width
    reg counterEn;
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            counter <= 0;
            counterEn <= 0;
        end else begin
            if(start) counterEn <= 1;
            else if(counterEn) begin
                counter <= counter + 1;
                if(counter == 7'h7f) counterEn <= 0;
            end
        end
    end
    
    assign intN = ~counterEn;
    
endmodule
