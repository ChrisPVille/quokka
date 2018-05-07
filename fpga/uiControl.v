module uiControl(
    input clk,
    input rst_n,
    input stopped,
    input clearDisp,
    input b_0,
    input b_1,
    input b_2,
    input b_3,
    input b_4,
    input b_5,
    input b_6,
    input b_7,
    input b_8,
    input b_9,
    input b_a,
    input b_b,
    input b_c,
    input b_d,
    input b_e,
    input b_f,
    output reg[23:0] disp,
    output dispValid,
    input[15:0] addr,
    input b_load,
    input b_inc,
    input b_dec
    );
    
    assign dispValid = 1;
    
    wire stopping;
    edge_detect stoppedRising(.clk(clk), .rst_n(rst_n), .in(stopped), .out(stopping));

    wire somethingPressed;
    assign somethingPressed = b_0 | b_1 | b_2 | b_3 | b_4 | b_5 | b_6 | b_7 |
                              b_8 | b_9 | b_a | b_b | b_c | b_d | b_e | b_f;
    
    reg[3:0] lowerDigit;
    always@(*) begin
        if(b_0) lowerDigit = 4'h0;
        else if(b_1) lowerDigit = 4'h1;
        else if(b_2) lowerDigit = 4'h2;
        else if(b_3) lowerDigit = 4'h3;
        else if(b_4) lowerDigit = 4'h4;
        else if(b_5) lowerDigit = 4'h5;
        else if(b_6) lowerDigit = 4'h6;
        else if(b_7) lowerDigit = 4'h7;
        else if(b_8) lowerDigit = 4'h8;
        else if(b_9) lowerDigit = 4'h9;
        else if(b_a) lowerDigit = 4'ha;
        else if(b_b) lowerDigit = 4'hb;
        else if(b_c) lowerDigit = 4'hc;
        else if(b_d) lowerDigit = 4'hd;
        else if(b_e) lowerDigit = 4'he;
        else if(b_f) lowerDigit = 4'hf;
        else lowerDigit = 4'h0;
    end
        
    reg addrPreferenceMode;
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            addrPreferenceMode <= 0;
        end else begin
            if(b_load) addrPreferenceMode <= 1;
            else if(somethingPressed | (clearDisp & ~(b_inc|b_dec))) addrPreferenceMode <= 0;
        end
    end
    
    reg clearOnNext;
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            clearOnNext <= 0;
        end else begin
            if(clearDisp) clearOnNext <= 1;
            else if(somethingPressed) clearOnNext <= 0;
        end
    end

    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            disp <= 0;
        end else begin
            if(stopping) begin
                disp <= 0;
            end else if(somethingPressed) begin
                if(clearOnNext) disp <= {20'h00000, lowerDigit};
                else disp <= {disp[19:0], lowerDigit};
            end// else if(addrPreferenceMode) begin
                //disp <= {4'h0, addr};
            //end
        end
    end


endmodule
