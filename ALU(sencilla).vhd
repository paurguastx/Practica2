LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ALU IS
PORT( A : in  STD_LOGIC_VECTOR (3 downto 0);
      B : in  STD_LOGIC_VECTOR (3 downto 0);
      Sel : in  STD_LOGIC;
      Salida : out  STD_LOGIC_VECTOR (3 downto 0));
END ALU;
 
ARCHITECTURE BEH OF ALU IS
BEGIN
	Salida <= ( A - B ) when Sel = '1' else ( A + B );
END BEH;
