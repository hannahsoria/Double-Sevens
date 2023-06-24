-- Quartus II VHDL Template
-- Unsigned Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity add2 is

	port 
	(
		a	   : in unsigned  (3 downto 0);
		b	   : in unsigned  (3 downto 0);
		
		result : out unsigned (4 downto 0)
	);

end entity;

architecture rtl of add2 is
begin

	result <= ('0' & a) + ('0' & b);

end rtl;
