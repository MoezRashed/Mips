--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:50:55 05/20/2022
-- Design Name:   
-- Module Name:   D:/Education/CA/Moezmips/regcheck1.vhd
-- Project Name:  Moezmips
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: reggg
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY regcheck1 IS
END regcheck1;
 
ARCHITECTURE behavior OF regcheck1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reggg
    PORT(
         readreg1 : IN  std_logic_vector(4 downto 0);
         readreg2 : IN  std_logic_vector(4 downto 0);
         writedata : IN  std_logic_vector(31 downto 0);
         readdata1 : OUT  std_logic_vector(31 downto 0);
         readdata2 : OUT  std_logic_vector(31 downto 0);
         writereg1 : IN  std_logic_vector(4 downto 0);
         regwrite : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal readreg1 : std_logic_vector(4 downto 0) := (others => '0');
   signal readreg2 : std_logic_vector(4 downto 0) := (others => '0');
   signal writedata : std_logic_vector(31 downto 0) := (others => '0');
   signal writereg1 : std_logic_vector(4 downto 0) := (others => '0');
   signal regwrite : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal readdata1 : std_logic_vector(31 downto 0);
   signal readdata2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reggg PORT MAP (
          readreg1 => readreg1,
          readreg2 => readreg2,
          writedata => writedata,
          readdata1 => readdata1,
          readdata2 => readdata2,
          writereg1 => writereg1,
          regwrite => regwrite,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		readreg1 <= "00000";
		readreg2 <= "00001";
		wait for 50 ns;
		regwrite <= '1';
		writereg1 <= "01101";
		writedata <= X"12470000";
      wait;
   end process;

END;
