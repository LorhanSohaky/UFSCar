library verilog;
use verilog.vl_types.all;
entity MeioSomador4Bits_vlg_sample_tst is
    port(
        SW              : in     vl_logic_vector(8 downto 1);
        sampler_tx      : out    vl_logic
    );
end MeioSomador4Bits_vlg_sample_tst;
