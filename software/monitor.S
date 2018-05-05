.segment    "PROG" 

reset:      ;Initialize SP
            ldx #$ff
            txs
            php
loop:       inx
            iny
            txa
            eor allOnes
            jmp loop

allOnes:    .byte $FF
            
nmi_handler:
            sta a_disp      ;store Acc
            ldx #$ff
            stx x_disp      ;store X
            jmp nmi_handler
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
a_disp:     .byte $00
x_disp:     .byte $00
y_disp:     .byte $00
sp_disp:    .byte $00
pcl_disp:   .byte $00
pch_disp:   .byte $00
sr_disp:    .byte $00

.segment "VECTORS"
vec_nmi:    .addr nmi_handler
vec_res:    .addr reset
vec_irq:    .addr reset
