--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:15:53 04/06/2022
-- Design Name:   
-- Module Name:   D:/Student/Desktop/Moezmips/mem_unittest.vhd
-- Project Name:  Moezmips
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mem_unit
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
 
ENTITY mem_unittest IS
END mem_unittest;
 
ARCHITECTURE behavior OF mem_unittest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mem_unit
    PORT(
         address : IN  std_logic_vector(31 downto 0);
         writedata : IN  std_logic_vector(31 downto 0);
         memwrite : IN  std_logic;
         memread : IN  std_logic;
         clk : IN  std_logic;
         readdata : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal address : std_logic_vector(31 downto 0) := (others => '0');
   signal writedata : std_logic_vector(31 downto 0) := (others => '0');
   signal memwrite : std_logic := '0';
   signal memread : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal readdata : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mem_unit PORT MAP (
          address => address,
          writedata => writedata,
          memwrite => memwrite,
          memread => memread,
          clk => clk,
          readdata => readdata
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
		address <= x"00000000";
		memwrite <= '0';
		memread <= '1';
		wait for 100 ns;
		address <= x"00000004";
		writedata <= x"00000000";
		memwrite <= '1';
		memread <= '0';
		wait for 100 ns;

		

      wait;
   end process;

END;
