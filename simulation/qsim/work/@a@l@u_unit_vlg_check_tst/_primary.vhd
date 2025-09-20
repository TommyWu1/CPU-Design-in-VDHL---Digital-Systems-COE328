library verilog;
use verilog.vl_types.all;
entity ALU_unit_vlg_check_tst is
    port(
        Neg             : in     vl_logic;
        r1              : in     vl_logic_vector(3 downto 0);
        r2              : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end ALU_unit_vlg_check_tst;
