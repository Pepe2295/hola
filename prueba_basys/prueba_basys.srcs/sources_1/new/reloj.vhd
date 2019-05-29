----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2019 17:20:08
-- Design Name: 
-- Module Name: reloj - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reloj is
    Port ( clk : in STD_LOGIC;
           clk_hz : out STD_LOGIC);
end reloj;

architecture Behavioral of reloj is
Signal cont: integer range 0 to 99999999:=0; --le damos el renago de 50 MHz
Signal pulso: STD_LOGIC;

begin
	process(clk)
	begin
		if rising_edge(clk) then --flanco de subida
			if(cont=54999999) then 
				cont <= 0;
				pulso <= NOT(pulso);
			else
				cont <= cont+1;
			end if;
		end if;
	end process;


end Behavioral;
