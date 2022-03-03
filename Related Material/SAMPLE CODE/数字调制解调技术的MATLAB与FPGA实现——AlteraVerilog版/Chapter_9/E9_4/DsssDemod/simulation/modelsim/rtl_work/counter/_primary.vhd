library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        aclr            : in     vl_logic;
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(7 downto 0);
        sload           : in     vl_logic;
        q               : out    vl_logic_vector(7 downto 0)
    );
end counter;
