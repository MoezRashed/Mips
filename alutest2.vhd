--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:12:34 03/02/2022
-- Design Name:   
-- Module Name:   D:/Moezmips/alutest2.vhd
-- Project Name:  Moezmips
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY alutest2 IS
END alutest2;
 
ARCHITECTURE behavior OF alutest2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         op : IN  std_logic_vector(3 downto 0);
         zero : OUT  std_logic;
         res : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal op : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal zero : std_logic;
   signal res : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          op => op,
          zero => zero,
          res => res
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


      -- insert stimulus here 
       A <= X"0000000A";
		 B <= X"0000000B";
		 op <= "0000";
       wait for 100 ns;
		 A <= X"0000000A";
		 B <= X"0000000B";
		 op <= "0001";
       wait for 100 ns;
		 A <= X"0000000A";
		 B <= X"0000000B";
		 op <= "0010";
       wait for 100 ns;
		 A <= X"0000000B";
		 B <= X"0000000A";
		 op <= "0110";
       wait for 100 ns;
		 A <= X"0000000A";
		 B <= X"0000000B";
		 op <= "0111";
       wait for 100 ns;
		 A <= X"0000000A";
		 B <= X"0000000B";
		 op <= "1100";
       wait;
		 
   end process;

END;
