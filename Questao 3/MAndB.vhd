---Entity MAndB

LIBRARY ieee;

USE ieee.std_logic_1164.all;

ENTITY MAndB IS
	PORT(
			A,B: IN STD_LOGIC;
			R: OUT STD_LOGIC
	
		);
END MAndB;

ARCHITECTURE pure_logic OF MAndB IS
BEGIN
	R <= (A AND B);
END pure_logic;