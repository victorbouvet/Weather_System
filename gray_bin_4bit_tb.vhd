--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:17:05 12/10/2021
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPelec_3ETI/GR_B/ELN1/SYSTEME_METEO/EQUIPE_2/weather_system/gray_bin_4bit_tb.vhd
-- Project Name:  weather_system
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: gray_bin_4bit
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
 
ENTITY gray_bin_4bit_tb IS
END gray_bin_4bit_tb;
 
ARCHITECTURE behavior OF gray_bin_4bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT gray_bin_4bit
    PORT(
         weathercock : IN  std_logic_vector(3 downto 0);
         binary_code : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal weathercock : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal binary_code : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gray_bin_4bit PORT MAP (
          weathercock => weathercock,
          binary_code => binary_code
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
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

	weathercock(0) <= '0', '1' after 10 ns, '0' after 30 ns, '1' after 50 ns, '0' after 70 ns,'1' after 90 ns, '0' after 110 ns,'1' after 130 ns, '0' after 150 ns;
	weathercock(1) <= '0', '1' after 20 ns, '0' after 60 ns, '1' after 100 ns, '0' after 140 ns;
	weathercock(2) <= '0', '1' after 40 ns, '0' after 120 ns;
	weathercock(3) <= '0' , '1' after 80 ns;
END;
