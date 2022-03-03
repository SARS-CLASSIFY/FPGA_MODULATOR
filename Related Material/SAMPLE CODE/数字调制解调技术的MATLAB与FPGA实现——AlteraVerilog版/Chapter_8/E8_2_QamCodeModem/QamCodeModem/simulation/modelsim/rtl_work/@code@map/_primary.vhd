library verilog;
use verilog.vl_types.all;
entity CodeMap is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic_vector(3 downto 0);
        I               : out    vl_logic_vector(2 downto 0);
        Q               : out    vl_logic_vector(2 downto 0)
    );
end CodeMap;
