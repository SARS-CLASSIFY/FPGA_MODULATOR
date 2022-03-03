library verilog;
use verilog.vl_types.all;
entity clktrans is
    port(
        rst             : in     vl_logic;
        clk32           : in     vl_logic;
        clk_d1          : out    vl_logic;
        clk_d2          : out    vl_logic
    );
end clktrans;
