library verilog;
use verilog.vl_types.all;
entity DsssDemod is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic_vector(7 downto 0);
        locked          : out    vl_logic;
        bit_sync        : out    vl_logic;
        dout            : out    vl_logic
    );
end DsssDemod;
