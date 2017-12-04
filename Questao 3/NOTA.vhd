---Entity NOTA

LIBRARY ieee;

USE ieee.std_logic_1164.all;

ENTITY NOTA IS
	PORT(
			A: IN STD_LOGIC;
			R: OUT STD_LOGIC
		);
END NOTA;

ARCHITECTURE pure_logic OF NOTA IS
BEGIN
	R <= (NOT A);
END pure_logic;