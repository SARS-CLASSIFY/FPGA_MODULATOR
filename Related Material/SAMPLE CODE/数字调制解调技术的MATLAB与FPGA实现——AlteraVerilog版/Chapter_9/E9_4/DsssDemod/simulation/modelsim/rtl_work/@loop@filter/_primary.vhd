library verilog;
use verilog.vl_types.all;
entity LoopFilter is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        load            : in     vl_logic;
        pd              : in     vl_logic_vector(22 downto 0);
        frequency_df    : out    vl_logic_vector(22 downto 0)
    );
end LoopFilter;
