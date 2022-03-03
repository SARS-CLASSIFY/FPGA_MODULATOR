library verilog;
use verilog.vl_types.all;
entity DD is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        yi              : in     vl_logic_vector(26 downto 0);
        yq              : in     vl_logic_vector(26 downto 0);
        bitsync         : in     vl_logic;
        pd              : out    vl_logic_vector(33 downto 0)
    );
end DD;
