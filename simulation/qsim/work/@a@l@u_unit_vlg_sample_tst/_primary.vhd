library verilog;
use verilog.vl_types.all;
entity ALU_unit_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        OP              : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end ALU_unit_vlg_sample_tst;
