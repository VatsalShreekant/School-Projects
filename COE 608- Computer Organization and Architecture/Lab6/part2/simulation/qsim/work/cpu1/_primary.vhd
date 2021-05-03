library verilog;
use verilog.vl_types.all;
entity cpu1 is
    port(
        clk             : in     vl_logic;
        mem_clk         : in     vl_logic;
        rst             : in     vl_logic;
        dataIn          : in     vl_logic_vector(31 downto 0);
        dataOut         : out    vl_logic_vector(31 downto 0);
        addrOut         : out    vl_logic_vector(31 downto 0);
        wEn             : out    vl_logic;
        dOutA           : out    vl_logic_vector(31 downto 0);
        dOutB           : out    vl_logic_vector(31 downto 0);
        dOutC           : out    vl_logic;
        dOutZ           : out    vl_logic;
        dOutIR          : out    vl_logic_vector(31 downto 0);
        dOutPC          : out    vl_logic_vector(31 downto 0);
        outT            : out    vl_logic_vector(2 downto 0);
        wen_mem         : out    vl_logic;
        en_mem          : out    vl_logic
    );
end cpu1;
