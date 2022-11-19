----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:29:08 03/09/2022 
-- Design Name: 
-- Module Name:    alucontrol - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alucontrol is
    Port ( aluin : in  STD_LOGIC_VECTOR (1 downto 0);
           funin : in  STD_LOGIC_VECTOR (5 downto 0);
           op : out  STD_LOGIC_VECTOR (3 downto 0));
end alucontrol;

architecture Behavioral of alucontrol is

begin
process( aluin , funin )
begin
if aluin = "00"
then op <="0010";
elsif aluin = "01"
then op <="0110";
elsif aluin = "10"
	then 
	if funin(3 downto 0) = "0000"
	then op <="0010";
	elsif funin(3 downto 0) = "0100"
	then op <="0000";
	elsif funin(3 downto 0) = "0100"
	then op <="0000";
	elsif funin(3 downto 0) = "0101"
	then op <="0001";
	elsif funin(3 downto 0) = "0010"
	then op <="0110";
	elsif funin(3 downto 0)= "1010"
	then op <="0111";
	end if;
elsif aluin = "11"
	then 
		if funin(3 downto 0) = "0010"
		then op <="0110";
		elsif funin(3 downto 0)= "1010"
		then op <="0111";
		end if;
end if;
end process;
end Behavioral;

