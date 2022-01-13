----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:11:05 12/10/2021 
-- Design Name: 
-- Module Name:    speed_counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity speed_counter is
    Port ( wind_speed : out  STD_LOGIC_VECTOR (19 downto 0);
           anemometer : in  STD_LOGIC;
           clock : in  STD_LOGIC);
end speed_counter;

architecture Behavioral of speed_counter is

COMPONENT counter_5bit
    PORT(
         counter_ena : IN  std_logic;
         counter_rst : IN  std_logic;
         clock : IN  std_logic;
         speed_code : OUT  std_logic_vector(4 downto 0)
        );
END COMPONENT;

COMPONENT freq_divider
    PORT(
         clock : IN  std_logic;
         counter_rst : OUT  std_logic
        );
END COMPONENT;

COMPONENT risingedge_detector
    PORT(
         anemometer : IN  std_logic;
         clock : IN  std_logic;
         counter_ena : OUT  std_logic
        );
END COMPONENT;

COMPONENT transcoder_speed
    PORT(
         wind_speed : OUT  std_logic_vector(19 downto 0);
         speed_code : IN  std_logic_vector(4 downto 0)
        );
END COMPONENT;

signal counter_ena_int, counter_rst_int : std_logic;
signal speed_code_int : std_logic_vector (4 downto 0);
	
begin

U1: counter_5bit PORT MAP (
          counter_ena => counter_ena_int,
          counter_rst => counter_rst_int,
          clock => clock,
          speed_code => speed_code_int
        );
		  
U2: freq_divider PORT MAP (
          clock => clock,
          counter_rst => counter_rst_int
        );

U3: risingedge_detector PORT MAP (
          anemometer => anemometer,
          clock => clock,
          counter_ena => counter_ena_int
        );

 U4: transcoder_speed PORT MAP (
          wind_speed => wind_speed,
          speed_code => speed_code_int
        );


end Behavioral;

