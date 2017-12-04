---Entity MAndA

LIBRARY ieee;

USE ieee.std_logic_1164.all;

ENTITY MAndA IS
	PORT(
			A,B: IN STD_LOGIC;
			R: OUT STD_LOGIC
	
		);
END MAndA;

ARCHITECTURE pure_logic OF MAndA IS
BEGIN
	R <= (A AND B);
END pure_logic;