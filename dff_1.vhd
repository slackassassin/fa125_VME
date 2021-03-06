----- DFF with reset, set

library ieee;
use ieee.std_logic_1164.all;

entity dff_1 is
	port( 	  d: in std_logic;
			clk: in std_logic;
		reset_n: in std_logic;
		  set_n: in std_logic;
			  q: out std_logic);
end dff_1;

architecture a1 of dff_1 is
begin
p1: process (reset_n,set_n,clk)
	begin
		if reset_n = '0' then q <= '0';
		elsif set_n = '0' then q <= '1';
		elsif rising_edge(clk) then q <= d;
		end if;
	end process p1;
end a1;


		