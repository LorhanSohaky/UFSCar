library verilog;
use verilog.vl_types.all;
entity inicial is
    generic(
        A               : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        B               : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        C               : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        D               : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        E               : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0)
    );
    port(
        giro            : in     vl_logic;
        entrada         : in     vl_logic;
        saida           : in     vl_logic;
        metais          : in     vl_logic;
        ledVerde        : out    vl_logic_vector(1 downto 0);
        ledVermelho     : out    vl_logic_vector(1 downto 0);
        display         : out    vl_logic_vector(6 downto 0);
        clock           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of A : constant is 1;
    attribute mti_svvh_generic_type of B : constant is 1;
    attribute mti_svvh_generic_type of C : constant is 1;
    attribute mti_svvh_generic_type of D : constant is 1;
    attribute mti_svvh_generic_type of E : constant is 1;
end inicial;
