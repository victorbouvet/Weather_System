--------------------------------------------------------------------------------
-- Company: BouVaCorp
-- Engineer: Bouvet Cova, B217, Poste 6
--
-- Create Date:   09:04:50 12/10/2021
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/GR_B/ELN1/SYSTEME_METEO/EQUIPE_2/weather_system/transcoder_speed_tb.vhd
-- Project Name:  weather_system
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: transcoder_speed
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
 
ENTITY transcoder_speed_tb IS
END transcoder_speed_tb;
 
ARCHITECTURE behavior OF transcoder_speed_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT transcoder_speed
    PORT(
         wind_speed : OUT  std_logic_vector(19 downto 0);
         speed_code : IN  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal speed_code : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal wind_speed : std_logic_vector(19 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: transcoder_speed PORT MAP (
          wind_speed => wind_speed,
          speed_code => speed_code
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

 speed_code <= "00000", 
		 "00001" after 20 ns,
		 "00010" after 40 ns,
		 "00011" after 60 ns,
		 "00100" after 80 ns,
		 "00101" after 100 ns,
		 "00110" after 120 ns,
		 "00111" after 140 ns,
		 "01000" after 160 ns,
		 "01001" after 180 ns,
		 "01010" after 200 ns,
		 "01011" after 220 ns, 
		 "01100" after 240 ns,
		 "01101" after 260 ns,
		 "01110" after 280 ns,
		 "01111" after 300 ns,
		 "10000" after 320 ns,
		 "10001" after 340 ns, 
		 "10010" after 360 ns,
		 "10011" after 380 ns, 
		 "10100" after 400 ns;
 END;
