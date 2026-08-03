module tb_traffic_light;
    logic clk;
    logic rst;
    logic [2:0] lights;

    // Instantiate the FSM
    traffic_light dut (
        .clk(clk),
        .rst(rst),
        .lights(lights)
    );

    // Clock Generation (10ns period)
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0;
        rst = 0; // Apply Reset

        $display("Time | Reset | Light Output (R-Y-G)");
        $monitor("%4t |   %b   | %b", $time, rst, lights);

        // Release reset after 12ns
        #12 rst= 1;

        // Run for a few clock cycles
        #60;
