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
    output reg sload,
    output reg sclr_n
    );
    
    //States: DIG1 DIG2 DIG3 DIG4 DIG5 DIG6 DIG7/LED DIG8/LED
    wire[23:0] rowA, rowB, rowC;
    wire timerOverflow;
    raw_display raw_display1(.clk(clk), .rst_n(rst_n), 
        .display_bits({rowA,rowB,rowC}), timerOverflow(timerOverflow),
        .sclk(sclk), .sdata(sdata), .sload(sload), .sclr_n(sclr_n));
      
endmodule
