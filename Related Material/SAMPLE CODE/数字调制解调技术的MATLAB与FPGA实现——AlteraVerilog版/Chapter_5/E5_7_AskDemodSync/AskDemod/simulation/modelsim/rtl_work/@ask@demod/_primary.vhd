library verilog;
use verilog.vl_types.all;
entity AskDemod is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        clk32           : in     vl_logic;
        din             : in     vl_logic_vector(7 downto 0);
        dout            : out    vl_logic_vector(13 downto 0);
        gate            : out    vl_logic_vector(13 downto 0);
        dataout         : out    vl_logic;
        bit_sync        : out    vl_logic
    );
end AskDemod;
