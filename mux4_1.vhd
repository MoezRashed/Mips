----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:46:20 04/23/2022 
-- Design Name: 
-- Module Name:    mux4_1 - Behavioral 
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

entity mux4_1 is
   Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end mux4_1; 

architecture Behavioral of mux4_1 is
component mux2_1 is
Port(
	I0: in STD_LOGIC;
	I1: in STD_LOGIC;
	S0: in STD_LOGIC;
	Y: out STD_LOGIC
);
end component;
signal temp: STD_LOGIC;
signal temp2: STD_LOGIC;

begin
M1: mux2_1 port map(
	I0 => I0,
	I1 => I1,
	S0 => S0,
	Y => temp);

M2: mux2_1 port map(
	I0 => I2,
	I1 => I3,
	S0 => S0,
	Y => temp2);
	
M3: mux2_1 port map(
	I0 => temp,
	I1 => temp2,
	S0 => S1,
	Y => Z);

end Behavioral;

