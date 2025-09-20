library verilog;
use verilog.vl_types.all;
entity Problem3BDF_vlg_check_tst is
    port(
        first_four      : in     vl_logic_vector(1 to 7);
        second_four     : in     vl_logic_vector(1 to 7);
        sign            : in     vl_logic_vector(1 to 7);
        std_in          : in     vl_logic_vector(1 to 7);
        sampler_rx      : in     vl_logic
    );
end Problem3BDF_vlg_check_tst;
