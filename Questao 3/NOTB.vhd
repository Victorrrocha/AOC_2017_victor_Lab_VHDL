---Entity NOTB

LIBRARY ieee;

USE ieee.std_logic_1164.all;

ENTITY NOTB IS
	PORT(
			B: IN STD_LOGIC;
			R: OUT STD_LOGIC
		);
END NOTB;

ARCHITECTURE pure_logic OF NOTB IS
BEGIN
	R <= (NOT B);
END pure_logic;