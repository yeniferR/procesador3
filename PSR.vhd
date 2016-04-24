
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PSR is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           nzvc : in  STD_LOGIC_VECTOR (3 downto 0);
           carry : out  STD_LOGIC );
end PSR;

architecture Behavioral of PSR is



begin

process(clk,reset,nzvc)
	begin
		
	if(reset = '1') then
			carry <= '0';
				
	else
			if(rising_edge(clk))then
				
					carry <=nzvc(0);
				
			end if;
		end if;
		end process;

end Behavioral;

