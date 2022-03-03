library verilog;
use verilog.vl_types.all;
entity PolarDetect is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        yi              : in     vl_logic_vector(26 downto 0);
        yq              : in     vl_logic_vector(26 downto 0);
        pd              : out    vl_logic_vector(26 downto 0)
    );
end PolarDetect;
