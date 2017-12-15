library verilog;
use verilog.vl_types.all;
entity projetoPessoal is
    port(
        SW              : in     vl_logic_vector(3 downto 0);
        LEDG            : out    vl_logic_vector(1 downto 0);
        LEDR            : out    vl_logic_vector(1 downto 0);
        CLK             : in     vl_logic
    );
end projetoPessoal;
