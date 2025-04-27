library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_level_lcd is
	port (
		rst, clk_in, miso : in std_logic;
		mosi_adc,mosi_dac, sclk1,sclk2, cs_a,cs_b : out std_logic;
		lcd_rst : in std_logic;
		lcd_rw, lcd_en, lcd_rs, detect : out std_logic;
		lcd1 : out std_logic_vector(7 downto 0)
	);
end entity;

architecture beh of top_level_lcd is
	component test is
		port(
			inp : in std_logic_vector(9 downto 0);
			clk : in std_logic;
			rst : in std_logic;
			lcd_rw : out std_logic;
			lcd_en : out std_logic;
			lcd_rs : out std_logic;
			lcd1 : out std_logic_vector(7 downto 0);
			detect : out std_logic
		);
	end component;
	
	component spi_master_2a is
		port (
		reset, clk_input, misoa_signal : in std_logic;
		mosia_signal, mosib_signal, sclk_signal, chip_select_a, chip_select_b : out std_logic;
		data_out : out std_logic_vector(9 downto 0)
	);
	end component;
	signal buff : std_logic;
	signal adc_value : std_logic_vector(9 downto 0);
	
begin
	
	spi : spi_master_2a port map (
		reset => rst,
		clk_input => clk_in,
		misoa_signal => miso,
		mosia_signal => mosi_adc,
		mosib_signal => mosi_dac,
		sclk_signal => buff,
		chip_select_a => cs_a,
		chip_select_b => cs_b,
		data_out => adc_value
	);
	
	lcd : test port map (
		inp => adc_value,
		clk => clk_in,
		rst => lcd_rst,
		lcd_rw => lcd_rw,
		lcd_en => lcd_en,
		lcd_rs => lcd_rs,
		lcd1 => lcd1,
		detect => detect
	);
	sclk2 <= buff;
	sclk1 <= buff;
end architecture;
