
module tcam_tb;

    parameter WIDTH = 8;
    parameter DEPTH = 4;

    reg clk, rst, wr_en, search_en;
    reg [$clog2(DEPTH)-1:0] wr_addr;
    reg [WIDTH-1:0] wr_data, wr_mask, search_key;
    wire [WIDTH-1:0] match_data;
    wire match_found;

    tcam #(WIDTH, DEPTH) dut (
        .clk(clk),
        .rst(rst),
        .wr_en(wr_en),
        .search_en(search_en),
        .wr_addr(wr_addr),
        .wr_data(wr_data),
        .wr_mask(wr_mask),
        .search_key(search_key),
        .match_data(match_data),
        .match_found(match_found)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("tcam.vcd");
        $dumpvars(0, tcam_tb);

        clk = 0; rst = 1;
        wr_en = 0; search_en = 0;
        wr_data = 0; wr_mask = 0; search_key = 0; wr_addr = 0;

        #10 rst = 0;

        // Write entries
        wr_en = 1;
        wr_addr = 0; wr_data = 8'hA5; wr_mask = 8'hFF; #10;
        wr_addr = 1; wr_data = 8'hF0; wr_mask = 8'hF0; #10;
        wr_addr = 2; wr_data = 8'h0F; wr_mask = 8'h0F; #10;
        wr_addr = 3; wr_data = 8'h3C; wr_mask = 8'hFC; #10;
        wr_en = 0;

        // Search operations
        search_key = 8'hA5; search_en = 1; #10; search_en = 0;
        search_key = 8'hF1; search_en = 1; #10; search_en = 0;
        search_key = 8'h00; search_en = 1; #10; search_en = 0;

        #20 $finish;
    end

endmodule
