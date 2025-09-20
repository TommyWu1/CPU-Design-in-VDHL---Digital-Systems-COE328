LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity ALU_unit is
port(clk:in std_logic;
A,B : in unsigned(7 downto 0);
OP : in unsigned(15 downto 0);
Neg : out std_logic;
r1: out unsigned(3 downto 0);
r2: out unsigned(3 downto 0));
end ALU_unit;
architecture calculation of ALU_unit is
signal Reg1,Reg2 : unsigned(7 downto 0);
signal result : unsigned(7 downto 0) := (others => '0');
begin	
Reg1 <= A;
Reg2 <= B;
process(clk,OP)
	begin	
	if(rising_edge(clk)) THEN 
		case OP is
		   
			WHEN "0000000000000001" => result <= Reg1 + Reg2;

			WHEN "0000000000000010" => 
						
					 if (Reg2 > Reg1) then
						result <= Reg2 - Reg1;
						Neg <= '1';
					else
						result <= Reg1 - Reg2;  
						Neg <= '0';
					end if;
					
				when "0000000000000100" => result <= not(Reg1);
				 Neg<='0';
					-- Do inverse
				when "0000000000001000" => result <= not(Reg1 and Reg2); 
				 Neg<='0';
					-- Do Boolean NAND
				when "0000000000010000" => result <= not(Reg1 or Reg2);
				 Neg<='0';
					-- Do Boolean NOR
				when "0000000000100000" => result <= Reg1 and Reg2;
				 Neg<='0';
					-- Do Boolean AND 
				when "0000000001000000" => result <= Reg1 xor Reg2;
				 Neg<='0';
					-- Do Boolean XOR
				when "0000000010000000" => result <= Reg1 or Reg2;
				 Neg<='0';
					-- Do Boolean OR
					
					
				when others => result <= (others => '0');
					-- Don’t care, do nothing
					
					
			
			end case;
		end if;
	end process;
	
r1 <= result(3 downto 0);
r2 <= result(7 downto 4);
end calculation;


