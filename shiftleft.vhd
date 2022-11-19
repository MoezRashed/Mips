----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:40:33 04/23/2022 
-- Design Name: 
-- Module Name:    shiftleft - Behavioral 
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

entity shiftleft is
    Port ( inputt : in  STD_LOGIC_VECTOR (31 downto 0);
           outputt : out  STD_LOGIC_VECTOR (31 downto 0));
end shiftleft;

architecture Behavioral of shiftleft is

begin
outputt <= inputt(29 downto 0) & "00";
end Behavioral;

