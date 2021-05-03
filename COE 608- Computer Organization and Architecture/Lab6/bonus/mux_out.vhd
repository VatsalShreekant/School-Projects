library ieee;
use ieee.std_logic_1164.all;

entity mux_out is
	port
	(
		in0		: in std_logic_vector(31 downto 0);
		in1		: in std_logic_vector(31 downto 0);
		in2		: in std_logic_vector(31 downto 0);
		in3		: in std_logic_vector(31 downto 0);
		in4		: in std_logic_vector(31 downto 0);
		in5		: in std_logic_vector(31 downto 0);
		in6		: in std_logic_vector(31 downto 0);
		in7		: in std_logic_vector(31 downto 0);
		ctrl	: in std_logic_vector(1 downto 0);
		out0	: out std_logic_vector(31 downto 0);
		out1	: out std_logic_vector(31 downto 0)
	);
end mux_out;


architecture behavior of mux_out is

begin
	
	PROCESS (ctrl)
	BEGIN
		if(ctrl = "00")then
			out0 <= in0;
			out1 <= in1;
		elsif(ctrl = "01")then
			out0 <= in2;
			out1 <= in3;
		elsif(ctrl = "10")then
			out0 <= in4;
			out1 <= in5;
		else
			out0 <= in6;
			out1 <= in7;
		end if;
	END PROCESS;

end behavior;