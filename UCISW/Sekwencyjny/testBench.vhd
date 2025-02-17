-- Vhdl test bench created from schematic C:\XilinxPrj\Sekwencyjny\Schemat.sch - Tue Nov 05 11:57:20 2024
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
ENTITY Schemat_Schemat_sch_tb IS
END Schemat_Schemat_sch_tb;
ARCHITECTURE behavioral OF Schemat_Schemat_sch_tb IS 

   COMPONENT Schemat
   PORT(
			CLK: IN STD_LOGIC;
			CLR: IN STD_LOGIC;
			CE: IN STD_LOGIC;
			DIR: IN STD_LOGIC;
			Q: OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
			);
   END COMPONENT;
			SIGNAL CLK: STD_LOGIC :='0';
			SIGNAL CLR: STD_LOGIC:='0';
			SIGNAL CE: STD_LOGIC:='1';
			SIGNAL DIR: STD_LOGIC;
			SIGNAL Q:  STD_LOGIC_VECTOR(2 DOWNTO 0);

BEGIN

   UUT: Schemat PORT MAP(
		CLK => CLK,
		CLR => CLR,
		CE => CE,
		DIR => DIR,
		Q => Q
   );
	
		DIR <= '0', '1' after 800 ns;
		CLK <=NOT CLK after 50 ns;
		
	--	process (CLK)
	--	begin
	--		if CLK'Event and CLK = '1' then 
	--			CLK <= '0'
				--wait for 100 ns
	--		else if CLK'Event and CLK ='0' then
	--			CLK <= '1'
				--wait for 100 ns
	--	end if
	--	end process


END;
