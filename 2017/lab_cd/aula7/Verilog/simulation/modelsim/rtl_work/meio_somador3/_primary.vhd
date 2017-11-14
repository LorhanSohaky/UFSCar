library verilog;
use verilog.vl_types.all;
entity meio_somador3 is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        soma            : out    vl_logic;
        cout            : out    vl_logic
    );
end meio_somador3;
