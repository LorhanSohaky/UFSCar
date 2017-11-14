library verilog;
use verilog.vl_types.all;
entity decodificacao is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        h0              : out    vl_logic;
        h1              : out    vl_logic;
        h2              : out    vl_logic;
        h3              : out    vl_logic;
        h4              : out    vl_logic;
        h5              : out    vl_logic;
        h6              : out    vl_logic
    );
end decodificacao;
