module keyboard(
    input clk,
    input rst_n,
    output[4:0] KBD_row,
    input[5:0] KBD_col,
    
    output reg b_0,
    output reg b_1,
    output reg b_2,
    output reg b_3,
    output reg b_4,
    output reg b_5,
    output reg b_6,
    output reg b_7,
    output reg b_8,
    output reg b_9,
    output reg b_a,
    output reg b_b,
    output reg b_c,
    output reg b_d,
    output reg b_e,
    output reg b_f,
    output reg b_runhalt,
    output reg b_reset,
    output reg b_step,
    output reg b_storeinc,
    output reg b_irq,
    output reg b_dec,
    output reg b_load,
    output reg b_toA,
    output reg b_toSP,
    output reg b_toX,
    output reg b_toY,
    output reg b_toPC
    );
    
    reg[17:0] counter;
    wire lastTickOfRow;
    
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) counter <= 0;
        else counter <= counter + 1;
    end
    
    assign KBD_row[0] = counter[17:15] == 3'b001;
    assign KBD_row[1] = counter[17:15] == 3'b010;
    assign KBD_row[2] = counter[17:15] == 3'b011;
    assign KBD_row[3] = counter[17:15] == 3'b100;
    assign KBD_row[4] = counter[17:15] == 3'b101;
    
    assign lastTickOfRow = &counter[14:0];
    
    reg[1:0] prev_0;
    reg[1:0] prev_1;
    reg[1:0] prev_2;
    reg[1:0] prev_3;
    reg[1:0] prev_4;
    reg[1:0] prev_5;
    reg[1:0] prev_6;
    reg[1:0] prev_7;
    reg[1:0] prev_8;
    reg[1:0] prev_9;
    reg[1:0] prev_a;
    reg[1:0] prev_b;
    reg[1:0] prev_c;
    reg[1:0] prev_d;
    reg[1:0] prev_e;
    reg[1:0] prev_f;
    reg[1:0] prev_runhalt;
    reg[1:0] prev_reset;
    reg[1:0] prev_step;
    reg[1:0] prev_storeinc;
    reg[1:0] prev_irq;
    reg[1:0] prev_dec;
    reg[1:0] prev_load;
    reg[1:0] prev_toA;
    reg[1:0] prev_toSP;
    reg[1:0] prev_toX;
    reg[1:0] prev_toY;
    reg[1:0] prev_toPC;
    
    //ISE explodes when using a task here, so use a macro instead
    `define PROCESS_BTN(IN, PREV, PULSE) \
        PREV <= {PREV[0],IN};\
        if(PREV == 2'b01 && IN) PULSE <= 1;\
        else PULSE <= 0
    
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            prev_0 <= 0;
            prev_1 <= 0;
            prev_2 <= 0;
            prev_3 <= 0;
            prev_4 <= 0;
            prev_5 <= 0;
            prev_6 <= 0;
            prev_7 <= 0;
            prev_8 <= 0;
            prev_9 <= 0;
            prev_a <= 0;
            prev_b <= 0;
            prev_c <= 0;
            prev_d <= 0;
            prev_e <= 0;
            prev_f <= 0;
            prev_runhalt <= 0;
            prev_reset <= 0;
            prev_step <= 0;
            prev_storeinc <= 0;
            prev_irq <= 0;
            prev_dec <= 0;
            prev_load <= 0;
            prev_toA <= 0;
            prev_toSP <= 0;
            prev_toX <= 0;
            prev_toY <= 0;
            prev_toPC <= 0;
            
            b_0 <= 0;
            b_1 <= 0;
            b_2 <= 0;
            b_3 <= 0;
            b_4 <= 0;
            b_5 <= 0;
            b_6 <= 0;
            b_7 <= 0;
            b_8 <= 0;
            b_9 <= 0;
            b_a <= 0;
            b_b <= 0;
            b_c <= 0;
            b_d <= 0;
            b_e <= 0;
            b_f <= 0;
            b_runhalt <= 0;
            b_reset <= 0;
            b_step <= 0;
            b_storeinc <= 0;
            b_irq <= 0;
            b_dec <= 0;
            b_load <= 0;
            b_toA <= 0;
            b_toSP <= 0;
            b_toX <= 0;
            b_toY <= 0;
            b_toPC <= 0;
        end else begin
            b_0 <= 0;
            b_1 <= 0;
            b_2 <= 0;
            b_3 <= 0;
            b_4 <= 0;
            b_5 <= 0;
            b_6 <= 0;
            b_7 <= 0;
            b_8 <= 0;
            b_9 <= 0;
            b_a <= 0;
            b_b <= 0;
            b_c <= 0;
            b_d <= 0;
            b_e <= 0;
            b_f <= 0;
            b_runhalt <= 0;
            b_reset <= 0;
            b_step <= 0;
            b_storeinc <= 0;
            b_irq <= 0;
            b_dec <= 0;
            b_load <= 0;
            b_toA <= 0;
            b_toSP <= 0;
            b_toX <= 0;
            b_toY <= 0;
            b_toPC <= 0;
            
            if(lastTickOfRow) begin
                if(KBD_row[0]) begin
                    `PROCESS_BTN(KBD_col[0],prev_3,b_3);
                    `PROCESS_BTN(KBD_col[1],prev_2,b_2);
                    `PROCESS_BTN(KBD_col[2],prev_1,b_1);
                    `PROCESS_BTN(KBD_col[3],prev_0,b_0);
                    `PROCESS_BTN(KBD_col[4],prev_dec,b_dec);
                    `PROCESS_BTN(KBD_col[5],prev_load,b_load);
                end

                if(KBD_row[1]) begin
                    `PROCESS_BTN(KBD_col[0],prev_7,b_7);
                    `PROCESS_BTN(KBD_col[1],prev_6,b_6);
                    `PROCESS_BTN(KBD_col[2],prev_5,b_5);
                    `PROCESS_BTN(KBD_col[3],prev_4,b_4);
                    `PROCESS_BTN(KBD_col[4],prev_toPC,b_toPC);
                    `PROCESS_BTN(KBD_col[5],prev_step,b_step);
                end

                if(KBD_row[2]) begin
                    `PROCESS_BTN(KBD_col[0],prev_b,b_b);
                    `PROCESS_BTN(KBD_col[1],prev_a,b_a);
                    `PROCESS_BTN(KBD_col[2],prev_9,b_9);
                    `PROCESS_BTN(KBD_col[3],prev_8,b_8);
                    `PROCESS_BTN(KBD_col[4],prev_toX,b_toX);
                    `PROCESS_BTN(KBD_col[5],prev_toSP,b_toSP);
                end

                if(KBD_row[3]) begin
                    `PROCESS_BTN(KBD_col[0],prev_f,b_f);
                    `PROCESS_BTN(KBD_col[1],prev_e,b_e);
                    `PROCESS_BTN(KBD_col[2],prev_c,b_c);
                    `PROCESS_BTN(KBD_col[3],prev_d,b_d);
                    //`PROCESS_BTN(KBD_col[4],prev_NONE,b_NONE);
                    `PROCESS_BTN(KBD_col[5],prev_toA,b_toA);
                end

                if(KBD_row[4]) begin
                    `PROCESS_BTN(KBD_col[0],prev_storeinc,b_storeinc);
                    `PROCESS_BTN(KBD_col[1],prev_toY,b_toY);
                    `PROCESS_BTN(KBD_col[2],prev_irq,b_irq);
                    `PROCESS_BTN(KBD_col[3],prev_runhalt,b_runhalt);
                    //`PROCESS_BTN(KBD_col[4],prev_NONE,b_NONE);
                    `PROCESS_BTN(KBD_col[5],prev_reset,b_reset);
                end
            end
        end
    end
endmodule
