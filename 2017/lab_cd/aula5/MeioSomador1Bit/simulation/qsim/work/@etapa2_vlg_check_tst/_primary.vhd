library verilog;
use verilog.vl_types.all;
entity Etapa2_vlg_check_tst is
    port(
        HEX0            : in     vl_logic_vector(6 downto 0);
        LEDG            : in     vl_logic_vector(1 downto 1);
        sampler_rx      : in     vl_logic
    );
end Etapa2_vlg_check_tst;
