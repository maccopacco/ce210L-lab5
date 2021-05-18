-- Author: Max Dreher
-- Last Modified: 5/18/2021
-- Purpose: Lab 5 SOP equation implementation

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bcd_to_7seg IS
   PORT( S   :IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
         HEX :OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE XYZ of bcd_to_7seg IS

   ALIAS S3 : STD_LOGIC is S(3);
   ALIAS S2 : STD_LOGIC is S(2);
   ALIAS S1 : STD_LOGIC is S(1);
   ALIAS S0 : STD_LOGIC is S(0);
   ALIAS a : STD_LOGIC is HEX(0);
   ALIAS b : STD_LOGIC is HEX(1);
   ALIAS c : STD_LOGIC is HEX(2);
   ALIAS d : STD_LOGIC is HEX(3);
   ALIAS e : STD_LOGIC is HEX(4);
   ALIAS f : STD_LOGIC is HEX(5);
   ALIAS g : STD_LOGIC is HEX(6);   

BEGIN
   a <= not(S1 OR S3 OR (NOT(S2) AND NOT(S0)) OR (S2 AND S0));
   b <= not(NOT(S2) OR (NOT(S1) AND NOT(S0)) OR (S1 AND S0));
   c <= not(NOT(S1) OR S0 OR S2);
   d <= not(S3 OR (NOT(S2) AND NOT(S0)) OR (NOT(S2) AND S1) OR (S1 AND NOT(S0)) OR (S2 AND NOT(S1) AND S0));
   e <= not((NOT(S2) AND NOT(S0)) OR (S1 AND NOT(S0)));
   f <= not(S3 OR (NOT(S1) AND NOT(S0)) OR (S2 AND NOT(S1)) OR (S2 AND NOT(S0)));
   g <= not(S3 OR (NOT(S2) AND S1) OR (S1 AND NOT(S0)) OR (S2 AND NOT(S1)));
END XYZ;
