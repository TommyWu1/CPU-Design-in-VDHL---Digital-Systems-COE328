LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity ALU_unit3 is
port(clk:in std_logic;
A,B : in unsigned(7 downto 0);
OP : in unsigned(15 downto 0);
Neg : out std_logic;
r1: out unsigned(3 downto 0);
r2: out unsigned(3 downto 0));
end ALU_unit3;
architecture calculation of ALU_unit3 is
signal Reg1,Reg2,result : unsigned(7 downto 0);
begin	
Reg1 <= A;
Reg2 <= B;
process(clk,OP)
	begin	
	if(rising_edge(clk)) THEN 
		case OP is --A = 35
		
				when "0000000000000001" => result <= "00000000" ;
				-- student id: 0, y
				when "0000000000000010" => result <= "00000000";
				-- student id: 1, y
				when "0000000000000100" => result <= "00000000";
				-- student id: 2, y
				when "0000000000001000" => result <= "00000000";
				-- student id: 4, y
				when "0000000000010000" => result <= "00000000";
				-- student id: 3, y
				when "0000000000100000" => result <= "00000001";
				-- student id: 5, n
				when "0000000001000000" => result <= "00000001";
				-- student id: 7, n
				when "0000000010000000" => result <= "00000001";
				-- student id: 6, n
				when others => result <= "00000000";
				-- Don’t care, do nothing
			
			end case;
		end if;
	end process;
	
r1 <= result(3 downto 0);
r2 <= result(7 downto 4);
end calculation;



