-- Vhdl test bench created from schematic C:\XilinxPrj\UCISWL1_Z1\schemat.sch - Tue Oct 22 13:35:39 2024
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY schemat_schemat_sch_tb IS
END schemat_schemat_sch_tb;
ARCHITECTURE behavioral OF schemat_schemat_sch_tb IS 

   COMPONENT schemat
   PORT( X	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          Y	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0));
   END COMPONENT;

   SIGNAL X	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL Y	:	STD_LOGIC_VECTOR (3 DOWNTO 0);

BEGIN

   UUT: schemat PORT MAP(
		            X => X,
                  Y=> Y
   );

				X <= "0000", "0001" after 100 ns, "0010" after 200 ns, "0011" after 300 ns, "0100" after 400 ns, "0101" after 500 ns, "0110" after 600 ns, "0111" after 700 ns, "1000" after 800 ns, "1001" after 900 ns,"1010" after 1000 ns, 
				"1011" after 1100 ns, "1100" after 1200 ns, "1101" after 1300 ns, "1110" after 1400 ns,"1111" after 1500 ns;

END;
