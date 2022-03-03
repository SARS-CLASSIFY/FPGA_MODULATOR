library verilog;
use verilog.vl_types.all;
entity QamCodeModem is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic_vector(3 downto 0);
        dout            : out    vl_logic_vector(3 downto 0);
        i               : out    vl_logic_vector(2 downto 0);
        q               : out    vl_logic_vector(2 downto 0)
    );
end QamCodeModem;
