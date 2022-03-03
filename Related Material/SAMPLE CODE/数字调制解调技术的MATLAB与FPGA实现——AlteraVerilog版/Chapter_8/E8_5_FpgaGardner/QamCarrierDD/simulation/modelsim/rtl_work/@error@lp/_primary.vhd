library verilog;
use verilog.vl_types.all;
entity ErrorLp is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        strobe          : in     vl_logic;
        yik             : in     vl_logic_vector(17 downto 0);
        yqk             : in     vl_logic_vector(17 downto 0);
        yi              : out    vl_logic_vector(17 downto 0);
        yq              : out    vl_logic_vector(17 downto 0);
        sync            : out    vl_logic;
        er              : out    vl_logic_vector(15 downto 0);
        wk              : out    vl_logic_vector(15 downto 0)
    );
end ErrorLp;
