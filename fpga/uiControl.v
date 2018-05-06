module uiControl(
    input clk,
    input rst_n,
    input stopped,
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
    output dispValid
    );
    
    assign dispValid = 1;
    
    wire somethingPressed;
    assign somethingPressed = b_0 | b_1 | b_2 | b_3 | b_4 | b_5 | b_6 | b_7 |
                              b_8 | b_9 | b_a | b_b | b_c | b_d | b_e | b_f;
    
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            disp <= 0;
        end else if(somethingPressed) begin
            disp <= {disp[19:4], 4'h0};
            if(b_0) disp[3:0] <= 4'h0;
            else if(b_1) disp[3:0] <= 4'h1;
            else if(b_2) disp[3:0] <= 4'h2;
            else if(b_3) disp[3:0] <= 4'h3;
            else if(b_4) disp[3:0] <= 4'h4;
            else if(b_5) disp[3:0] <= 4'h5;
            else if(b_6) disp[3:0] <= 4'h6;
            else if(b_7) disp[3:0] <= 4'h7;
            else if(b_8) disp[3:0] <= 4'h8;
            else if(b_9) disp[3:0] <= 4'h9;
            else if(b_a) disp[3:0] <= 4'ha;
            else if(b_b) disp[3:0] <= 4'hb;
            else if(b_c) disp[3:0] <= 4'hc;
            else if(b_d) disp[3:0] <= 4'hd;
            else if(b_e) disp[3:0] <= 4'he;
            else if(b_f) disp[3:0] <= 4'hf;
        end
    end


endmodule
