
module tcam #(parameter WIDTH = 8, DEPTH = 4)(
    input clk,
    input rst,
    input wr_en,
    input search_en,
    input [$clog2(DEPTH)-1:0] wr_addr,
    input [WIDTH-1:0] wr_data,
    input [WIDTH-1:0] wr_mask,
    input [WIDTH-1:0] search_key,
    output reg [WIDTH-1:0] match_data,
    output reg match_found
);

    reg [WIDTH-1:0] data_mem [0:DEPTH-1];
    reg [WIDTH-1:0] mask_mem [0:DEPTH-1];
    integer i;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < DEPTH; i = i + 1) begin
                data_mem[i] <= 0;
                mask_mem[i] <= 0;
            end
        end else if (wr_en) begin
            data_mem[wr_addr] <= wr_data;
            mask_mem[wr_addr] <= wr_mask;
        end
    end

    always @(posedge clk) begin
        match_found = 0;
        match_data = 0;
        if (search_en) begin
            for (i = 0; i < DEPTH; i = i + 1) begin
                if ((data_mem[i] & mask_mem[i]) == (search_key & mask_mem[i])) begin
                    match_found = 1;
                    match_data = data_mem[i];
                end
            end
        end
    end

endmodule
