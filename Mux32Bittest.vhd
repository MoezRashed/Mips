--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:30:16 02/23/2022
-- Design Name:   
-- Module Name:   D:/Moezmips/Mux32Bittest.vhd
-- Project Name:  Moezmips
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux32Bit
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
 
ENTITY Mux32Bittest IS
END Mux32Bittest;
 
ARCHITECTURE behavior OF Mux32Bittest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux32Bit
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         Z : OUT  std_logic_vector(31 downto 0);
         sel : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal sel : std_logic := '0';

 	--Outputs
   signal Z : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux32Bit PORT MAP (
          A => A,
          B => B,
          Z => Z,
          sel => sel
        );

   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

  

      -- insert stimulus here 
       A <= X"FFFFFFFF";
		 B <= X"00000000";
		 sel <= '0';
		  wait for 100 ns;	
		 sel <= '1';
      wait;
   end process;

END;
