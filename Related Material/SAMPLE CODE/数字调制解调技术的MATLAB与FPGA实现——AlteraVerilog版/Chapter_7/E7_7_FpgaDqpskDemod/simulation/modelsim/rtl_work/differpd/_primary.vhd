library verilog;
use verilog.vl_types.all;
entity differpd is
    port(
        rst             : in     vl_logic;
        clk32           : in     vl_logic;
        datain          : in     vl_logic;
        clk_i           : in     vl_logic;
        clk_q           : in     vl_logic;
        pd_bef          : out    vl_logic;
        pd_aft          : out    vl_logic
    );
end differpd;
