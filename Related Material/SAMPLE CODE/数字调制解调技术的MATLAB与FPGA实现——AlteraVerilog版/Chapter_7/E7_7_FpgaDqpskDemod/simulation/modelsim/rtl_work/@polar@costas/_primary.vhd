library verilog;
use verilog.vl_types.all;
entity PolarCostas is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        clk4            : in     vl_logic;
        din             : in     vl_logic_vector(7 downto 0);
        dout            : out    vl_logic_vector(1 downto 0);
        bitsync         : out    vl_logic
    );
end PolarCostas;
