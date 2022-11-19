----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:21:33 05/18/2022 
-- Design Name: 
-- Module Name:    instructionmem - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
entity instructionmem is
    Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           Instruction : out  STD_LOGIC_VECTOR (31 downto 0));
end instructionmem;

architecture Behavioral of instructionmem is

type A is array (0 to 35) of STD_LOGIC_VECTOR(7 downto 0);

signal mem : A:= ( 
    x"00", x"85", x"10", x"20",
	 x"AC", x"02", x"00", x"08",
	 x"8C", x"06", x"00", x"08",
	 x"10", x"46", x"00", x"01",
	 x"00", x"46", x"88", x"2A",
	 x"00", x"A4", x"88", x"22",
	 x"00", x"00", x"00", x"00",
	 x"00", x"00", x"00", x"00",
	 x"00", x"00", x"00", x"00"
	 );


begin

process(Address,clk)
    begin
   -- if rising_edge(clk) then
        Instruction(31 downto 24) <= mem(to_integer(unsigned(Address)));
        Instruction(23 downto 16) <= mem(to_integer(unsigned(Address))+1);
        Instruction(15 downto 8) <= mem(to_integer(unsigned(Address))+2);
        Instruction(7 downto 0) <= mem(to_integer(unsigned(Address))+3);
         -- end if;
          end process;

end Behavioral;

