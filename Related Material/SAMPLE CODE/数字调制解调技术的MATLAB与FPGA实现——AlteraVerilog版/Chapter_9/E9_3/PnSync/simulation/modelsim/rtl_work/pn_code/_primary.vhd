library verilog;
use verilog.vl_types.all;
entity pn_code is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        load            : in     vl_logic;
        addr_load       : in     vl_logic_vector(7 downto 0);
        addr_pn         : out    vl_logic_vector(7 downto 0);
        pn_pre          : out    vl_logic;
        pn_aft          : out    vl_logic;
        pn_mid          : out    vl_logic
    );
end pn_code;
