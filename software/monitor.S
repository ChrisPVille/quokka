.segment    "PROG" 

reset:      inx
            jmp reset
            
nmi_handler:
            sta a_disp
            stx x_disp
            sty y_disp
            rti

.segment "EXCHANGE"
a_disp:     .byte $00
x_disp:     .byte $00
y_disp:     .byte $00
sp_disp:    .byte $00
pc_disp:    .word $0000
sr_disp:    .byte $00

.segment "VECTORS"
vec_nmi:    .addr nmi_handler
vec_res:    .addr reset
vec_irq:    .addr reset
