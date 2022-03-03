library verilog;
use verilog.vl_types.all;
entity monostable is
    port(
        rst             : in     vl_logic;
        clk32           : in     vl_logic;
        din             : in     vl_logic;
        dout            : out    vl_logic
    );
end monostable;
