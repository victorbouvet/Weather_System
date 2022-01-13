--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:49:26 12/10/2021
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPelec_3ETI/GR_B/ELN1/SYSTEME_METEO/EQUIPE_2/weather_system/mux_2x1x4bit_tb.vhd
-- Project Name:  weather_system
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_2x1x4bit
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
 
ENTITY mux_2x1x4bit_tb IS
END mux_2x1x4bit_tb;
 
ARCHITECTURE behavior OF mux_2x1x4bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_2x1x4bit
    PORT(
         weathercock : IN  std_logic_vector(3 downto 0);
         binary_code : IN  std_logic_vector(3 downto 0);
         code_select : IN  std_logic;
         not_code_display : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal weathercock : std_logic_vector(3 downto 0) := (others => '0');
   signal binary_code : std_logic_vector(3 downto 0) := (others => '0');
   signal code_select : std_logic := '0';

 	--Outputs
   signal not_code_display : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_2x1x4bit PORT MAP (
          weathercock => weathercock,
          binary_code => binary_code,
          code_select => code_select,
          not_code_display => not_code_display
        );
--
--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		

		wait for 10 ns;
		code_select <= '0';
		weathercock <= "1111";
		binary_code <= "0000";
		wait for 10 ns;
		code_select <= '1';

      wait;
   end process;

END;
