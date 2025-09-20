LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity ALU_unit2 is
port(clk:in std_logic;
A,B : in unsigned(7 downto 0);
OP : in unsigned(15 downto 0);
Neg : out std_logic;
r1: out unsigned(3 downto 0);
r2: out unsigned(3 downto 0));
end ALU_unit2;
architecture calculation of ALU_unit2 is
signal Reg1,Reg2,result : unsigned(7 downto 0);
begin	
Reg1 <= A;
Reg2 <= B;
process(clk,OP)
	begin	
	if(rising_edge(clk)) THEN 
		case OP is
		   
		-- Function 1: Replace odd bits of A with odd bits of B
			when "0000000000000001" => result(0) <= Reg1(0);
												result(1) <= Reg2(1);
												result(2) <= Reg1(2);
												result(3) <= Reg2(3);
												result(4) <= Reg1(4);
												result(5) <= Reg2(5);
												result(6) <= Reg1(6);
												result(7) <= Reg2(7);

			-- Function 2: NAND(A, B)
			when "0000000000000010" => 
				result <= not(Reg1 and Reg2);

			-- Function 3: Summation(A, B) - 5
			when "0000000000000100" => 
				result <= (Reg1 + Reg2) - "00000101";

			-- Function 4: 2’s Complement of B
			when "0000000000001000" => 
				result <= not(Reg2) + 1;

			-- Function 5: Invert even bits of B
			when "0000000000010000" => result(0) <= not(Reg2(0));
												result(1) <= Reg2(1);
												result(2) <= not(Reg2(2));
												result(3) <= Reg2(3);
												result(4) <= not(Reg2(4));
												result(5) <= Reg2(5);
												result(6) <= not(Reg2(6));
												result(7) <= Reg2(7);

			-- Function 6: Shift A left by 2 bits, input bits = 1
			when "0000000000100000" => 
												result(2) <= Reg1(0);
												result(3) <= Reg1(1);
												result(4) <= Reg1(2);
												result(5) <= Reg1(3);
												result(6) <= Reg1(4);
												result(7) <= Reg1(5);
												result(0) <= '1'; -- Ensure input bits are set to 1
												result(1) <= '1';

			-- Function 7: Produce null (all zeroes)
			when "0000000001000000" => 
				result <= (others => '0');

			-- Function 8: 2’s Complement of A
			when "1000000000000000" => 
				result <= not(Reg1) + 1;

			-- Default: Don’t care
			when others => 
				result <= "XXXXXXXX";
			
			end case;
		end if;
	end process;
	
r1 <= result(3 downto 0);
r2 <= result(7 downto 4);
end calculation;


