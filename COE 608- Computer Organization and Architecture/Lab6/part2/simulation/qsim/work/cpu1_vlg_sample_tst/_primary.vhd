library verilog;
use verilog.vl_types.all;
entity cpu1_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        dataIn          : in     vl_logic_vector(31 downto 0);
        mem_clk         : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end cpu1_vlg_sample_tst;
