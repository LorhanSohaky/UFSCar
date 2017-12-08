library verilog;
use verilog.vl_types.all;
entity inicial is
    generic(
        A               : vl_logic := Hi0;
        B               : vl_logic := Hi1
    );
    port(
        botao           : in     vl_logic;
        ledVerde        : out    vl_logic;
        ledVermelho     : out    vl_logic;
        clock           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of A : constant is 1;
    attribute mti_svvh_generic_type of B : constant is 1;
end inicial;
