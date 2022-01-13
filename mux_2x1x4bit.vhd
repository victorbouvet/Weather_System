----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:48:01 12/10/2021 
-- Design Name: 
-- Module Name:    mux_2x1x4bit - Behavioral 
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

entity mux_2x1x4bit is
    Port ( weathercock : in  STD_LOGIC_VECTOR (3 downto 0);
           binary_code : in  STD_LOGIC_VECTOR (3 downto 0);
           code_select : in  STD_LOGIC;
           not_code_display : out  STD_LOGIC_VECTOR (3 downto 0));
end mux_2x1x4bit;

architecture Behavioral of mux_2x1x4bit is

begin

not_code_display <= weathercock when code_select = '0' else binary_code;

end Behavioral;

