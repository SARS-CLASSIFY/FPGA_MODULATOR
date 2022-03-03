library verilog;
use verilog.vl_types.all;
entity nco8m is
    port(
        clk             : in     vl_logic;
        clken           : in     vl_logic;
        fsin_o          : out    vl_logic_vector(9 downto 0);
        out_valid       : out    vl_logic;
        phi_inc_i       : in     vl_logic_vector(31 downto 0);
        reset_n         : in     vl_logic
    );
end nco8m;
