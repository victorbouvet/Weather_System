--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:32:25 01/07/2022
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/GR_B/ELN1/SYSTEME_METEO/EQUIPE_2/weather_system/decoder_tb.vhd
-- Project Name:  weather_system
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder
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
 
ENTITY decoder_tb IS
END decoder_tb;
 
ARCHITECTURE behavior OF decoder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder
    PORT(
         weathercock : IN  std_logic_vector(3 downto 0);
         code_select : IN  std_logic;
         code_display : OUT  std_logic_vector(3 downto 0);
         wind_dir : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal weathercock : std_logic_vector(3 downto 0) := (others => '0');
   signal code_select : std_logic := '0';

 	--Outputs
   signal code_display : std_logic_vector(3 downto 0);
   signal wind_dir : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder PORT MAP (
          weathercock => weathercock,
          code_select => code_select,
          code_display => code_display,
          wind_dir => wind_dir
        );
		  
weathercock <= "0000", 
	"0001" after 10 ns,
	"0011" after 20 ns,
	"0100" after 30 ns,
	"0110" after 40 ns,
	"0111" after 50 ns,
	"0101" after 60 ns,
	"0100" after 70 ns,
	"1100" after 80 ns,
	"1101" after 90 ns,
	"1111" after 100 ns,
	"1110" after 110 ns,
	"1010" after 120 ns,
	"1011" after 130 ns,
	"1001" after 140 ns,
	"1000" after 150 ns;
	
code_select <= '0',
	'1' after 10 ns,
	'0' after 25 ns;
	
--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 
--
--   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for <clock>_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;

END;
