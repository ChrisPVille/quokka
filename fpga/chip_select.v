module chip_select(
    input PHI2,
    input[15:0] A, //Input Address
    input[15:0] mask, //Sets which bits of the below bitPattern are significant
    input[15:0] bitPattern, //Actual pattern to be matched with the address
    output ceN
    );
    
    reg[15:0] match;
    integer i;
    always@(*) begin
        match = 16'h0000;
        if(PHI2) begin //Only compare and assert chip-select on PHI2
            for(i = 0; i<16; i = i+1) begin
                if(~mask[i]) match[i] = 1;
                else if(A[i] & bitPattern[i]) match[i] = 1;
            end
        end
    end
    
    assign ceN = ~&match;

endmodule
