library verilog;
use verilog.vl_types.all;
entity PhaseDetect is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        yi              : in     vl_logic_vector(22 downto 0);
        yq              : in     vl_logic_vector(22 downto 0);
        pd              : out    vl_logic_vector(22 downto 0)
    );
end PhaseDetect;
