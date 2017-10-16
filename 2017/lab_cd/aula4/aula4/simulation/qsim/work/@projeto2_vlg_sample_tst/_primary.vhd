library verilog;
use verilog.vl_types.all;
entity Projeto2_vlg_sample_tst is
    port(
        SW              : in     vl_logic_vector(4 downto 1);
        sampler_tx      : out    vl_logic
    );
end Projeto2_vlg_sample_tst;
