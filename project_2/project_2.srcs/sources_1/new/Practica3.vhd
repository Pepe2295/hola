library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Practica3 is
Port(
	 clk: in std_logic;
	
	 led: out std_logic
	 
);

end Practica3;

architecture Behavioral of Practica3 is

Signal pulso: STD_LOGIC;

Signal cont: integer range 0 to 49999999:=0; --le damos el renago de 50 MHz



begin
-- Pulso de reloj aproximadamente 1 Hz
	process(clk)
	begin
		if rising_edge(clk) then --flanco de subida
			if(cont=24999999) then 
				cont <= 0;
				pulso <= NOT(pulso);
			else
				cont <= cont+1;
			end if;
		end if;
	end process;

led<=pulso;

	
end Behavioral;