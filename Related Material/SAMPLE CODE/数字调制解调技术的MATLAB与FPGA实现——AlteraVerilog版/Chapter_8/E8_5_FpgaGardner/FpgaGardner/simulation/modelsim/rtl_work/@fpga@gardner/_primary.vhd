library verilog;
use verilog.vl_types.all;
entity FpgaGardner is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        di              : in     vl_logic_vector(15 downto 0);
        dq              : in     vl_logic_vector(15 downto 0);
        yi              : out    vl_logic_vector(17 downto 0);
        yq              : out    vl_logic_vector(17 downto 0);
        sync            : out    vl_logic;
        u               : out    vl_logic_vector(15 downto 0);
        e               : out    vl_logic_vector(15 downto 0);
        w               : out    vl_logic_vector(15 downto 0)
    );
end FpgaGardner;
