library verilog;
use verilog.vl_types.all;
entity projeto is
    port(
        SW              : in     vl_logic_vector(7 downto 0);
        HEX0            : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0)
    );
end projeto;
