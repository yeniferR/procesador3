--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:23:22 04/15/2016
-- Design Name:   
-- Module Name:   C:/Users/Yenifer Rivas Moreno/Desktop/Nueva carpeta - copia/procesadorMonociclo/MUX_TB.vhd
-- Project Name:  procesadorMonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux
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
 
ENTITY MUX_TB IS
END MUX_TB;
 
ARCHITECTURE behavior OF MUX_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux
    PORT(
         Crs2 : IN  std_logic_vector(31 downto 0);
         SEUOperando : IN  std_logic_vector(31 downto 0);
         selImmediate : in  STD_LOGIC_VECTOR (0 downto 0);
         OperandoALU : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Crs2 : std_logic_vector(31 downto 0) := (others => '0');
   signal SEUOperando : std_logic_vector(31 downto 0) := (others => '0');
   signal selImmediate : std_logic_vector(0 downto 0) := (others => '0');

 	--Outputs
   signal OperandoALU : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux PORT MAP (
          Crs2 => Crs2,
          SEUOperando => SEUOperando,
          selImmediate => selImmediate,
          OperandoALU => OperandoALU
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
--      -- hold reset state for 100 ns.
--	Crs2 <= "00000000000000000000000000001000";
--	SEUOperando <= "00000000000000000000000000001010";
--	selImmediate <= "0";
--		wait for 100 ns;
--	selImmediate <= "1";
     

 

      -- insert stimulus here 

      wait;
   end process;

END;
