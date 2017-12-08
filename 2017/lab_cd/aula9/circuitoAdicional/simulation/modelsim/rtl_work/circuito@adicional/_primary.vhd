library verilog;
use verilog.vl_types.all;
entity circuitoAdicional is
    port(
        KEY             : in     vl_logic_vector(0 downto 0);
        LEDG            : out    vl_logic_vector(0 downto 0);
        LEDR            : out    vl_logic_vector(0 downto 0);
        CLK             : in     vl_logic
    );
end circuitoAdicional;
