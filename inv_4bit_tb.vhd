--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:03:17 12/10/2021
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPelec_3ETI/GR_B/ELN1/SYSTEME_METEO/EQUIPE_2/weather_system/inv_4bit_tb.vhd
-- Project Name:  weather_system
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: inv_4bit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY inv_4bit_tb IS
END inv_4bit_tb;
 
ARCHITECTURE behavior OF inv_4bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT inv_4bit
    PORT(
         not_code_display : IN  std_logic_vector(3 downto 0);
         code_display : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal not_code_display : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal code_display : std_logic_vector(3 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: inv_4bit PORT MAP (
          not_code_display => not_code_display,
          code_display => code_display
        );

not_code_display <= "0000", 
	"0001" after 100 ns, 
	"0011" after 200 ns, 
	"0010" after 300 ns, 
	"0110" after 400 ns, 
	"0111" after 500 ns, 
	"0101" after 600 ns, 
	"0100" after 700 ns, 
	"1100" after 800 ns, 
	"1101" after 900 ns, 
	"1111" after 1000 ns, 
	"1110" after 1100 ns, 
	"1010" after 1200 ns, 
	"1011" after 1300 ns, 
	"1001" after 1400 ns, 
	"1000" after 1500 ns;

END;
