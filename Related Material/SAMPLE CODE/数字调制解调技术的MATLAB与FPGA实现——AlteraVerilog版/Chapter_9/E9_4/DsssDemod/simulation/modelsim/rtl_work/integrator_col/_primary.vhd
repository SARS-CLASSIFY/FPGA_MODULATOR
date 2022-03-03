library verilog;
use verilog.vl_types.all;
entity integrator_col is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        pn_pre          : in     vl_logic;
        pn_mid          : in     vl_logic;
        pn_aft          : in     vl_logic;
        addr            : in     vl_logic_vector(7 downto 0);
        di              : in     vl_logic_vector(14 downto 0);
        dq              : in     vl_logic_vector(14 downto 0);
        di_pre          : out    vl_logic_vector(22 downto 0);
        dq_pre          : out    vl_logic_vector(22 downto 0);
        di_mid          : out    vl_logic_vector(22 downto 0);
        dq_mid          : out    vl_logic_vector(22 downto 0);
        di_aft          : out    vl_logic_vector(22 downto 0);
        dq_aft          : out    vl_logic_vector(22 downto 0)
    );
end integrator_col;
