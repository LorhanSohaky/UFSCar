library verilog;
use verilog.vl_types.all;
entity Etapa2 is
    port(
        HEX0            : out    vl_logic_vector(6 downto 0);
        SW              : in     vl_logic_vector(2 downto 1);
        LEDG            : out    vl_logic_vector(1 downto 1)
    );
end Etapa2;
