library ieee;
use ieee.std_logic_1164.all;

entity ALUA is
port( A, B: in std_logic_vector (3 downto 0);
      S: in std_logic;
      R: out std_logic_vector (3 downto 0);
      Cout: OUT STD_LOGIC);
end ALUA;

architecture STRL of ALUA is
component FA4
port( A, B: in std_logic_vector(3 downto 0);
Cin: in std_logic;
S: out std_logic_vector(3 downto 0);
Cout: out std_logic);
end component;
COMPONENT GXOR
PORT( A, B: IN STD_LOGIC;
      X: OUT STD_LOGIC);
END COMPONENT;
SIGNAL F: STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
  U1: GXOR PORT MAP (B(0), S, F(0));
  U2: GXOR PORT MAP (B(1), S, F(1));
  U3: GXOR PORT MAP (B(2), S, F(2));
  U4: GXOR PORT MAP (B(3), S, F(3));
  U5: FA4 PORT MAP (A, F, S, R, Cout);
END STRL;
