library verilog;
use verilog.vl_types.all;
entity cd2ab is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        cd              : in     vl_logic_vector(1 downto 0);
        ab              : out    vl_logic_vector(1 downto 0)
    );
end cd2ab;
