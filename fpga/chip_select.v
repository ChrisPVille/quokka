module chip_select(
    input PHI2,
    input RW,
    input[15:0] A, //Input Address
    input[15:0] mask, //Sets which bits of the below bitPattern are significant
    input[15:0] bitPattern, //Actual pattern to be matched with the address
    output reg ceN
    );
    
    integer i;
    always@(*) begin
        ceN = 1;
        if(PHI2) begin //Only compare and assert chip-select on PHI2
            for(i = 0; i<16; i = i+1) begin
                if(A[i] & mask[i] & bitPattern[i]) ceN = 0;
            end
        end
    end

endmodule
