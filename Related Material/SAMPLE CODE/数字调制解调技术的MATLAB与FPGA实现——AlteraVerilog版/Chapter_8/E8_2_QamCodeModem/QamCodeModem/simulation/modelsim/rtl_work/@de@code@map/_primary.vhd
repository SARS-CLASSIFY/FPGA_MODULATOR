library verilog;
use verilog.vl_types.all;
entity DeCodeMap is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        I               : in     vl_logic_vector(2 downto 0);
        Q               : in     vl_logic_vector(2 downto 0);
        dout            : out    vl_logic_vector(3 downto 0)
    );
end DeCodeMap;
