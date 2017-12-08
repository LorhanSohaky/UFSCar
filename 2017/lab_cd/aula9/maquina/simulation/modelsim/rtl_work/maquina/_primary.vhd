library verilog;
use verilog.vl_types.all;
entity maquina is
    port(
        SW              : in     vl_logic_vector(4 downto 0);
        LEDG            : out    vl_logic_vector(0 downto 0);
        LEDR            : out    vl_logic_vector(0 downto 0);
        HEX0            : out    vl_logic_vector(6 downto 0);
        CLK             : in     vl_logic
    );
end maquina;
