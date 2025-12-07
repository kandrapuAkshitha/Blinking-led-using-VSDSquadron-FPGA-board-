module top(
    output wire led
);

    wire clk;
    
    // Internal 12MHz oscillator (iCE40 UP5K)
    SB_HFOSC #(.CLKHF_DIV("0b00")) u_hfosc (
        .CLKHFEN(1'b1),
        .CLKHFPU(1'b1),
        .CLKHF(clk)
    );

    led u1(
        .clk(clk),
        .led(led)
    );

endmodule
