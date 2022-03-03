library verilog;
use verilog.vl_types.all;
entity controldivfreq is
    port(
        rst             : in     vl_logic;
        clk32           : in     vl_logic;
        clk_d1          : in     vl_logic;
        clk_d2          : in     vl_logic;
        pd_before       : in     vl_logic;
        pd_after        : in     vl_logic;
        clk_i           : out    vl_logic;
        clk_q           : out    vl_logic
    );
end controldivfreq;
