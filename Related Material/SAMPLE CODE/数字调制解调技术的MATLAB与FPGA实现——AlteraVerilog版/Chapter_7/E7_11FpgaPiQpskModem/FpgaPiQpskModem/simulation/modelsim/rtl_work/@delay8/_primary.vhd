library verilog;
use verilog.vl_types.all;
entity Delay8 is
    port(
        clock           : in     vl_logic;
        shiftin         : in     vl_logic_vector(15 downto 0);
        shiftout        : out    vl_logic_vector(15 downto 0);
        taps            : out    vl_logic_vector(15 downto 0)
    );
end Delay8;
