---Entity AORB

LIBRARY ieee;

USE ieee.std_logic_1164.all;

ENTITY AORB IS
	PORT(
			A,B: IN STD_LOGIC;
			R: OUT STD_LOGIC
	
		);
END AORB;

ARCHITECTURE pure_logic OF AORB IS
BEGIN
	R <= (A OR B);
END pure_logic;