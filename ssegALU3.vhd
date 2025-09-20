LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY ssegALU3 IS
	PORT ( bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		leds : OUT STD_LOGIC_VECTOR(1 TO 7)  ;
		leds2 : OUT STD_LOGIC_VECTOR(1 TO 7) ;
		sign : IN STD_LOGIC ); 
END ssegALU3 ;

ARCHITECTURE Behavior OF ssegALU3 IS
BEGIN

	PROCESS ( bcd, sign )
	BEGIN
		CASE bcd IS 			  		--  abcdefg
		
			WHEN "0000" => leds <= NOT ("0111011"); -- y
			WHEN "0001" => leds <= NOT ("1110110"); -- n
			
			WHEN "0010" => leds <= not ("1101101") ; --2
			WHEN "0011" => leds <= not ("1111001") ; --3
			WHEN "0100" => leds <= not ("0110011") ; --4
			WHEN "0101" => leds <= not ("1011011") ; --5
			WHEN "0110" => leds <= not ("1011111") ; --6
			WHEN "0111" => leds <= not ("1110000") ; --7
			WHEN "1000" => leds <= not ("1111111") ; --8
			WHEN "1001" => leds <= not ("1111011") ; --9
			WHEN "1010" => leds <= not ("1110111") ; --10 (A)
			WHEN "1011" => leds <= not ("0011111") ; --11 (b)
			WHEN "1100" => leds <= not ("1001110") ; --12 (C)
			WHEN "1101" => leds <= not ("0111101") ; --13 (d)
			WHEN "1110" => leds <= not ("1001111") ; --14 (E)
			WHEN "1111" => leds <= not ("1000111") ; --15 (F)
			WHEN OTHERS => leds <= "-------" ;
			END CASE ;
		CASE sign IS
			WHEN '1' => leds2 <= not ("0000001") ; -- negative (-)
			WHEN '0' => leds2 <= not ("0000000") ; -- positive (+)
			WHEN OTHERS => leds <= "-------" ;
			END CASE ;
	END PROCESS ;
END Behavior ;