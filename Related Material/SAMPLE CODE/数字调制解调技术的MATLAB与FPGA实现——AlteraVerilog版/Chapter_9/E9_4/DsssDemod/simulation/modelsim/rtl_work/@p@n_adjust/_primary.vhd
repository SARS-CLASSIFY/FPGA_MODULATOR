library verilog;
use verilog.vl_types.all;
entity PN_adjust is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        di_pre          : in     vl_logic_vector(17 downto 0);
        dq_pre          : in     vl_logic_vector(17 downto 0);
        di_mid          : in     vl_logic_vector(17 downto 0);
        dq_mid          : in     vl_logic_vector(17 downto 0);
        di_aft          : in     vl_logic_vector(17 downto 0);
        dq_aft          : in     vl_logic_vector(17 downto 0);
        gate            : in     vl_logic_vector(35 downto 0);
        addr_pn         : in     vl_logic_vector(7 downto 0);
        load            : out    vl_logic;
        locked          : out    vl_logic;
        addr_load       : out    vl_logic_vector(7 downto 0)
    );
end PN_adjust;
