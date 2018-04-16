library verilog;
use verilog.vl_types.all;
entity counter is
    generic(
        tpd_reset_to_count: integer := 3;
        tpd_clk_to_count: integer := 2
    );
    port(
        count           : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of tpd_reset_to_count : constant is 1;
    attribute mti_svvh_generic_type of tpd_clk_to_count : constant is 1;
end counter;
