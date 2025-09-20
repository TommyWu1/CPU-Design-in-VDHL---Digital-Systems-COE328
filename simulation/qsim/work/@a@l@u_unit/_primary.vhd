library verilog;
use verilog.vl_types.all;
entity ALU_unit is
    port(
        clk             : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        OP              : in     vl_logic_vector(15 downto 0);
        Neg             : out    vl_logic;
        r1              : out    vl_logic_vector(3 downto 0);
        r2              : out    vl_logic_vector(3 downto 0)
    );
end ALU_unit;
