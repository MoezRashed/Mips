----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:54:30 04/06/2022 
-- Design Name: 
-- Module Name:    mem_unit - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mem_unit is
    Port ( address : in  STD_LOGIC_VECTOR (31 downto 0);
           writedata : in  STD_LOGIC_VECTOR (31 downto 0);
           memwrite : in  STD_LOGIC;
           memread : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           readdata : out  STD_LOGIC_VECTOR (31 downto 0));
end mem_unit;

architecture Behavioral of mem_unit is

type RAM is array (0 to 35) of STD_LOGIC_VECTOR (7 downto 0);
signal MM:RAM := (
x"AB" ,x"CD",x"EF",x"00",
x"75" ,x"74",x"65",x"72",
x"20" ,x"41",x"72",x"63",
x"68" ,x"69",x"74",x"65",
x"12" ,x"34",x"56",x"78",
x"7F" ,x"7F",x"6D",x"6D",
x"00" ,x"00",x"00",x"00",
x"78" ,x"78",x"6A",x"6A",
x"00" ,x"00",x"00",x"01"
);


begin
process (memwrite , memread , clk  , address,writedata)
begin
if memread = '1' and memwrite = '0' then 
readdata(31 downto 24) <= MM(to_integer(unsigned(address)));
readdata(23 downto 16) <= MM(to_integer(unsigned(address))+1);
readdata(15 downto 8) <= MM(to_integer(unsigned(address))+2);
readdata(7 downto 0) <= MM(to_integer(unsigned(address))+3);
elsif memread = '0' and memwrite = '1' and rising_edge(clk)
 then 
MM(to_integer(unsigned(address))) <= writedata(31 downto 24);
MM(to_integer(unsigned(address))+1) <= writedata(23 downto 16);
MM(to_integer(unsigned(address))+2) <= writedata(15 downto 8);
MM(to_integer(unsigned(address))+3) <= writedata(7 downto 0);

end if;
end process;

end Behavioral;

