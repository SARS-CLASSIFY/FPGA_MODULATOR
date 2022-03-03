library verilog;
use verilog.vl_types.all;
entity Shape is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic;
        Isync           : out    vl_logic;
        Qsync           : out    vl_logic
    );
end Shape;
