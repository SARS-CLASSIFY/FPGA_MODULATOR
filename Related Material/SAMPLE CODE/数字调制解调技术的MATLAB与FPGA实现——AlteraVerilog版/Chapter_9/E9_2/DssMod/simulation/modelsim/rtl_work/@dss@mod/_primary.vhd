library verilog;
use verilog.vl_types.all;
entity DssMod is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic;
        clk_data        : out    vl_logic;
        dout            : out    vl_logic_vector(15 downto 0)
    );
end DssMod;
