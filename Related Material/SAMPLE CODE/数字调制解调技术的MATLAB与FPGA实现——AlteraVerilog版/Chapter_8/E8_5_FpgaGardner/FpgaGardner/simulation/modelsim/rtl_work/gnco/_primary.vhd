library verilog;
use verilog.vl_types.all;
entity gnco is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        wk              : in     vl_logic_vector(15 downto 0);
        uk              : out    vl_logic_vector(15 downto 0);
        nk              : out    vl_logic_vector(15 downto 0);
        strobe          : out    vl_logic
    );
end gnco;
