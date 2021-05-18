-- Author: Max Dreher
-- Last Modified: 5/18/2021 
-- Purpose: Lab 5 SOP equation implementation



LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Lab5_kmap IS
   PORT( SW	    :IN	 STD_LOGIC_VECTOR(9 DOWNTO 6);
         HEX5   :OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		 );
END Lab5_kmap;

ARCHITECTURE temp OF Lab5_kmap IS

   COMPONENT bcd_to_7seg  
	   PORT( S	  :IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
             HEX  :OUT	STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
   END COMPONENT;
 
BEGIN
   U0 : bcd_to_7seg port map (SW(9 DOWNTO 6), HEX5);
END temp;
