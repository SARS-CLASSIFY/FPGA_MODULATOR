library verilog;
use verilog.vl_types.all;
entity QamCarrier is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic_vector(7 downto 0);
        di              : out    vl_logic_vector(26 downto 0);
        dq              : out    vl_logic_vector(26 downto 0);
        df              : out    vl_logic_vector(33 downto 0)
    );
end QamCarrier;
