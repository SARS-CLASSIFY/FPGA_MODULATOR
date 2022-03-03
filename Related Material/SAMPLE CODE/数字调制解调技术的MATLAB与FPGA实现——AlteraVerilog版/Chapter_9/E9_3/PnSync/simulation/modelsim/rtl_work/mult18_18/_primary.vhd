library verilog;
use verilog.vl_types.all;
entity mult18_18 is
    port(
        clock           : in     vl_logic;
        dataa           : in     vl_logic_vector(17 downto 0);
        result          : out    vl_logic_vector(35 downto 0)
    );
end mult18_18;
