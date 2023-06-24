-- Hannah Soria
-- Project 2 Double Sevens
-- add2bench

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity add2bench is
end entity;

architecture test of add2bench is

  constant num_cycles : integer := 255;  -- run for 40 clock cycles

  -- this circuit needs a clock, enable, and a reset
  -- for the counter
  signal clk      : std_logic := '1';
  signal reset, enable: std_logic;
  -- signal for count
  signal num : unsigned(7 downto 0);

  signal A: UNSIGNED(3 downto 0);
  signal B: UNSIGNED(3 downto 0);
  -- signals for each hex display
  signal disp0 : UNSIGNED(6 downto 0);
  signal disp1 : UNSIGNED(6 downto 0);
  

  component add2
  port(
  A: in UNSIGNED(3 downto 0);
  B: in UNSIGNED(3 downto 0);
  result: out UNSIGNED(4 downto 0)
  );
  end component;
  
  component hexdisplay
  port(
    A :  IN UNSIGNED(3 downto 0);
    result: OUT UNSIGNED(6 downto 0)
    );
  end component;
  
  component counter8 is
  port
    (
      clk         : in std_logic;
      reset	  : in std_logic;
      enable	  : in std_logic;
      q  	      : out unsigned(7 downto 0)
      );
	end component;
  

  signal resultO: UNSIGNED (4 downto 0);
  signal temp: UNSIGNED (3 downto 0);
    
  begin
  
  -- start off with a short reset
  reset <= '1', '0' after 5 ns;

  enable <= '1';

  -- create a clock
  process begin
    for i in 1 to num_cycles loop
      clk <= not clk;
      wait for 5 ns;
      clk <= not clk;
      wait for 5 ns;
    end loop;
    wait;
  end process;
  
	 temp <= '0' & '0' & '0' & resultO(4);
T0: hexdisplay port map(resultO(3 downto 0),disp0);
T1: hexdisplay port map(temp,disp1);
T2: counter8 port map(clk,reset,enable,num);
	 
    C0: add2 port map( A=> num(3 downto 0), B=> num(3 downto 0), result=> resultO);

  end test;