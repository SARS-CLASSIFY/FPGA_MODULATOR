`timescale 1ns/1ps
module addr_ctrl(
    input wire clk_50M,
    input wire rst_n,
    output wire [7:0] addr,


    input wire [31:0] freqctrl			//frequency control word 

);
    reg [31:0] cnt;
    assign addr =  cnt[31:24];

    always@(posedge clk_50M,negedge rst_n)
    begin
        if(rst_n==0)
            cnt<=0;
        else
            cnt<=cnt+freqctrl;

    end
endmodule