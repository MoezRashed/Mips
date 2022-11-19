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
           regwrite : in  STD_LOGIC);
end reggg;

architecture Behavioral of reggg is

type regfile_type is array (0 to 31) of STD_LOGIC_VECTOR(31 downto 0);

signal reg_array : regfile_type := (X"00000000",X"11111111",X"10000100",X"11110110",X"01010100"
,X"11111111",X"00000000",X"11111A11",X"10000000",X"11111000"
,X"000A0000",X"11110111",X"11000000",X"11000111",X"00111100",X"1AAA1111"
,X"0000A000",X"11111111",X"00000001",X"11111111",X"00000000",X"11111111",X"01110000",X"11110011"
,X"00001000",X"11111E11",X"00000100",X"11111B11",X"0000A000",X"11111111",X"00000110",X"11111111");


begin

readdata1 <= reg_array(to_integer (unsigned(readreg1)));
readdata2 <= reg_array(to_integer (unsigned(readreg2)));

process(regwrite , writereg1 , writedata)
begin 

if (regwrite = '1') then
reg_array(to_integer (unsigned(writereg1))) <= writedata;
end if;
end process;
end Behavioral;

