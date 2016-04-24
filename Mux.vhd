
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux is
    Port ( Crs2 : in  STD_LOGIC_VECTOR (31 downto 0);
           SEUOperando : in  STD_LOGIC_VECTOR (31 downto 0);
           selImmediate :in  STD_LOGIC_VECTOR (0 downto 0);
           OperandoALU : out  STD_LOGIC_VECTOR (31 downto 0));
end Mux;

architecture Behavioral of Mux is

begin

process(Crs2,SEUOperando,selImmediate)
	begin
		if(selImmediate = "0")then
			OperandoALU <= Crs2;
		else
			if(selImmediate = "1")then
				OperandoALU <= SEUOperando;
			end if;
		end if;
		end process;

end Behavioral;

