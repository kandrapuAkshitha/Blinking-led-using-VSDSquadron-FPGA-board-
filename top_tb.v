`timescale 1ns/1ps

module tb_led;

    wire led;
      
    // Instantiate DUT
    top uut (
        .led(led)
    );

    // Monitor LED changes
    initial begin
        $dumpfile("top.vcd");
        $dumpvars(1);
        $display("Time(ns)\tLED");
        $monitor("%0t\t%b", $time, led);
    end

    // Run simulation for some time
    initial begin
        #5_000_000;   // 5 ms of simulation
        $finish;
    end

endmodule
