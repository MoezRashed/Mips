--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:00:48 03/09/2022
-- Design Name:   
-- Module Name:   D:/Moezmips/alucontroltest2.vhd
-- Project Name:  Moezmips
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alucontrol
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
 
ENTITY alucontroltest2 IS
END alucontroltest2;
 
ARCHITECTURE behavior OF alucontroltest2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alucontrol
    PORT(
         aluin : IN  std_logic_vector(1 downto 0);
         funin : IN  std_logic_vector(5 downto 0);
         op : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal aluin : std_logic_vector(1 downto 0) := (others => '0');
   signal funin : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal op : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alucontrol PORT MAP (
          aluin => aluin,
          funin => funin,
          op => op
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

    

      -- insert stimulus here 
      aluin <= "00";
		funin <= "100011";
      wait for 100 ns;
		aluin <= "01";
		funin <= "101010";
      wait for 100 ns;
		aluin <= "10";
		funin <= "100000";
      wait for 100 ns;
		aluin <= "10";
		funin <= "010010";
      wait for 100 ns;
		aluin <= "10";
		funin <= "010100";
      wait for 100 ns;
		aluin <= "10";
		funin <= "110101";
      wait for 100 ns;
		aluin <= "10";
		funin <= "111010";
		wait for 100 ns;
		aluin <= "11";
		funin <= "110010";
		wait for 100 ns;
		aluin <= "11";
		funin <= "111010";
      wait;
   end process;

END;
