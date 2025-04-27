library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spi_master_2a is
	port (
		reset, clk_input, misoa_signal : in std_logic;
		mosia_signal, mosib_signal, sclk_signal, chip_select_a, chip_select_b : out std_logic;
		data_out : out std_logic_vector(9 downto 0)
	);
end entity;

architecture beh of spi_master_2a is
	component clock_divider is
		port (clk_in : in std_logic; clk_out : out std_logic);
	end component;
	signal data_register : std_logic_vector(9 downto 0);
	signal reg : std_logic_vector(9 downto 0);
	signal bit_counter : integer := 0;
	signal clk_divided : std_logic;
begin

	clk_div : clock_divider
		port map (clk_in => clk_input, clk_out => clk_divided);
		
	sclk_signal <= clk_divided;
	data_out <= data_register;
	
	process(clk_divided, reset)
	begin 
		if reset = '1' then  -- removing reset would work for continuous operation
			chip_select_a <= '1';
			chip_select_b <= '1';
			bit_counter <= 0;
			data_register <= (others => 'X');
		elsif falling_edge(clk_divided) then
			case bit_counter is   --send data
			    when 0 =>
				    chip_select_a <= '0'; -- for continuous operation
					 chip_select_b <= '0';
		          mosia_signal <= '1';
					 mosib_signal <= '0'; --dacA
				 when 1 =>
				    mosia_signal <= '1';
					 mosib_signal <= '1'; --buffered
				 when 2 =>
					 mosia_signal <= '0';
					 mosib_signal <= '1'; --gain is 1
				 when 3 =>
					 mosia_signal <= '0';
					 mosib_signal <= '1'; --enable
				 when 4 =>
					 mosia_signal <= '0';
					 mosib_signal <= reg(9); --bit 12
				 when 5 =>
				    mosia_signal <= 'X';
					 mosib_signal <= reg(8); --bit 11
			    when 6 =>
				    mosia_signal <= 'X';
					 mosib_signal <= reg(7); --bit 10
			    when 7 =>
				    mosia_signal <= 'X';
					 mosib_signal <= reg(6); --bit 9
			    when 8 =>
				    mosia_signal <= 'X';
					 mosib_signal <= reg(5); --bit 8
			    when 9 =>
				    mosia_signal <= 'X';
					 mosib_signal <= reg(4); --bit 7
			    when 10 =>
				    mosia_signal <= 'X';
					 mosib_signal <= reg(3); --bit 6
		       when 11 =>
				    mosia_signal <= 'X';
					 mosib_signal <= reg(2); --bit 5
	      	 when 12 =>
				    mosia_signal <= 'X';
					 mosib_signal <= reg(1); --bit 4
			    when 13 =>
				    mosia_signal <= 'X';
					 mosib_signal <= reg(0); --bit 3
				 when 14 =>
				    mosia_signal <= 'X';
					 mosib_signal <= '0'; --bit 2
				 when 15 =>
				    mosia_signal <= 'X';
					 mosib_signal <= '0'; --bit 1
				 when others =>
					 mosia_signal <= 'X';
					 mosib_signal <= 'X';
			end case;
			if bit_counter <= 16 then
				chip_select_a <= '0';
			   chip_select_b <= '0';	
				bit_counter <= bit_counter + 1;
			elsif bit_counter = 17 then
				chip_select_a <= '1';
			   chip_select_b <= '1';	
				bit_counter <= bit_counter + 1;
				reg<=data_register;
				bit_counter <= 0; --for continuous operation
			else
				chip_select_a <= '1';
				chip_select_b <= '1';
			end if;
		elsif rising_edge(clk_divided) then  -- recieve data
			if bit_counter >= 8 and bit_counter <= 17 then
				data_register(17 - bit_counter) <= misoa_signal;
			end if;	
		end if;
	end process;
	
end architecture;
