module display(
    input clk,
    input rst_n,
    input[7:0] led_a,
    input[7:0] led_x,
    input[7:0] led_y,
    input[15:0] led_sp,
    input[15:0] led_pc,
    input[23:0] led_mem,
    input[7:0] led_data,
    input led_test,
    input led_physical,
    input led_soft,
    input led_run,
    input led_halt,
    input led_neg,
    input led_ovf,
    input led_dash,
    input led_brk,
    input led_dec,
    input led_irq,
    input led_zero,
    input led_carry,
    input ledsValid,
    output sclk,
    output sdata,
    output sload,
    output sclr_n
    );
    
    `include "led_map.v"
    
    //States: DIG1 DIG2 DIG3 DIG4 DIG5 DIG6 DIG7/LED DIG8/LED
    reg[23:0] rowA, rowB, rowC;
    wire digitDone;
    wire enableCathodes;
    raw_display raw_display1(.clk(clk), .rst_n(rst_n),
        .display_bits({rowC,rowB,rowA}),
        .timerOverflow(digitDone), .sclk(sclk), .sdata(sdata), .sload(sload), 
        .sclr_n(sclr_n));
        
    localparam STATE_DIGIT1 = 3'h0;
    localparam STATE_DIGIT2 = 3'h1;
    localparam STATE_DIGIT3 = 3'h2;
    localparam STATE_DIGIT4 = 3'h3;
    localparam STATE_DIGIT5 = 3'h4;
    localparam STATE_DIGIT6 = 3'h5;
    localparam STATE_DIGIT7 = 3'h6;
    localparam STATE_DIGIT8 = 3'h7;
    
    wire[15:0] discrete_map;
    assign discrete_map = ledsValid ? {led_brk, led_dash, led_ovf, led_neg, 
                                       led_irq, led_dec, led_carry, led_zero,
                                       led_physical, led_test, led_halt, 
                                       led_run, 1'b0, led_soft, 2'b00} : 
                                      {8'b00000000, led_physical, led_test, 
                                       led_halt, led_run, 1'b0, led_soft, 
                                       2'b00};

    reg[2:0] state;
    
    reg[7:0] cathodes;
    always@(*) begin
        case(state)
        STATE_DIGIT1: cathodes = 8'b00000010;
        STATE_DIGIT2: cathodes = 8'b00000001;
        STATE_DIGIT3: cathodes = 8'b00001000;
        STATE_DIGIT4: cathodes = 8'b00000100;
        STATE_DIGIT5: cathodes = 8'b10000000;
        STATE_DIGIT6: cathodes = 8'b01000000;
        STATE_DIGIT7: cathodes = 8'b00100000;
        STATE_DIGIT8: cathodes = 8'b00010000;
        endcase
    end
    
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            state <= STATE_DIGIT1;
            rowA <= 0;
            rowB <= 0;
            rowC <= 0;
        end else begin
            case(state)
                STATE_DIGIT1: begin
                    rowA <= {cathodes, led_map(led_x[7:4], 0)};
                    rowB <= {cathodes, led_map(led_sp[7:4], 0)};
                    rowC <= {cathodes, led_map(led_data[7:4], 1)};
                    if(digitDone) state <= STATE_DIGIT2;
                end
                
                STATE_DIGIT2: begin
                    rowA <= {cathodes, led_map(led_x[3:0], 0)};
                    rowB <= {cathodes, led_map(led_sp[3:0], 0)};
                    rowC <= {cathodes, led_map(led_data[3:0], 1)};
                    if(digitDone) state <= STATE_DIGIT3;
                end
                
                STATE_DIGIT3: begin
                    rowA <= {cathodes, led_map(led_y[7:4], 0)};
                    rowB <= {cathodes, led_map(led_sp[15:12], 0)};
                    rowC <= {cathodes, led_map(led_mem[7:4], 1)};
                    if(digitDone) state <= STATE_DIGIT4;
                end
                
                STATE_DIGIT4: begin
                    rowA <= {cathodes, led_map(led_y[3:0], 0)};
                    rowB <= {cathodes, led_map(led_sp[11:8], 0)};
                    rowC <= {cathodes, led_map(led_mem[3:0], 1)};
                    if(digitDone) state <= STATE_DIGIT5;
                end
                
                STATE_DIGIT5: begin
                    rowA <= {cathodes, led_map(led_a[7:4], 0)};
                    rowB <= {cathodes, led_map(led_pc[15:12], 0)};
                    rowC <= {cathodes, led_map(led_mem[23:20], 1)};
                    if(digitDone) state <= STATE_DIGIT6;
                end
                
                STATE_DIGIT6: begin
                    rowA <= {cathodes, led_map(led_a[3:0], 0)};
                    rowB <= {cathodes, led_map(led_pc[11:8], 0)};
                    rowC <= {cathodes, led_map(led_mem[19:16], 1)};
                    if(digitDone) state <= STATE_DIGIT7;
                end
                
                STATE_DIGIT7: begin
                    rowA <= {cathodes, discrete_map};
                    rowB <= {cathodes, led_map(led_pc[7:4], 0)};
                    rowC <= {cathodes, led_map(led_mem[15:12], 1)};
                    if(digitDone) state <= STATE_DIGIT8;
                end                
                
                STATE_DIGIT8: begin
                    rowA <= {cathodes, 16'h0000};
                    rowB <= {cathodes, led_map(led_pc[3:0], 0)};
                    rowC <= {cathodes, led_map(led_mem[11:8], 1)};
                    if(digitDone) state <= STATE_DIGIT1;
                end
            endcase
        end
    end
      
endmodule
