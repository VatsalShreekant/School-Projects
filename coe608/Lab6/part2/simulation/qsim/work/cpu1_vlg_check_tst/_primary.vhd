library verilog;
use verilog.vl_types.all;
entity cpu1_vlg_check_tst is
    port(
        addrOut         : in     vl_logic_vector(31 downto 0);
        dataOut         : in     vl_logic_vector(31 downto 0);
        dOutA           : in     vl_logic_vector(31 downto 0);
        dOutB           : in     vl_logic_vector(31 downto 0);
        dOutC           : in     vl_logic;
        dOutIR          : in     vl_logic_vector(31 downto 0);
        dOutPC          : in     vl_logic_vector(31 downto 0);
        dOutZ           : in     vl_logic;
        en_mem          : in     vl_logic;
        outT            : in     vl_logic_vector(2 downto 0);
        wEn             : in     vl_logic;
        wen_mem         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end cpu1_vlg_check_tst;
