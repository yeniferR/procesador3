--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:57:34 04/21/2016
-- Design Name:   
-- Module Name:   C:/Users/Yenifer Rivas Moreno/Desktop/COMUNICACIONES II/procesador 3/procesadorMonociclo/PSRModofier_TB.vhd
-- Project Name:  procesadorMonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PSRModifier
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
 
ENTITY PSRModofier_TB IS
END PSRModofier_TB;
 
ARCHITECTURE behavior OF PSRModofier_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PSRModifier
    PORT(
         aluResult : IN  std_logic_vector(31 downto 0);
         operando1 : IN  std_logic;
         operando2 : IN  std_logic;
         aluOp : IN  std_logic_vector(5 downto 0);
         nzvc : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal aluResult : std_logic_vector(31 downto 0) := (others => '0');
   signal operando1 : std_logic := '0';
   signal operando2 : std_logic := '0';
   signal aluOp : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal nzvc : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PSRModifier PORT MAP (
          aluResult => aluResult,
          operando1 => operando1,
          operando2 => operando2,
          aluOp => aluOp,
          nzvc => nzvc
        );

   

   -- Stimulus process
   stim_proc: process
   begin		
--     aluResult <= "00000000000000000000000000000000";
--		operando1 <= '1';
-- 		operando2 <= '1';
--		Aluop <= "000101";
--      wait for 100 ns;	
--		aluResult <= "00000000000000000000000000000001";
--		operando1 <= '1';
-- 		operando2 <= '0';
--		aluOp <= "000100";
--		wait for 100 ns;
--		aluResult <= "00000000000000000000000000000010";
--		operando1 <= '0';
-- 		operando2 <= '1';
--		aluOp <= "001011";
--		wait for 100 ns;
--		aluResult <= "00000000000000000000000000000011";
--		operando1 <= '0';
-- 		operando2 <= '0';
--		aluOp <= "010001";

      wait;
   end process;

END;
