library ieee;
use ieee.std_logic_1164.all;

ENTITY RAM_8bits IS
	port
	(
		data	: in std_logic_vector(7 downto 0);
		endr	: in natural range 0 to 7;
		we		: in std_logic := '1';
		clk	: in std_logic;
		q		: out std_logic_vector(7 downto 0)
	);
	
END ENTITY;

ARCHITECTURE rtl OF RAM_8bits IS

	-- array para a memoria RAM
	subtype word_t IS std_logic_vector(7 downto 0);
	type memory_t IS array(7 downto 0) OF word_t;
	
	-- sinal da memoria RAM
	signal ram : memory_t;
	
	-- Registrador para armazenar os endereços
	signal endr_reg : natural range 0 to 7;

BEGIN

	process(clk)
	BEGIN
		IF(rising_edge(clk)) then
			IF(we = '1') then
				ram(endr) <= data;
			END IF;
			
			-- Endereço para leitura
			endr_reg <= endr;
		END IF;
	
	END process;
	
	q <= ram(endr_reg);
	
END rtl;
