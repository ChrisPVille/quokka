.P02
.segment    "PROG" 

reset:      ;Initialize SP
            ldx #$ff
            txs
            ldx #$00
            ldy #$00
            lda #$00

loop:       inx
            iny
            nop
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

chkstatus:  bit status
            bmi chkstatus            

            ;Restore the clobbered X and A
            ldx x_disp
            lda a_disp
;Writing anything to status immediately after being told to resume (by bit 7
;of the status word) will inform the FPGA that only 2 instructions remain to be
;executed before it should stop us again (in the case of single stepping). The
;write otherwise has no effect, and does nothing in all other states.
            stx status
            rti

.segment "EXCHANGE"
a_disp:     .byte $00
x_disp:     .byte $00
y_disp:     .byte $00
sp_disp:    .byte $00
pcl_disp:   .byte $00
pch_disp:   .byte $00
sr_disp:    .byte $00
status:     .byte $00

.segment "VECTORS"
vec_nmi:    .addr nmi_handler
vec_res:    .addr reset
vec_irq:    .addr reset
