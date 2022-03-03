library verilog;
use verilog.vl_types.all;
entity PnCode is
    generic(
        Len             : integer := 5
    );
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        pn              : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Len : constant is 1;
end PnCode;
