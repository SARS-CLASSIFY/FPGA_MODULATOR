library verilog;
use verilog.vl_types.all;
entity Gate is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic_vector(13 downto 0);
        mean            : out    vl_logic_vector(13 downto 0)
    );
end Gate;
