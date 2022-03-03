library verilog;
use verilog.vl_types.all;
entity integrator is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        pn              : in     vl_logic;
        addr            : in     vl_logic_vector(7 downto 0);
        din             : in     vl_logic_vector(14 downto 0);
        dout            : out    vl_logic_vector(22 downto 0)
    );
end integrator;
