--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:51:58 01/07/2022
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/GR_B/ELN1/SYSTEME_METEO/EQUIPE_2/weather_system/speed_counter_tb.vhd
-- Project Name:  weather_system
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: speed_counter
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
 
ENTITY speed_counter_tb IS
END speed_counter_tb;
 
ARCHITECTURE behavior OF speed_counter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT speed_counter
    PORT(
         wind_speed : OUT  std_logic_vector(19 downto 0);
         anemometer : IN  std_logic;
         clock : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal anemometer : std_logic := '0';
   signal clock : std_logic := '0';

 	--Outputs
   signal wind_speed : std_logic_vector(19 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: speed_counter PORT MAP (
          wind_speed => wind_speed,
          anemometer => anemometer,
          clock => clock
        );

END;
