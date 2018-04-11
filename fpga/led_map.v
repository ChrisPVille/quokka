//Maps a single hex digit to the 14-segment lines
module led_map();

task led_map;
input[3:0] in;
output[15:0] out;
begin
    always@(*) begin
        out = 0;
        case(in)
        4'h0: out = 16'b 00111010_10110001;
        4'h1: out = 16'b 00000010_10010000;
        4'h2: out = 16'b 00011100_01110000;
        4'h3: out = 16'b 00001110_01110000;
        4'h4: out = 16'b 00000110_01010001;
        4'h5: out = 16'b 00001110_01100001;
        4'h6: out = 16'b 00011110_01100001;
        4'h7: out = 16'b 00000010_00110000;
        4'h8: out = 16'b 00011110_01110001;
        4'h9: out = 16'b 00001110_01110001;
        4'hA: out = 16'b 00001110_01110001;
        4'hB: out = 16'b 01001110_00110100;
        4'hC: out = 16'b 00011000_00100001;
        4'hD: out = 16'b 01001010_00110100;
        4'hE: out = 16'b 00010000_01100001;
        4'hF: out = 16'b 00011000_01100001;
        endcase
    end
end
endfunction

endmodule
