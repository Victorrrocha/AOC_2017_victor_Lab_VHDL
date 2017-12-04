---Entity AXORB

LIBRARY ieee;

USE ieee.std_logic_1164.all;

ENTITY AXORB IS
	PORT(
			A, B: IN STD_LOGIC;
			R: OUT STD_LOGIC
	
		);
END AXORB;

ARCHITECTURE pure_logic of AXORB IS
	COMPONENT NOTA IS
		PORT(
				A: IN STD_LOGIC;
				R: OUT STD_LOGIC
			);
	END COMPONENT;

	COMPONENT NOTB IS
		PORT(
				B: IN STD_LOGIC;
				R: OUT STD_LOGIC
			);
	END COMPONENT;

	COMPONENT MAndA IS
		PORT(
				A,B: IN STD_LOGIC;
				R: OUT STD_LOGIC
			);
	END COMPONENT;

	COMPONENT MAndB IS
		PORT(
				A,B: IN STD_LOGIC;
				R: OUT STD_LOGIC
			);
	END COMPONENT;

	COMPONENT AORB IS
		PORT(
				A, B: IN STD_LOGIC;
				R: OUT STD_LOGIC
			);
	END COMPONENT;

SIGNAL signal_result, signal_resultA, signal_resultB, signal_resultC, signal_resultD, signal_resultFinal: STD_LOGIC;

BEGIN
	G1: NOTA port map(A, signal_resultA);
	G2: NOTB port map(B, signal_resultB);
	G3: MAndA port map(signal_resultA, B, signal_resultC);
	G4: MAndB port map(A, signal_resultB, signal_resultD);
	G5: AORB port map(signal_resultC, signal_resultD, R);
END pure_logic;