library verilog;
use verilog.vl_types.all;
entity FskDemod is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        dout            : out    vl_logic_vector(14 downto 0)
    );
end FskDemod;
