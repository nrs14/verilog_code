module RTCS(
    input wire clk_1Hz,    // 1 Hz clock input
    input wire rst_n,      // Active low reset
    output wire [3:0] sec, // Seconds (00-59)
    output wire [3:0] min, // Minutes (00-59)
    output wire [3:0] hour // Hours (00-23)
);
reg [3:0] seconds = 4'b0; // 4-bit BCD representation for seconds (00-59)
reg [3:0] minutes = 4'b0; // 4-bit BCD representation for minutes (00-59)
reg [3:0] hours   = 4'b0; // 4-bit BCD representation for hours (00-23)
assign sec  = seconds;
assign min  = minutes;
assign hour = hours;
always @(posedge clk_1Hz or posedge rst_n) begin
    if (!rst_n) begin
        // Reset the RTC counters on power-up or reset
        seconds <= 4'b0;
        minutes <= 4'b0;
        hours   <= 4'b0;
    end else if (clk_1Hz) begin
        // Increment seconds and handle BCD roll-over
        if (seconds == 4'b1001) begin // Check if it's 9 in BCD
            seconds <= 4'b0000;     // Reset to 0
            // Increment minutes and handle BCD roll-over
            if (minutes == 4'b1001) begin
                minutes <= 4'b0000;
                // Increment hours and handle BCD roll-over
                if (hours == 4'b0011) begin // Check if it's 23 in BCD
                    hours <= 4'b0000;     // Reset to 0
                end else begin
                    hours <= hours + 1;
                end
            end else begin
                minutes <= minutes + 1;
            end
        end else begin
            seconds <= seconds + 1;
        end
    end
end
endmodule
