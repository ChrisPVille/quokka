.segment "PROG" 

reset:     jmp *

.segment "EXCHANGE"
a_disp:   .byte $00
x_disp:   .byte $00
y_disp:   .byte $00
sp_disp:  .byte $00
pc_disp:  .word $0000
sr_disp:  .byte $00

.segment "VECTORS"
vec_nmi:  .word $ff00
vec_res:  .word $ff00
vec_irq:  .word $ff00
