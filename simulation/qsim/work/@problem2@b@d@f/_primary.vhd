library verilog;
use verilog.vl_types.all;
entity Problem2BDF is
    port(
        first_four      : out    vl_logic_vector(1 to 7);
        clk             : in     vl_logic;
        En              : in     vl_logic;
        data_in         : in     vl_logic;
        reset_FSM       : in     vl_logic;
        second_four     : out    vl_logic_vector(1 to 7);
        sign            : out    vl_logic_vector(1 to 7);
        std_in          : out    vl_logic_vector(1 to 7);
        reset_A         : in     vl_logic;
        reset_B         : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0)
    );
end Problem2BDF;
