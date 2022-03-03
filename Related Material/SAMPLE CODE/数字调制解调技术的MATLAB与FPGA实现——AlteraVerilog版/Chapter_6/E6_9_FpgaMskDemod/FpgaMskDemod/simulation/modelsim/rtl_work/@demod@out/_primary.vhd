library verilog;
use verilog.vl_types.all;
entity DemodOut is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic;
        Isync           : in     vl_logic;
        Qsync           : in     vl_logic;
        It              : in     vl_logic_vector(25 downto 0);
        Qt              : in     vl_logic_vector(25 downto 0);
        bit_sync        : out    vl_logic;
        dout            : out    vl_logic
    );
end DemodOut;
