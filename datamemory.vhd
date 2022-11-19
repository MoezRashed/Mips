----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:22:48 04/23/2022 
-- Design Name: 
-- Module Name:    datamemory - Behavioral 
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

entity datamemory is
    Port ( addr : in  STD_LOGIC_VECTOR (31 downto 0);
           w_data : in  STD_LOGIC_VECTOR (31 downto 0);
           r_data : out  STD_LOGIC_VECTOR (31 downto 0);
           mem_w : in  STD_LOGIC;
           mem_r : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end datamemory;

architecture Behavioral of datamemory is
type mem is array (0 to 127) of  STD_LOGIC_VECTOR (7 downto 0);
	signal data_memory: mem := (
		x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58",
		x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58",
		x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58",
		x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58",
		x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58",
		x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58",
		x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58",
		x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58", x"01", x"20", x"f6", x"58"	
	);
	
begin


end Behavioral;

