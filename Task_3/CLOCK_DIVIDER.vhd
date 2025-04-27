library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_divider is
	port (clk_in: in std_logic; clk_out : out std_logic);
end entity;

architecture ha of clock_divider is
	shared variable count : integer := 0;
	signal clk : std_logic := '0';
begin

	clk_out <= clk;
	
	process(clk_in)
	begin
		if rising_edge(clk_in) then
			count := count + 1;
			if (count = 25) then
				clk <= not clk;
				count := 0;
			end if;
		end if;
	end process;

end architecture;		