LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ROM IS
PORT( CLK: IN STD_LOGIC;
      RD: IN STD_LOGIC;
      ADDRESS: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      DATAOUT: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ROM;

ARCHITECTURE SEQ OF ROM IS
TYPE ROMTYPE IS ARRAY (7 DOWNTO 0) OF STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL ROM: ROMTYPE := ("011110001","001110100","000101010","111101001","110001001","100101001","110000010","110011001");
SIGNAL DATO: STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
  DATO<=ROM(conv_integer(ADDRESS));
  PROCESS(CLK)
  BEGIN
    IF(CLK'event AND CLK='1') THEN
      IF(RD='1') THEN
        DATAOUT<=DATO;
      END IF;
    END IF;
  END PROCESS;
END SEQ;