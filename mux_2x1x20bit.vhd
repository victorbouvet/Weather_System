----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Bouvet Cova, B217, Poste 6
-- 
-- Create Date:    10:04:54 12/10/2021 
-- Design Name: 
-- Module Name:    mux_2x1x20bit - Behavioral 
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

entity mux_2x1x20bit is
    Port ( wind_dir_speed : out  STD_LOGIC_VECTOR (15 downto 0);
            code_wind_speed : out  STD_LOGIC_VECTOR (3 downto 0);
            wind_dir : in  STD_LOGIC_VECTOR (15 downto 0);
           code_display : in  STD_LOGIC_VECTOR (3 downto 0);
           wind_speed : in  STD_LOGIC_VECTOR (19 downto 0);
           mode_select : in  STD_LOGIC);
end mux_2x1x20bit;

architecture Behavioral of mux_2x1x20bit is

begin

wind_dir_speed <= wind_dir(15 downto 0) when (mode_select = '0') else wind_speed(15 downto 0);
code_wind_speed <= code_display(3 downto 0) when (mode_select = '0') else wind_speed(19 downto 16);

end Behavioral;

