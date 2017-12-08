library verilog;
use verilog.vl_types.all;
entity inicial is
    generic(
        \Fechado\       : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        Abrindo         : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        \Aberto\        : vl_logic_vector(0 to 1) := (Hi1, Hi0);
        Fechando        : vl_logic_vector(0 to 1) := (Hi1, Hi1)
    );
    port(
        botao           : in     vl_logic;
        aberto          : in     vl_logic;
        fechado         : in     vl_logic;
        motor           : in     vl_logic;
        sentido         : in     vl_logic;
        ledVerde        : out    vl_logic;
        ledVermelho     : out    vl_logic;
        display         : out    vl_logic_vector(6 downto 0);
        clock           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of \Fechado\ : constant is 1;
    attribute mti_svvh_generic_type of Abrindo : constant is 1;
    attribute mti_svvh_generic_type of \Aberto\ : constant is 1;
    attribute mti_svvh_generic_type of Fechando : constant is 1;
end inicial;
