library verilog;
use verilog.vl_types.all;
entity ab2cd is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        ab              : in     vl_logic_vector(1 downto 0);
        cd              : out    vl_logic_vector(1 downto 0)
    );
end ab2cd;
