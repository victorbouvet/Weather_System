--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:00:50 12/10/2021
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPelec_3ETI/GR_B/ELN1/SYSTEME_METEO/EQUIPE_2/weather_system/gray_decoder_4bit_tb.vhd
-- Project Name:  weather_system
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: gray_decoder_4bit
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
USE ieee.numeric_std.ALL;
 
ENTITY gray_decoder_4bit_tb IS
END gray_decoder_4bit_tb;
 
ARCHITECTURE behavior OF gray_decoder_4bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT gray_decoder_4bit
    PORT(
         weathercock : IN  std_logic_vector(3 downto 0);
         wind_dir : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal weathercock : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal wind_dir : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace clock below with 
   -- appropriate port name 
	signal clock : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gray_decoder_4bit PORT MAP (
          weathercock => weathercock,
          wind_dir => wind_dir
        );

   -- Clock process definitions

   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process

   begin		
      -- hold reset state for 100 ns.
      --wait for 100 ns;	
		FOR I IN 0 TO 15 LOOP
			weathercock <= std_logic_vector(to_unsigned(I,4));
			wait for clock_period*1;
		END LOOP;
      -- insert stimulus here 

      wait;
   end process;

END;
