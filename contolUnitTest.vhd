--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:37:45 03/16/2022
-- Design Name:   
-- Module Name:   D:/Moezmips/contolUnitTest.vhd
-- Project Name:  Moezmips
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ControlUnit
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
 
ENTITY contolUnitTest IS
END contolUnitTest;
 
ARCHITECTURE behavior OF contolUnitTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ControlUnit
    PORT(
         opin : IN  std_logic_vector(5 downto 0);
         RegDst : OUT  std_logic;
         ALUSrc : OUT  std_logic;
         MemtoReg : OUT  std_logic;
         RegWrite : OUT  std_logic;
         MemWrite : OUT  std_logic;
         MemRead : OUT  std_logic;
         Branch : OUT  std_logic;
         AluOp : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal opin : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal RegDst : std_logic;
   signal ALUSrc : std_logic;
   signal MemtoReg : std_logic;
   signal RegWrite : std_logic;
   signal MemWrite : std_logic;
   signal MemRead : std_logic;
   signal Branch : std_logic;
   signal AluOp : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ControlUnit PORT MAP (
          opin => opin,
          RegDst => RegDst,
          ALUSrc => ALUSrc,
          MemtoReg => MemtoReg,
          RegWrite => RegWrite,
          MemWrite => MemWrite,
          MemRead => MemRead,
          Branch => Branch,
          AluOp => AluOp
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      -- insert stimulus here 
		opin<="000000";
		wait for 100 ns;
		opin<="100011";
		wait for 100 ns;
		opin<="101011";
		wait for 100 ns;
		opin<="000100";
		wait for 100 ns;
      wait;
   end process;

END;
