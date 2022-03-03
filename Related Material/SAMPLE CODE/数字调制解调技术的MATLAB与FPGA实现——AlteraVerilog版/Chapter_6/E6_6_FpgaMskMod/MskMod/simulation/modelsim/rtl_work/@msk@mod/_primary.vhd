library verilog;
use verilog.vl_types.all;
entity MskMod is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic;
        it              : out    vl_logic_vector(14 downto 0);
        qt              : out    vl_logic_vector(14 downto 0)
    );
end MskMod;
