library verilog;
use verilog.vl_types.all;
entity Code is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic;
        dout            : out    vl_logic
    );
end Code;
