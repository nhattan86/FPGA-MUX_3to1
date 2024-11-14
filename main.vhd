library ieee;
use ieee.std_logic_1164.all;
entity mux3to1 is
 port (A,B,C: in std_logic;
		 s: in std_logic_vector (1 downto 0);
		 Y: out std_logic);
end mux3to1;
Architecture T of mux3to1 is 
component mux2to1 is
 port (A,B: in std_logic;
		 s: in std_logic;
		 Y: out std_logic);
end component;
signal t: std_logic;
begin 
 x0: mux2to1 port map (A,B,s(0),t);
 x1: mux2to1 port map (t,C,s(1),Y);
end T;
   
library ieee;
use ieee.std_logic_1164.all;
entity mux2to1 is
 port (A,B: in std_logic;
		 s: in std_logic;
		 Y: out std_logic);
end mux2to1;
Architecture T of mux2to1 is
 begin
  process ( A,B,s)
   begin
	 if s = '0' then 
	    Y <= A;
	 else Y<= B;
	 end if;
  end process;
end T;
