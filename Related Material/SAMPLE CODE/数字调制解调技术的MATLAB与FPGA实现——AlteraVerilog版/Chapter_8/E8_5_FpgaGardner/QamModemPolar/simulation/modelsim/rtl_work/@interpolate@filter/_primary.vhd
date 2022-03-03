library verilog;
use verilog.vl_types.all;
entity InterpolateFilter is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic_vector(15 downto 0);
        uk              : in     vl_logic_vector(15 downto 0);
        dout            : out    vl_logic_vector(17 downto 0)
    );
end InterpolateFilter;
