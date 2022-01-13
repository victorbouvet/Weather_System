--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:35:51 12/10/2021
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/GR_B/ELN1/SYSTEME_METEO/EQUIPE_2/weather_system/mux_2x1x20bit_tb.vhd
-- Project Name:  weather_system
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_2x1x20bit
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
 
ENTITY mux_2x1x20bit_tb IS
END mux_2x1x20bit_tb;
 
ARCHITECTURE behavior OF mux_2x1x20bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_2x1x20bit
    PORT(
         wind_dir_speed : OUT  std_logic_vector(15 downto 0);
         code_wind_speed : OUT  std_logic_vector(3 downto 0);
         wind_dir : IN  std_logic_vector(15 downto 0);
         code_display : IN  std_logic_vector(3 downto 0);
         wind_speed : IN  std_logic_vector(19 downto 0);
         mode_select : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal wind_dir : std_logic_vector(15 downto 0) := (others => '0');
   signal code_display : std_logic_vector(3 downto 0) := (others => '0');
   signal wind_speed : std_logic_vector(19 downto 0) := (others => '0');
   signal mode_select : std_logic := '0';

 	--Outputs
   signal wind_dir_speed : std_logic_vector(15 downto 0);
   signal code_wind_speed : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_2x1x20bit PORT MAP (
          wind_dir_speed => wind_dir_speed,
          code_wind_speed => code_wind_speed,
          wind_dir => wind_dir,
          code_display => code_display,
          wind_speed => wind_speed,
          mode_select => mode_select
        );

--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 
--
   -- Stimulus process
   stim_proc: process
   begin		
	
		wait for 10 ns;
		mode_select <= '0';
		code_display <= "1111";
		wind_dir <= "0101010101010101";
		wind_speed <= "00001111111111110000";
		
		wait for 10ns;
		mode_select <= '1';

      wait;
   end process;

END;
