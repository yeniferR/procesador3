
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity uc is
    Port ( op : in  STD_LOGIC_VECTOR(1 downto 0);
           op3 : in  STD_LOGIC_VECTOR(5 DOWNTO 0);
           aluop : out  STD_LOGIC_VECTOR(5 DOWNTO 0));
end uc;

architecture arquc of uc is


begin

process (op, op3)
	begin 
	if (op = "10")then
		case op3 is
			when "000000" => -- ADD
				aluop <= "000000";
			when "000010" => -- OR
				aluop  <= "000010";
			when "000100" => -- SUB
				aluop  <= "000100";
			when "000001" => -- AND
				aluop  <= "000001";
			when "000101" => -- ANDN
				aluop  <= "000101";
			when "000110" => -- ORN
				aluop  <= "000110";
			when "000011" => -- XOR
				aluop  <= "000011";
			when "000111" => -- XNOR
				aluop  <= "000111";
			when "010000"=>--addcc
				aluop <= "010000";
			when "011000"=>--addxcc
				aluop <= "011000";	
			when "001000"=>--addx
				aluop <= "001000";
			when "010001"=>--andcc
				aluop <= "010001";
			when "010010"=>--orcc
				aluop <= "010010";
			when "010100"=>--subcc
				aluop <= "010100";
			when "011100"=>--subxcc
				aluop <= "011100";
			when "010011"=>--xorcc
				aluop <= "010011";
			when "010110"=>--norcc
				aluop <= "010110";
			when "010111"=>--xnorcc
				aluop <= "010111";
			when "010101"=>--Xnandcc
				aluop <= "000101";			
			when others =>
				aluop  <= "000000";
		end case;
	end if;
end process;


end arquc;

