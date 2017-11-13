library verilog;
use verilog.vl_types.all;
entity MeioSomador4Bits is
    port(
        HEX0            : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        LEDR            : out    vl_logic_vector(4 downto 0);
        SW              : in     vl_logic_vector(8 downto 1)
    );
end MeioSomador4Bits;
