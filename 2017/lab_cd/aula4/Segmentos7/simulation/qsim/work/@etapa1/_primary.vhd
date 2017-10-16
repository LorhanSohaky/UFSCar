library verilog;
use verilog.vl_types.all;
entity Etapa1 is
    port(
        HEX0            : out    vl_logic_vector(6 downto 0);
        SW              : in     vl_logic_vector(4 downto 1)
    );
end Etapa1;
