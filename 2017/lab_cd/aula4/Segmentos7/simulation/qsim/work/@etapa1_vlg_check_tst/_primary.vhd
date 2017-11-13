library verilog;
use verilog.vl_types.all;
entity Etapa1_vlg_check_tst is
    port(
        HEX0            : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end Etapa1_vlg_check_tst;
