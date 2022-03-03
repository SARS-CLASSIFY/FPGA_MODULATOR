library verilog;
use verilog.vl_types.all;
entity BitSync is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        yi              : in     vl_logic_vector(15 downto 0);
        yq              : in     vl_logic_vector(15 downto 0);
        di              : out    vl_logic_vector(17 downto 0);
        dq              : out    vl_logic_vector(17 downto 0);
        sync            : out    vl_logic
    );
end BitSync;
