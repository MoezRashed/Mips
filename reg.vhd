----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:40:50 03/30/2022 
-- Design Name: 
-- Module Name:    reggg - Behavioral 
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

entity reggg is
Port ( 	  readreg1 : in  STD_LOGIC_VECTOR (4 downto 0);
           readreg2 : in  STD_LOGIC_VECTOR (4 downto 0);
           writedata : in  STD_LOGIC_VECTOR (31 downto 0);
           readdata1 : out  STD_LOGIC_VECTOR (31 downto 0);
           readdata2 : out  STD_LOGIC_VECTOR (31 downto 0);
           writereg1 : in  STD_LOGIC_VECTOR (4 downto 0);
           regwrite : in  STD_LOGIC;
			  clk : in STD_LOGIC);
end reggg;

architecture Behavioral of reggg is

type regfile_type is array (0 to 31) of STD_LOGIC_VECTOR(31 downto 0);

signal reg_array : regfile_type := (
x"00000000", x"00000000",
x"00000000", x"00000000",
x"00000005", x"00000007",
x"00000000", x"00000000",
x"00000000", x"00000000",
x"00000000", x"00000000",
x"00000000", x"00000000",
x"00000000", x"00000000",
x"00000000", x"00000000",
x"00000000", x"00000000",
x"00000000", x"00000000",
x"00000000", x"00000000",
x"00000000", x"00000000",
x"00000000", x"00000000",
x"00000000", x"00000000",
x"00000000", x"00000000"
);


begin
process(regwrite , writereg1 , writedata,readreg1,readreg2,clk)
begin 
readdata1 <= reg_array(to_integer (unsigned(readreg1)));
readdata2 <= reg_array(to_integer (unsigned(readreg2)));
if regwrite = '1' AND rising_edge(clk) then
reg_array(to_integer (unsigned(writereg1))) <= writedata;
end if;
end process;
end Behavioral;

