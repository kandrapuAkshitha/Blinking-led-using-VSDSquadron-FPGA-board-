module led(
    input wire clk,
    output reg led
);
    reg [23:0] counter = 0;  

    always @(posedge clk) begin
        counter <= counter + 1;
        led <= counter[23];   // Slow blinking
    end
endmodule
