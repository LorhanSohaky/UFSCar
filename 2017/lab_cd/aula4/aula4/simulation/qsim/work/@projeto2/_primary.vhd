library verilog;
use verilog.vl_types.all;
entity Projeto2 is
    port(
        LEDG            : out    vl_logic_vector(1 downto 1);
        SW              : in     vl_logic_vector(4 downto 1)
    );
end Projeto2;
