.P02
.segment    "PROG" 

reset:      ;Initialize SP
            ldx $ff
            txs

loop:       inx
            sty y_disp
            jmp loop
            
nmi_handler:
            sta a_disp      ;store Acc
            stx x_disp      ;store X
            sty y_disp      ;store Y
            pla             ;pull P (Status) from stack
            sta sr_disp     ;store Status
            pla             ;pull PCl from stack
            sta pcl_disp    ;store PCl
            pla             ;pull PCh from stack
            sta pch_disp    ;store PCh
            tsx             ;SP is now the original value
            stx sp_disp     ;store SP

            ;restore the SP to its original value
            dex
            dex
            dex
            txs
            
            ;Restore the clobbered X and A
            ldx x_disp
            lda a_disp
            rti

.segment "EXCHANGE"
a_disp:     .byte $01
x_disp:     .byte $23
y_disp:     .byte $45
sp_disp:    .byte $67
pcl_disp:   .byte $89
pch_disp:   .byte $ab
sr_disp:    .byte $cd

.segment "VECTORS"
vec_nmi:    .addr nmi_handler
vec_res:    .addr reset
vec_irq:    .addr reset
