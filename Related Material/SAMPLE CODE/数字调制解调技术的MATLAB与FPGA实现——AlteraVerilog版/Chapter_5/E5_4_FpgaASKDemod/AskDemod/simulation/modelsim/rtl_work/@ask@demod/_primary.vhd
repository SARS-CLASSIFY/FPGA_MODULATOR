library verilog;
use verilog.vl_types.all;
entity AskDemod is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic_vector(7 downto 0);
        dout            : out    vl_logic_vector(13 downto 0)
    );
end AskDemod;
