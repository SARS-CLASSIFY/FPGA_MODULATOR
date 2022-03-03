library verilog;
use verilog.vl_types.all;
entity PnSync is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        di              : in     vl_logic_vector(14 downto 0);
        dq              : in     vl_logic_vector(14 downto 0);
        pn              : out    vl_logic;
        bit_sync        : out    vl_logic;
        locked          : out    vl_logic;
        douti           : out    vl_logic_vector(22 downto 0);
        doutq           : out    vl_logic_vector(22 downto 0)
    );
end PnSync;
