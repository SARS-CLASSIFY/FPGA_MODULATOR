library verilog;
use verilog.vl_types.all;
entity BitSync is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        datain          : in     vl_logic;
        sync            : out    vl_logic
    );
end BitSync;
