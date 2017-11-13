library verilog;
use verilog.vl_types.all;
entity somador_4_bits is
    port(
        a1              : in     vl_logic;
        a2              : in     vl_logic;
        b1              : in     vl_logic;
        b2              : in     vl_logic;
        c1              : in     vl_logic;
        c2              : in     vl_logic;
        d1              : in     vl_logic;
        d2              : in     vl_logic;
        soma1           : out    vl_logic;
        soma2           : out    vl_logic;
        soma3           : out    vl_logic;
        soma4           : out    vl_logic;
        cout            : out    vl_logic
    );
end somador_4_bits;
