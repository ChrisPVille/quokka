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
    output[23:0] disp,
    output dispValid
    );
    
    assign dispValid = 1;


endmodule
