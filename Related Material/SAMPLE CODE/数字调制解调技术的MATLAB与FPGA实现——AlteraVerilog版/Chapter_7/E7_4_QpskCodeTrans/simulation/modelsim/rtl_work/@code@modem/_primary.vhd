library verilog;
use verilog.vl_types.all;
entity CodeModem is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        ab_in           : in     vl_logic_vector(1 downto 0);
        cd              : out    vl_logic_vector(1 downto 0);
        ab_out          : out    vl_logic_vector(1 downto 0)
    );
end CodeModem;
