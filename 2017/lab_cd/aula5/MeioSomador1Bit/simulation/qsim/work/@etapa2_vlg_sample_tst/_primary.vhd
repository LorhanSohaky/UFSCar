library verilog;
use verilog.vl_types.all;
entity Etapa2_vlg_sample_tst is
    port(
        SW              : in     vl_logic_vector(2 downto 1);
        sampler_tx      : out    vl_logic
    );
end Etapa2_vlg_sample_tst;
