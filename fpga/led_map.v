//Maps a single hex digit to the 14-segment lines
function[15:0] led_map;
input[3:0] in;
begin
    case(in)
    4'h0: led_map = 16'b00111010_10110001;
    4'h1: led_map = 16'b00000010_10010000;
    4'h2: led_map = 16'b00011100_01110000;
    4'h3: led_map = 16'b00001110_01110000;
    4'h4: led_map = 16'b00000110_01010001;
    4'h5: led_map = 16'b00001110_01100001;
    4'h6: led_map = 16'b00011110_01100001;
    4'h7: led_map = 16'b00000010_00110000;
    4'h8: led_map = 16'b00011110_01110001;
    4'h9: led_map = 16'b00001110_01110001;
    4'hA: led_map = 16'b00001110_01110001;
    4'hB: led_map = 16'b01001110_00110100;
    4'hC: led_map = 16'b00011000_00100001;
    4'hD: led_map = 16'b01001010_00110100;
    4'hE: led_map = 16'b00010000_01100001;
    4'hF: led_map = 16'b00011000_01100001;
    endcase
end
endfunction
