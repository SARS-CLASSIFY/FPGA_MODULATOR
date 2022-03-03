library verilog;
use verilog.vl_types.all;
entity SquareLoop is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic_vector(7 downto 0);
        carrier         : out    vl_logic_vector(7 downto 0);
        df              : out    vl_logic_vector(27 downto 0)
    );
end SquareLoop;
