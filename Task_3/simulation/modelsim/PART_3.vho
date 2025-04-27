-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/04/2024 00:00:49"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level_lcd IS
    PORT (
	rst : IN std_logic;
	clk_in : IN std_logic;
	miso : IN std_logic;
	mosi_adc : BUFFER std_logic;
	mosi_dac : BUFFER std_logic;
	sclk1 : BUFFER std_logic;
	sclk2 : BUFFER std_logic;
	cs_a : BUFFER std_logic;
	cs_b : BUFFER std_logic;
	lcd_rst : IN std_logic;
	lcd_rw : BUFFER std_logic;
	lcd_en : BUFFER std_logic;
	lcd_rs : BUFFER std_logic;
	detect : BUFFER std_logic;
	lcd1 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END top_level_lcd;

-- Design Ports Information
-- mosi_adc	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mosi_dac	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclk1	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclk2	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cs_a	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cs_b	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rw	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_en	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rs	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- detect	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd1[0]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd1[1]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd1[2]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd1[3]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd1[4]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd1[5]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd1[6]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd1[7]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rst	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- miso	=>  Location: PIN_78,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level_lcd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_miso : std_logic;
SIGNAL ww_mosi_adc : std_logic;
SIGNAL ww_mosi_dac : std_logic;
SIGNAL ww_sclk1 : std_logic;
SIGNAL ww_sclk2 : std_logic;
SIGNAL ww_cs_a : std_logic;
SIGNAL ww_cs_b : std_logic;
SIGNAL ww_lcd_rst : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_en : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_detect : std_logic;
SIGNAL ww_lcd1 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd|clk_slow~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd|lcd_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi|clk_div|clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \mosi_adc~output_o\ : std_logic;
SIGNAL \mosi_dac~output_o\ : std_logic;
SIGNAL \sclk1~output_o\ : std_logic;
SIGNAL \sclk2~output_o\ : std_logic;
SIGNAL \cs_a~output_o\ : std_logic;
SIGNAL \cs_b~output_o\ : std_logic;
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_en~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \detect~output_o\ : std_logic;
SIGNAL \lcd1[0]~output_o\ : std_logic;
SIGNAL \lcd1[1]~output_o\ : std_logic;
SIGNAL \lcd1[2]~output_o\ : std_logic;
SIGNAL \lcd1[3]~output_o\ : std_logic;
SIGNAL \lcd1[4]~output_o\ : std_logic;
SIGNAL \lcd1[5]~output_o\ : std_logic;
SIGNAL \lcd1[6]~output_o\ : std_logic;
SIGNAL \lcd1[7]~output_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \spi|clk_div|Add0~0_combout\ : std_logic;
SIGNAL \spi|clk_div|count~0_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~1\ : std_logic;
SIGNAL \spi|clk_div|Add0~2_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~3\ : std_logic;
SIGNAL \spi|clk_div|Add0~4_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~5\ : std_logic;
SIGNAL \spi|clk_div|Add0~7\ : std_logic;
SIGNAL \spi|clk_div|Add0~8_combout\ : std_logic;
SIGNAL \spi|clk_div|count~2_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~9\ : std_logic;
SIGNAL \spi|clk_div|Add0~10_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~11\ : std_logic;
SIGNAL \spi|clk_div|Add0~12_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~13\ : std_logic;
SIGNAL \spi|clk_div|Add0~14_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~15\ : std_logic;
SIGNAL \spi|clk_div|Add0~16_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~17\ : std_logic;
SIGNAL \spi|clk_div|Add0~18_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~19\ : std_logic;
SIGNAL \spi|clk_div|Add0~20_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~21\ : std_logic;
SIGNAL \spi|clk_div|Add0~22_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~23\ : std_logic;
SIGNAL \spi|clk_div|Add0~24_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~25\ : std_logic;
SIGNAL \spi|clk_div|Add0~26_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~27\ : std_logic;
SIGNAL \spi|clk_div|Add0~28_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~29\ : std_logic;
SIGNAL \spi|clk_div|Add0~30_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~31\ : std_logic;
SIGNAL \spi|clk_div|Add0~32_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~33\ : std_logic;
SIGNAL \spi|clk_div|Add0~34_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~35\ : std_logic;
SIGNAL \spi|clk_div|Add0~36_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~37\ : std_logic;
SIGNAL \spi|clk_div|Add0~38_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~39\ : std_logic;
SIGNAL \spi|clk_div|Add0~40_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~41\ : std_logic;
SIGNAL \spi|clk_div|Add0~42_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~43\ : std_logic;
SIGNAL \spi|clk_div|Add0~44_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~45\ : std_logic;
SIGNAL \spi|clk_div|Add0~46_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~47\ : std_logic;
SIGNAL \spi|clk_div|Add0~48_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~49\ : std_logic;
SIGNAL \spi|clk_div|Add0~50_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~51\ : std_logic;
SIGNAL \spi|clk_div|Add0~52_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~53\ : std_logic;
SIGNAL \spi|clk_div|Add0~54_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~55\ : std_logic;
SIGNAL \spi|clk_div|Add0~56_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~57\ : std_logic;
SIGNAL \spi|clk_div|Add0~58_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~59\ : std_logic;
SIGNAL \spi|clk_div|Add0~60_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~61\ : std_logic;
SIGNAL \spi|clk_div|Add0~62_combout\ : std_logic;
SIGNAL \spi|clk_div|Equal0~5_combout\ : std_logic;
SIGNAL \spi|clk_div|Equal0~6_combout\ : std_logic;
SIGNAL \spi|clk_div|Equal0~7_combout\ : std_logic;
SIGNAL \spi|clk_div|Equal0~8_combout\ : std_logic;
SIGNAL \spi|clk_div|Equal0~9_combout\ : std_logic;
SIGNAL \spi|clk_div|count~1_combout\ : std_logic;
SIGNAL \spi|clk_div|Add0~6_combout\ : std_logic;
SIGNAL \spi|clk_div|Equal0~0_combout\ : std_logic;
SIGNAL \spi|clk_div|Equal0~3_combout\ : std_logic;
SIGNAL \spi|clk_div|Equal0~1_combout\ : std_logic;
SIGNAL \spi|clk_div|Equal0~2_combout\ : std_logic;
SIGNAL \spi|clk_div|Equal0~4_combout\ : std_logic;
SIGNAL \spi|clk_div|clk~0_combout\ : std_logic;
SIGNAL \spi|clk_div|clk~feeder_combout\ : std_logic;
SIGNAL \spi|clk_div|clk~q\ : std_logic;
SIGNAL \spi|clk_div|clk~clkctrl_outclk\ : std_logic;
SIGNAL \spi|Add0~3\ : std_logic;
SIGNAL \spi|Add0~4_combout\ : std_logic;
SIGNAL \spi|bit_counter~32_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \spi|Add0~5\ : std_logic;
SIGNAL \spi|Add0~6_combout\ : std_logic;
SIGNAL \spi|bit_counter~28_combout\ : std_logic;
SIGNAL \spi|Add0~7\ : std_logic;
SIGNAL \spi|Add0~8_combout\ : std_logic;
SIGNAL \spi|bit_counter[4]~29_combout\ : std_logic;
SIGNAL \spi|Decoder0~0_combout\ : std_logic;
SIGNAL \spi|Equal16~0_combout\ : std_logic;
SIGNAL \spi|Add0~9\ : std_logic;
SIGNAL \spi|Add0~10_combout\ : std_logic;
SIGNAL \spi|bit_counter[5]~26_combout\ : std_logic;
SIGNAL \spi|Add0~11\ : std_logic;
SIGNAL \spi|Add0~13\ : std_logic;
SIGNAL \spi|Add0~14_combout\ : std_logic;
SIGNAL \spi|bit_counter[7]~24_combout\ : std_logic;
SIGNAL \spi|Add0~15\ : std_logic;
SIGNAL \spi|Add0~16_combout\ : std_logic;
SIGNAL \spi|bit_counter[8]~23_combout\ : std_logic;
SIGNAL \spi|Add0~17\ : std_logic;
SIGNAL \spi|Add0~18_combout\ : std_logic;
SIGNAL \spi|bit_counter[9]~22_combout\ : std_logic;
SIGNAL \spi|Add0~19\ : std_logic;
SIGNAL \spi|Add0~20_combout\ : std_logic;
SIGNAL \spi|bit_counter[10]~21_combout\ : std_logic;
SIGNAL \spi|Add0~21\ : std_logic;
SIGNAL \spi|Add0~22_combout\ : std_logic;
SIGNAL \spi|bit_counter[11]~20_combout\ : std_logic;
SIGNAL \spi|Add0~23\ : std_logic;
SIGNAL \spi|Add0~24_combout\ : std_logic;
SIGNAL \spi|bit_counter[12]~19_combout\ : std_logic;
SIGNAL \spi|Add0~25\ : std_logic;
SIGNAL \spi|Add0~26_combout\ : std_logic;
SIGNAL \spi|bit_counter[13]~18_combout\ : std_logic;
SIGNAL \spi|Add0~27\ : std_logic;
SIGNAL \spi|Add0~28_combout\ : std_logic;
SIGNAL \spi|bit_counter[14]~17_combout\ : std_logic;
SIGNAL \spi|Add0~29\ : std_logic;
SIGNAL \spi|Add0~30_combout\ : std_logic;
SIGNAL \spi|bit_counter[15]~16_combout\ : std_logic;
SIGNAL \spi|Add0~31\ : std_logic;
SIGNAL \spi|Add0~32_combout\ : std_logic;
SIGNAL \spi|bit_counter[16]~15_combout\ : std_logic;
SIGNAL \spi|Add0~33\ : std_logic;
SIGNAL \spi|Add0~34_combout\ : std_logic;
SIGNAL \spi|bit_counter[17]~14_combout\ : std_logic;
SIGNAL \spi|Add0~35\ : std_logic;
SIGNAL \spi|Add0~36_combout\ : std_logic;
SIGNAL \spi|bit_counter[18]~13_combout\ : std_logic;
SIGNAL \spi|Add0~37\ : std_logic;
SIGNAL \spi|Add0~38_combout\ : std_logic;
SIGNAL \spi|bit_counter[19]~12_combout\ : std_logic;
SIGNAL \spi|Add0~39\ : std_logic;
SIGNAL \spi|Add0~40_combout\ : std_logic;
SIGNAL \spi|bit_counter[20]~11_combout\ : std_logic;
SIGNAL \spi|Add0~41\ : std_logic;
SIGNAL \spi|Add0~42_combout\ : std_logic;
SIGNAL \spi|bit_counter[21]~10_combout\ : std_logic;
SIGNAL \spi|Add0~43\ : std_logic;
SIGNAL \spi|Add0~44_combout\ : std_logic;
SIGNAL \spi|bit_counter[22]~9_combout\ : std_logic;
SIGNAL \spi|Add0~45\ : std_logic;
SIGNAL \spi|Add0~46_combout\ : std_logic;
SIGNAL \spi|bit_counter[23]~8_combout\ : std_logic;
SIGNAL \spi|Add0~47\ : std_logic;
SIGNAL \spi|Add0~48_combout\ : std_logic;
SIGNAL \spi|bit_counter[24]~7_combout\ : std_logic;
SIGNAL \spi|Add0~49\ : std_logic;
SIGNAL \spi|Add0~50_combout\ : std_logic;
SIGNAL \spi|bit_counter[25]~6_combout\ : std_logic;
SIGNAL \spi|Add0~51\ : std_logic;
SIGNAL \spi|Add0~52_combout\ : std_logic;
SIGNAL \spi|bit_counter[26]~5_combout\ : std_logic;
SIGNAL \spi|Add0~53\ : std_logic;
SIGNAL \spi|Add0~54_combout\ : std_logic;
SIGNAL \spi|bit_counter[27]~4_combout\ : std_logic;
SIGNAL \spi|Add0~55\ : std_logic;
SIGNAL \spi|Add0~56_combout\ : std_logic;
SIGNAL \spi|bit_counter[28]~3_combout\ : std_logic;
SIGNAL \spi|Add0~57\ : std_logic;
SIGNAL \spi|Add0~58_combout\ : std_logic;
SIGNAL \spi|bit_counter[29]~1_combout\ : std_logic;
SIGNAL \spi|Add0~59\ : std_logic;
SIGNAL \spi|Add0~60_combout\ : std_logic;
SIGNAL \spi|bit_counter[30]~0_combout\ : std_logic;
SIGNAL \spi|Add0~61\ : std_logic;
SIGNAL \spi|Add0~62_combout\ : std_logic;
SIGNAL \spi|bit_counter[31]~27_combout\ : std_logic;
SIGNAL \spi|Equal2~1_combout\ : std_logic;
SIGNAL \spi|Equal2~3_combout\ : std_logic;
SIGNAL \spi|Equal2~0_combout\ : std_logic;
SIGNAL \spi|Equal2~2_combout\ : std_logic;
SIGNAL \spi|Equal2~4_combout\ : std_logic;
SIGNAL \spi|Selector1~0_combout\ : std_logic;
SIGNAL \spi|Decoder0~2_combout\ : std_logic;
SIGNAL \spi|bit_counter[18]~2_combout\ : std_logic;
SIGNAL \spi|Add0~12_combout\ : std_logic;
SIGNAL \spi|bit_counter[6]~25_combout\ : std_logic;
SIGNAL \spi|Equal2~6_combout\ : std_logic;
SIGNAL \spi|Equal2~5_combout\ : std_logic;
SIGNAL \spi|Equal2~7_combout\ : std_logic;
SIGNAL \spi|LessThan0~0_combout\ : std_logic;
SIGNAL \spi|LessThan0~1_combout\ : std_logic;
SIGNAL \spi|Add0~0_combout\ : std_logic;
SIGNAL \spi|bit_counter~31_combout\ : std_logic;
SIGNAL \spi|Add0~1\ : std_logic;
SIGNAL \spi|Add0~2_combout\ : std_logic;
SIGNAL \spi|bit_counter~30_combout\ : std_logic;
SIGNAL \spi|Equal2~8_combout\ : std_logic;
SIGNAL \spi|WideOr0~combout\ : std_logic;
SIGNAL \spi|mosia_signal~q\ : std_logic;
SIGNAL \miso~input_o\ : std_logic;
SIGNAL \spi|Decoder0~4_combout\ : std_logic;
SIGNAL \spi|process_0~0_combout\ : std_logic;
SIGNAL \spi|Decoder0~3_combout\ : std_logic;
SIGNAL \spi|data_register[2]~2_combout\ : std_logic;
SIGNAL \spi|reg[9]~0_combout\ : std_logic;
SIGNAL \spi|Selector1~1_combout\ : std_logic;
SIGNAL \spi|Equal2~9_combout\ : std_logic;
SIGNAL \spi|Decoder0~5_combout\ : std_logic;
SIGNAL \spi|data_register[7]~6_combout\ : std_logic;
SIGNAL \spi|Equal3~0_combout\ : std_logic;
SIGNAL \spi|Decoder0~6_combout\ : std_logic;
SIGNAL \spi|data_register[6]~7_combout\ : std_logic;
SIGNAL \spi|reg[6]~feeder_combout\ : std_logic;
SIGNAL \spi|Selector1~2_combout\ : std_logic;
SIGNAL \spi|Selector1~3_combout\ : std_logic;
SIGNAL \spi|Equal4~0_combout\ : std_logic;
SIGNAL \spi|data_register[4]~5_combout\ : std_logic;
SIGNAL \spi|Decoder0~8_combout\ : std_logic;
SIGNAL \spi|data_register[8]~9_combout\ : std_logic;
SIGNAL \spi|Selector1~5_combout\ : std_logic;
SIGNAL \spi|process_0~1_combout\ : std_logic;
SIGNAL \spi|data_register[0]~1_combout\ : std_logic;
SIGNAL \spi|Selector1~4_combout\ : std_logic;
SIGNAL \spi|Selector1~6_combout\ : std_logic;
SIGNAL \spi|data_register[3]~3_combout\ : std_logic;
SIGNAL \spi|data_register[5]~4_combout\ : std_logic;
SIGNAL \spi|Decoder0~1_combout\ : std_logic;
SIGNAL \spi|data_register[1]~0_combout\ : std_logic;
SIGNAL \spi|reg[1]~feeder_combout\ : std_logic;
SIGNAL \spi|Selector1~7_combout\ : std_logic;
SIGNAL \spi|Selector1~8_combout\ : std_logic;
SIGNAL \spi|Selector1~9_combout\ : std_logic;
SIGNAL \spi|Selector1~10_combout\ : std_logic;
SIGNAL \spi|WideOr0~0_combout\ : std_logic;
SIGNAL \spi|Decoder0~7_combout\ : std_logic;
SIGNAL \spi|data_register[9]~8_combout\ : std_logic;
SIGNAL \spi|Selector1~11_combout\ : std_logic;
SIGNAL \spi|Selector1~12_combout\ : std_logic;
SIGNAL \spi|mosib_signal~q\ : std_logic;
SIGNAL \spi|chip_select_a~q\ : std_logic;
SIGNAL \spi|chip_select_b~feeder_combout\ : std_logic;
SIGNAL \spi|chip_select_b~q\ : std_logic;
SIGNAL \lcd|Add1~0_combout\ : std_logic;
SIGNAL \lcd|Add1~1\ : std_logic;
SIGNAL \lcd|Add1~2_combout\ : std_logic;
SIGNAL \lcd|Add1~3\ : std_logic;
SIGNAL \lcd|Add1~4_combout\ : std_logic;
SIGNAL \lcd|Add1~5\ : std_logic;
SIGNAL \lcd|Add1~6_combout\ : std_logic;
SIGNAL \lcd|Add1~7\ : std_logic;
SIGNAL \lcd|Add1~8_combout\ : std_logic;
SIGNAL \lcd|div_clk_new~2_combout\ : std_logic;
SIGNAL \lcd|Add1~9\ : std_logic;
SIGNAL \lcd|Add1~10_combout\ : std_logic;
SIGNAL \lcd|Add1~11\ : std_logic;
SIGNAL \lcd|Add1~12_combout\ : std_logic;
SIGNAL \lcd|div_clk_new~1_combout\ : std_logic;
SIGNAL \lcd|Add1~13\ : std_logic;
SIGNAL \lcd|Add1~14_combout\ : std_logic;
SIGNAL \lcd|Add1~15\ : std_logic;
SIGNAL \lcd|Add1~16_combout\ : std_logic;
SIGNAL \lcd|div_clk_new~0_combout\ : std_logic;
SIGNAL \lcd|Add1~17\ : std_logic;
SIGNAL \lcd|Add1~18_combout\ : std_logic;
SIGNAL \lcd|div_clk_new~4_combout\ : std_logic;
SIGNAL \lcd|Add1~19\ : std_logic;
SIGNAL \lcd|Add1~20_combout\ : std_logic;
SIGNAL \lcd|Add1~21\ : std_logic;
SIGNAL \lcd|Add1~22_combout\ : std_logic;
SIGNAL \lcd|Add1~23\ : std_logic;
SIGNAL \lcd|Add1~24_combout\ : std_logic;
SIGNAL \lcd|Add1~25\ : std_logic;
SIGNAL \lcd|Add1~26_combout\ : std_logic;
SIGNAL \lcd|Add1~27\ : std_logic;
SIGNAL \lcd|Add1~28_combout\ : std_logic;
SIGNAL \lcd|div_clk_new~3_combout\ : std_logic;
SIGNAL \lcd|Add1~29\ : std_logic;
SIGNAL \lcd|Add1~30_combout\ : std_logic;
SIGNAL \lcd|Equal3~1_combout\ : std_logic;
SIGNAL \lcd|Equal3~0_combout\ : std_logic;
SIGNAL \lcd|Equal3~2_combout\ : std_logic;
SIGNAL \lcd|Equal2~8_combout\ : std_logic;
SIGNAL \lcd|Equal2~0_combout\ : std_logic;
SIGNAL \lcd|Equal2~2_combout\ : std_logic;
SIGNAL \lcd|Equal2~1_combout\ : std_logic;
SIGNAL \lcd|Equal2~3_combout\ : std_logic;
SIGNAL \lcd|Equal2~4_combout\ : std_logic;
SIGNAL \lcd|Add1~61\ : std_logic;
SIGNAL \lcd|Add1~62_combout\ : std_logic;
SIGNAL \lcd|Equal2~9_combout\ : std_logic;
SIGNAL \lcd|Equal3~3_combout\ : std_logic;
SIGNAL \lcd|div_clk_new~5_combout\ : std_logic;
SIGNAL \lcd|Add1~31\ : std_logic;
SIGNAL \lcd|Add1~32_combout\ : std_logic;
SIGNAL \lcd|Add1~33\ : std_logic;
SIGNAL \lcd|Add1~34_combout\ : std_logic;
SIGNAL \lcd|Add1~35\ : std_logic;
SIGNAL \lcd|Add1~36_combout\ : std_logic;
SIGNAL \lcd|Add1~37\ : std_logic;
SIGNAL \lcd|Add1~38_combout\ : std_logic;
SIGNAL \lcd|Add1~39\ : std_logic;
SIGNAL \lcd|Add1~40_combout\ : std_logic;
SIGNAL \lcd|Add1~41\ : std_logic;
SIGNAL \lcd|Add1~42_combout\ : std_logic;
SIGNAL \lcd|Add1~43\ : std_logic;
SIGNAL \lcd|Add1~44_combout\ : std_logic;
SIGNAL \lcd|Add1~45\ : std_logic;
SIGNAL \lcd|Add1~46_combout\ : std_logic;
SIGNAL \lcd|Add1~47\ : std_logic;
SIGNAL \lcd|Add1~48_combout\ : std_logic;
SIGNAL \lcd|Add1~49\ : std_logic;
SIGNAL \lcd|Add1~50_combout\ : std_logic;
SIGNAL \lcd|Add1~51\ : std_logic;
SIGNAL \lcd|Add1~52_combout\ : std_logic;
SIGNAL \lcd|Add1~53\ : std_logic;
SIGNAL \lcd|Add1~54_combout\ : std_logic;
SIGNAL \lcd|Add1~55\ : std_logic;
SIGNAL \lcd|Add1~56_combout\ : std_logic;
SIGNAL \lcd|Add1~57\ : std_logic;
SIGNAL \lcd|Add1~58_combout\ : std_logic;
SIGNAL \lcd|Add1~59\ : std_logic;
SIGNAL \lcd|Add1~60_combout\ : std_logic;
SIGNAL \lcd|clk_slow~0_combout\ : std_logic;
SIGNAL \lcd|Equal2~5_combout\ : std_logic;
SIGNAL \lcd|Equal2~6_combout\ : std_logic;
SIGNAL \lcd|Equal2~7_combout\ : std_logic;
SIGNAL \lcd|clk_slow~1_combout\ : std_logic;
SIGNAL \lcd|clk_slow~q\ : std_logic;
SIGNAL \lcd|clk_slow~clkctrl_outclk\ : std_logic;
SIGNAL \lcd_rst~input_o\ : std_logic;
SIGNAL \lcd|lcd_instance|state~33_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S5~q\ : std_logic;
SIGNAL \lcd|lcd_instance|state~34_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S6~q\ : std_logic;
SIGNAL \lcd|lcd_instance|state~28_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S7~q\ : std_logic;
SIGNAL \lcd|lcd_instance|state~35_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S8~q\ : std_logic;
SIGNAL \lcd|lcd_instance|state~30_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S9~q\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector23~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Add0~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Add0~1_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|LessThan0~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state~26_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S1~q\ : std_logic;
SIGNAL \lcd|lcd_instance|state~31_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S2~q\ : std_logic;
SIGNAL \lcd|lcd_instance|state~29_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S0~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S0~q\ : std_logic;
SIGNAL \lcd|lcd_instance|state~32_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S3~q\ : std_logic;
SIGNAL \lcd|lcd_instance|state~27_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S4~q\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector10~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|lcd[1]~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector10~1_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|lcd_en~q\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector8~2_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector8~3_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector8~4_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|lcd_rs~q\ : std_logic;
SIGNAL \lcd|covid_det_instance|bit_index[2]~0_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|bit_index[0]~3_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|bit_index[1]~1_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|bit_index[3]~2_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Mux0~0_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Mux0~1_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Mux0~2_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Mux0~3_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Mux0~4_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Mux0~5_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Mux0~6_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Mux0~7_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|lcd[7]~1_combout\ : std_logic;
SIGNAL \lcd|Add0~1\ : std_logic;
SIGNAL \lcd|Add0~3\ : std_logic;
SIGNAL \lcd|Add0~4_combout\ : std_logic;
SIGNAL \lcd|Add0~5\ : std_logic;
SIGNAL \lcd|Add0~6_combout\ : std_logic;
SIGNAL \lcd|Add0~7\ : std_logic;
SIGNAL \lcd|Add0~8_combout\ : std_logic;
SIGNAL \lcd|Add0~9\ : std_logic;
SIGNAL \lcd|Add0~10_combout\ : std_logic;
SIGNAL \lcd|Add0~11\ : std_logic;
SIGNAL \lcd|Add0~12_combout\ : std_logic;
SIGNAL \lcd|div_clk~2_combout\ : std_logic;
SIGNAL \lcd|Add0~13\ : std_logic;
SIGNAL \lcd|Add0~14_combout\ : std_logic;
SIGNAL \lcd|Add0~15\ : std_logic;
SIGNAL \lcd|Add0~16_combout\ : std_logic;
SIGNAL \lcd|div_clk~1_combout\ : std_logic;
SIGNAL \lcd|Add0~17\ : std_logic;
SIGNAL \lcd|Add0~18_combout\ : std_logic;
SIGNAL \lcd|Add0~19\ : std_logic;
SIGNAL \lcd|Add0~21\ : std_logic;
SIGNAL \lcd|Add0~22_combout\ : std_logic;
SIGNAL \lcd|div_clk~3_combout\ : std_logic;
SIGNAL \lcd|Add0~23\ : std_logic;
SIGNAL \lcd|Add0~24_combout\ : std_logic;
SIGNAL \lcd|Add0~25\ : std_logic;
SIGNAL \lcd|Add0~26_combout\ : std_logic;
SIGNAL \lcd|Add0~27\ : std_logic;
SIGNAL \lcd|Add0~28_combout\ : std_logic;
SIGNAL \lcd|Add0~29\ : std_logic;
SIGNAL \lcd|Add0~30_combout\ : std_logic;
SIGNAL \lcd|Add0~31\ : std_logic;
SIGNAL \lcd|Add0~32_combout\ : std_logic;
SIGNAL \lcd|div_clk~4_combout\ : std_logic;
SIGNAL \lcd|Add0~33\ : std_logic;
SIGNAL \lcd|Add0~34_combout\ : std_logic;
SIGNAL \lcd|div_clk~5_combout\ : std_logic;
SIGNAL \lcd|Add0~35\ : std_logic;
SIGNAL \lcd|Add0~36_combout\ : std_logic;
SIGNAL \lcd|Add0~37\ : std_logic;
SIGNAL \lcd|Add0~38_combout\ : std_logic;
SIGNAL \lcd|Add0~39\ : std_logic;
SIGNAL \lcd|Add0~40_combout\ : std_logic;
SIGNAL \lcd|Add0~41\ : std_logic;
SIGNAL \lcd|Add0~42_combout\ : std_logic;
SIGNAL \lcd|Add0~43\ : std_logic;
SIGNAL \lcd|Add0~44_combout\ : std_logic;
SIGNAL \lcd|Add0~45\ : std_logic;
SIGNAL \lcd|Add0~46_combout\ : std_logic;
SIGNAL \lcd|Add0~47\ : std_logic;
SIGNAL \lcd|Add0~48_combout\ : std_logic;
SIGNAL \lcd|Add0~49\ : std_logic;
SIGNAL \lcd|Add0~50_combout\ : std_logic;
SIGNAL \lcd|Add0~51\ : std_logic;
SIGNAL \lcd|Add0~52_combout\ : std_logic;
SIGNAL \lcd|Add0~53\ : std_logic;
SIGNAL \lcd|Add0~54_combout\ : std_logic;
SIGNAL \lcd|Add0~55\ : std_logic;
SIGNAL \lcd|Add0~56_combout\ : std_logic;
SIGNAL \lcd|Add0~57\ : std_logic;
SIGNAL \lcd|Add0~58_combout\ : std_logic;
SIGNAL \lcd|Add0~59\ : std_logic;
SIGNAL \lcd|Add0~60_combout\ : std_logic;
SIGNAL \lcd|Add0~61\ : std_logic;
SIGNAL \lcd|Add0~62_combout\ : std_logic;
SIGNAL \lcd|Equal0~6_combout\ : std_logic;
SIGNAL \lcd|Equal0~5_combout\ : std_logic;
SIGNAL \lcd|Equal1~0_combout\ : std_logic;
SIGNAL \lcd|Equal1~1_combout\ : std_logic;
SIGNAL \lcd|Equal1~2_combout\ : std_logic;
SIGNAL \lcd|Equal1~3_combout\ : std_logic;
SIGNAL \lcd|div_clk~0_combout\ : std_logic;
SIGNAL \lcd|Add0~20_combout\ : std_logic;
SIGNAL \lcd|Equal0~1_combout\ : std_logic;
SIGNAL \lcd|Add0~2_combout\ : std_logic;
SIGNAL \lcd|Add0~0_combout\ : std_logic;
SIGNAL \lcd|Equal0~0_combout\ : std_logic;
SIGNAL \lcd|Equal0~3_combout\ : std_logic;
SIGNAL \lcd|Equal0~2_combout\ : std_logic;
SIGNAL \lcd|Equal0~4_combout\ : std_logic;
SIGNAL \lcd|Equal0~7_combout\ : std_logic;
SIGNAL \lcd|lcd_clk~0_combout\ : std_logic;
SIGNAL \lcd|lcd_clk~1_combout\ : std_logic;
SIGNAL \lcd|lcd_clk~2_combout\ : std_logic;
SIGNAL \lcd|lcd_clk~feeder_combout\ : std_logic;
SIGNAL \lcd|lcd_clk~q\ : std_logic;
SIGNAL \lcd|lcd_clk~clkctrl_outclk\ : std_logic;
SIGNAL \lcd|i[0]~32_combout\ : std_logic;
SIGNAL \lcd|i[1]~35\ : std_logic;
SIGNAL \lcd|i[2]~36_combout\ : std_logic;
SIGNAL \lcd|i[2]~37\ : std_logic;
SIGNAL \lcd|i[3]~38_combout\ : std_logic;
SIGNAL \lcd|i[3]~39\ : std_logic;
SIGNAL \lcd|i[4]~40_combout\ : std_logic;
SIGNAL \lcd|i[4]~41\ : std_logic;
SIGNAL \lcd|i[5]~42_combout\ : std_logic;
SIGNAL \lcd|i[5]~43\ : std_logic;
SIGNAL \lcd|i[6]~44_combout\ : std_logic;
SIGNAL \lcd|i[6]~45\ : std_logic;
SIGNAL \lcd|i[7]~46_combout\ : std_logic;
SIGNAL \lcd|i[7]~47\ : std_logic;
SIGNAL \lcd|i[8]~48_combout\ : std_logic;
SIGNAL \lcd|i[8]~49\ : std_logic;
SIGNAL \lcd|i[9]~50_combout\ : std_logic;
SIGNAL \lcd|i[9]~51\ : std_logic;
SIGNAL \lcd|i[10]~52_combout\ : std_logic;
SIGNAL \lcd|i[10]~53\ : std_logic;
SIGNAL \lcd|i[11]~54_combout\ : std_logic;
SIGNAL \lcd|Equal4~1_combout\ : std_logic;
SIGNAL \lcd|i[11]~55\ : std_logic;
SIGNAL \lcd|i[12]~56_combout\ : std_logic;
SIGNAL \lcd|i[12]~57\ : std_logic;
SIGNAL \lcd|i[13]~58_combout\ : std_logic;
SIGNAL \lcd|i[13]~59\ : std_logic;
SIGNAL \lcd|i[14]~60_combout\ : std_logic;
SIGNAL \lcd|i[14]~61\ : std_logic;
SIGNAL \lcd|i[15]~62_combout\ : std_logic;
SIGNAL \lcd|i[15]~63\ : std_logic;
SIGNAL \lcd|i[16]~64_combout\ : std_logic;
SIGNAL \lcd|i[16]~65\ : std_logic;
SIGNAL \lcd|i[17]~66_combout\ : std_logic;
SIGNAL \lcd|i[17]~67\ : std_logic;
SIGNAL \lcd|i[18]~68_combout\ : std_logic;
SIGNAL \lcd|i[18]~69\ : std_logic;
SIGNAL \lcd|i[19]~70_combout\ : std_logic;
SIGNAL \lcd|Equal4~3_combout\ : std_logic;
SIGNAL \lcd|Equal4~0_combout\ : std_logic;
SIGNAL \lcd|Equal4~2_combout\ : std_logic;
SIGNAL \lcd|Equal4~4_combout\ : std_logic;
SIGNAL \lcd|i[19]~71\ : std_logic;
SIGNAL \lcd|i[20]~72_combout\ : std_logic;
SIGNAL \lcd|i[20]~73\ : std_logic;
SIGNAL \lcd|i[21]~74_combout\ : std_logic;
SIGNAL \lcd|i[21]~75\ : std_logic;
SIGNAL \lcd|i[22]~76_combout\ : std_logic;
SIGNAL \lcd|i[22]~77\ : std_logic;
SIGNAL \lcd|i[23]~78_combout\ : std_logic;
SIGNAL \lcd|i[23]~79\ : std_logic;
SIGNAL \lcd|i[24]~80_combout\ : std_logic;
SIGNAL \lcd|i[24]~81\ : std_logic;
SIGNAL \lcd|i[25]~82_combout\ : std_logic;
SIGNAL \lcd|i[25]~83\ : std_logic;
SIGNAL \lcd|i[26]~84_combout\ : std_logic;
SIGNAL \lcd|i[26]~85\ : std_logic;
SIGNAL \lcd|i[27]~86_combout\ : std_logic;
SIGNAL \lcd|i[27]~87\ : std_logic;
SIGNAL \lcd|i[28]~88_combout\ : std_logic;
SIGNAL \lcd|i[28]~89\ : std_logic;
SIGNAL \lcd|i[29]~90_combout\ : std_logic;
SIGNAL \lcd|i[29]~91\ : std_logic;
SIGNAL \lcd|i[30]~92_combout\ : std_logic;
SIGNAL \lcd|i[30]~93\ : std_logic;
SIGNAL \lcd|i[31]~94_combout\ : std_logic;
SIGNAL \lcd|Equal4~7_combout\ : std_logic;
SIGNAL \lcd|Equal4~5_combout\ : std_logic;
SIGNAL \lcd|Equal4~6_combout\ : std_logic;
SIGNAL \lcd|Equal4~8_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~23_combout\ : std_logic;
SIGNAL \lcd|Equal12~0_combout\ : std_logic;
SIGNAL \lcd|Equal13~0_combout\ : std_logic;
SIGNAL \lcd|Equal4~9_combout\ : std_logic;
SIGNAL \lcd|Equal12~1_combout\ : std_logic;
SIGNAL \lcd|Equal10~0_combout\ : std_logic;
SIGNAL \lcd|Equal8~0_combout\ : std_logic;
SIGNAL \lcd|write_column~2_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~24_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector11~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|ack~q\ : std_logic;
SIGNAL \lcd|write_data[4]~22_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~4_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~6_combout\ : std_logic;
SIGNAL \lcd|i[0]~33\ : std_logic;
SIGNAL \lcd|i[1]~34_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~8_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~5_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~5_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~12_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~7_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~7_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~6_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~6_combout\ : std_logic;
SIGNAL \lcd|write_data~13_combout\ : std_logic;
SIGNAL \lcd|write_data~14_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~4_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~4_combout\ : std_logic;
SIGNAL \lcd|write_data~15_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~11_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~10_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~3_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~3_combout\ : std_logic;
SIGNAL \lcd|write_data~16_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~2_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~2_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~8_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~8_combout\ : std_logic;
SIGNAL \lcd|write_data~17_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~1_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~1_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~9_combout\ : std_logic;
SIGNAL \lcd|write_data~18_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~0_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~0_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~9_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~9_combout\ : std_logic;
SIGNAL \lcd|write_data~19_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~5_combout\ : std_logic;
SIGNAL \lcd|write_data~20_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~7_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|data_dis[0]~feeder_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector5~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector7~1_combout\ : std_logic;
SIGNAL \lcd|write_column~4_combout\ : std_logic;
SIGNAL \lcd|write_column~5_combout\ : std_logic;
SIGNAL \lcd|Equal7~0_combout\ : std_logic;
SIGNAL \lcd|Equal6~0_combout\ : std_logic;
SIGNAL \lcd|write_column~3_combout\ : std_logic;
SIGNAL \lcd|write_column~6_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|cmd_position[0]~feeder_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector7~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector7~2_combout\ : std_logic;
SIGNAL \lcd|write_column~7_combout\ : std_logic;
SIGNAL \lcd|write_column~8_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|cmd_position[1]~feeder_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~21_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|data_dis[1]~feeder_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector6~1_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector6~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector6~2_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|lcd[1]~2_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector5~2_combout\ : std_logic;
SIGNAL \lcd|write_column~12_combout\ : std_logic;
SIGNAL \lcd|write_column~9_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector5~1_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector5~3_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector4~1_combout\ : std_logic;
SIGNAL \lcd|write_column~10_combout\ : std_logic;
SIGNAL \lcd|write_column~11_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|cmd_position[3]~feeder_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector4~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector4~2_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~feeder_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|data_dis[4]~feeder_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector3~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector3~1_combout\ : std_logic;
SIGNAL \lcd|write_data[5]~feeder_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|data_dis[5]~feeder_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector2~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector0~0_combout\ : std_logic;
SIGNAL \spi|reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \lcd|covid_det_instance|bit_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd|lcd_instance|count_cmd\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \spi|clk_div|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lcd|lcd_instance|lcd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \lcd|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lcd|lcd_instance|cmd_position\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \spi|data_register\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \spi|bit_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lcd|lcd_instance|data_dis\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \lcd|div_clk_new\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lcd|write_column\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd|write_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \lcd|div_clk\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \spi|clk_div|ALT_INV_clk~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_lcd_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \spi|ALT_INV_chip_select_b~q\ : std_logic;
SIGNAL \spi|ALT_INV_chip_select_a~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rst <= rst;
ww_clk_in <= clk_in;
ww_miso <= miso;
mosi_adc <= ww_mosi_adc;
mosi_dac <= ww_mosi_dac;
sclk1 <= ww_sclk1;
sclk2 <= ww_sclk2;
cs_a <= ww_cs_a;
cs_b <= ww_cs_b;
ww_lcd_rst <= lcd_rst;
lcd_rw <= ww_lcd_rw;
lcd_en <= ww_lcd_en;
lcd_rs <= ww_lcd_rs;
detect <= ww_detect;
lcd1 <= ww_lcd1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_in~input_o\);

\lcd|clk_slow~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \lcd|clk_slow~q\);

\lcd|lcd_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \lcd|lcd_clk~q\);

\spi|clk_div|clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \spi|clk_div|clk~q\);
\spi|clk_div|ALT_INV_clk~clkctrl_outclk\ <= NOT \spi|clk_div|clk~clkctrl_outclk\;
\ALT_INV_lcd_rst~input_o\ <= NOT \lcd_rst~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\spi|ALT_INV_chip_select_b~q\ <= NOT \spi|chip_select_b~q\;
\spi|ALT_INV_chip_select_a~q\ <= NOT \spi|chip_select_a~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y34_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X60_Y2_N16
\mosi_adc~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|mosia_signal~q\,
	devoe => ww_devoe,
	o => \mosi_adc~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\mosi_dac~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|mosib_signal~q\,
	devoe => ww_devoe,
	o => \mosi_dac~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\sclk1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|clk_div|clk~q\,
	devoe => ww_devoe,
	o => \sclk1~output_o\);

-- Location: IOOBUF_X60_Y2_N2
\sclk2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|clk_div|clk~q\,
	devoe => ww_devoe,
	o => \sclk2~output_o\);

-- Location: IOOBUF_X60_Y2_N23
\cs_a~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|ALT_INV_chip_select_a~q\,
	devoe => ww_devoe,
	o => \cs_a~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\cs_b~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|ALT_INV_chip_select_b~q\,
	devoe => ww_devoe,
	o => \cs_b~output_o\);

-- Location: IOOBUF_X14_Y21_N23
\lcd_rw~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_rw~output_o\);

-- Location: IOOBUF_X14_Y21_N30
\lcd_en~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|lcd_instance|lcd_en~q\,
	devoe => ww_devoe,
	o => \lcd_en~output_o\);

-- Location: IOOBUF_X16_Y21_N16
\lcd_rs~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|lcd_instance|lcd_rs~q\,
	devoe => ww_devoe,
	o => \lcd_rs~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\detect~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|covid_det_instance|Mux0~7_combout\,
	devoe => ww_devoe,
	o => \detect~output_o\);

-- Location: IOOBUF_X12_Y21_N2
\lcd1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|lcd_instance|lcd\(0),
	devoe => ww_devoe,
	o => \lcd1[0]~output_o\);

-- Location: IOOBUF_X12_Y21_N9
\lcd1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|lcd_instance|lcd\(1),
	devoe => ww_devoe,
	o => \lcd1[1]~output_o\);

-- Location: IOOBUF_X12_Y21_N30
\lcd1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|lcd_instance|lcd\(2),
	devoe => ww_devoe,
	o => \lcd1[2]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\lcd1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|lcd_instance|lcd\(3),
	devoe => ww_devoe,
	o => \lcd1[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\lcd1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|lcd_instance|lcd\(4),
	devoe => ww_devoe,
	o => \lcd1[4]~output_o\);

-- Location: IOOBUF_X19_Y21_N30
\lcd1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|lcd_instance|lcd\(5),
	devoe => ww_devoe,
	o => \lcd1[5]~output_o\);

-- Location: IOOBUF_X8_Y21_N16
\lcd1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd1[6]~output_o\);

-- Location: IOOBUF_X8_Y21_N23
\lcd1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|lcd_instance|lcd\(7),
	devoe => ww_devoe,
	o => \lcd1[7]~output_o\);

-- Location: IOIBUF_X0_Y13_N15
\clk_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: CLKCTRL_G2
\clk_in~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~inputclkctrl_outclk\);

-- Location: FF_X28_Y1_N29
\spi|clk_div|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(30));

-- Location: LCCOMB_X28_Y2_N0
\spi|clk_div|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~0_combout\ = \spi|clk_div|count\(0) $ (VCC)
-- \spi|clk_div|Add0~1\ = CARRY(\spi|clk_div|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(0),
	datad => VCC,
	combout => \spi|clk_div|Add0~0_combout\,
	cout => \spi|clk_div|Add0~1\);

-- Location: LCCOMB_X27_Y1_N0
\spi|clk_div|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|count~0_combout\ = (\spi|clk_div|Add0~0_combout\ & ((!\spi|clk_div|Equal0~9_combout\) # (!\spi|clk_div|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|Add0~0_combout\,
	datac => \spi|clk_div|Equal0~4_combout\,
	datad => \spi|clk_div|Equal0~9_combout\,
	combout => \spi|clk_div|count~0_combout\);

-- Location: FF_X27_Y1_N1
\spi|clk_div|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(0));

-- Location: LCCOMB_X28_Y2_N2
\spi|clk_div|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~2_combout\ = (\spi|clk_div|count\(1) & (!\spi|clk_div|Add0~1\)) # (!\spi|clk_div|count\(1) & ((\spi|clk_div|Add0~1\) # (GND)))
-- \spi|clk_div|Add0~3\ = CARRY((!\spi|clk_div|Add0~1\) # (!\spi|clk_div|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(1),
	datad => VCC,
	cin => \spi|clk_div|Add0~1\,
	combout => \spi|clk_div|Add0~2_combout\,
	cout => \spi|clk_div|Add0~3\);

-- Location: FF_X28_Y2_N3
\spi|clk_div|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(1));

-- Location: LCCOMB_X28_Y2_N4
\spi|clk_div|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~4_combout\ = (\spi|clk_div|count\(2) & (\spi|clk_div|Add0~3\ $ (GND))) # (!\spi|clk_div|count\(2) & (!\spi|clk_div|Add0~3\ & VCC))
-- \spi|clk_div|Add0~5\ = CARRY((\spi|clk_div|count\(2) & !\spi|clk_div|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(2),
	datad => VCC,
	cin => \spi|clk_div|Add0~3\,
	combout => \spi|clk_div|Add0~4_combout\,
	cout => \spi|clk_div|Add0~5\);

-- Location: FF_X28_Y2_N5
\spi|clk_div|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(2));

-- Location: LCCOMB_X28_Y2_N6
\spi|clk_div|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~6_combout\ = (\spi|clk_div|count\(3) & (!\spi|clk_div|Add0~5\)) # (!\spi|clk_div|count\(3) & ((\spi|clk_div|Add0~5\) # (GND)))
-- \spi|clk_div|Add0~7\ = CARRY((!\spi|clk_div|Add0~5\) # (!\spi|clk_div|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(3),
	datad => VCC,
	cin => \spi|clk_div|Add0~5\,
	combout => \spi|clk_div|Add0~6_combout\,
	cout => \spi|clk_div|Add0~7\);

-- Location: LCCOMB_X28_Y2_N8
\spi|clk_div|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~8_combout\ = (\spi|clk_div|count\(4) & (\spi|clk_div|Add0~7\ $ (GND))) # (!\spi|clk_div|count\(4) & (!\spi|clk_div|Add0~7\ & VCC))
-- \spi|clk_div|Add0~9\ = CARRY((\spi|clk_div|count\(4) & !\spi|clk_div|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|count\(4),
	datad => VCC,
	cin => \spi|clk_div|Add0~7\,
	combout => \spi|clk_div|Add0~8_combout\,
	cout => \spi|clk_div|Add0~9\);

-- Location: LCCOMB_X27_Y1_N16
\spi|clk_div|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|count~2_combout\ = (\spi|clk_div|Add0~8_combout\ & ((!\spi|clk_div|Equal0~9_combout\) # (!\spi|clk_div|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|Equal0~4_combout\,
	datab => \spi|clk_div|Add0~8_combout\,
	datad => \spi|clk_div|Equal0~9_combout\,
	combout => \spi|clk_div|count~2_combout\);

-- Location: FF_X27_Y1_N17
\spi|clk_div|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(4));

-- Location: LCCOMB_X28_Y2_N10
\spi|clk_div|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~10_combout\ = (\spi|clk_div|count\(5) & (!\spi|clk_div|Add0~9\)) # (!\spi|clk_div|count\(5) & ((\spi|clk_div|Add0~9\) # (GND)))
-- \spi|clk_div|Add0~11\ = CARRY((!\spi|clk_div|Add0~9\) # (!\spi|clk_div|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|count\(5),
	datad => VCC,
	cin => \spi|clk_div|Add0~9\,
	combout => \spi|clk_div|Add0~10_combout\,
	cout => \spi|clk_div|Add0~11\);

-- Location: FF_X28_Y2_N11
\spi|clk_div|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(5));

-- Location: LCCOMB_X28_Y2_N12
\spi|clk_div|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~12_combout\ = (\spi|clk_div|count\(6) & (\spi|clk_div|Add0~11\ $ (GND))) # (!\spi|clk_div|count\(6) & (!\spi|clk_div|Add0~11\ & VCC))
-- \spi|clk_div|Add0~13\ = CARRY((\spi|clk_div|count\(6) & !\spi|clk_div|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|count\(6),
	datad => VCC,
	cin => \spi|clk_div|Add0~11\,
	combout => \spi|clk_div|Add0~12_combout\,
	cout => \spi|clk_div|Add0~13\);

-- Location: FF_X28_Y2_N13
\spi|clk_div|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(6));

-- Location: LCCOMB_X28_Y2_N14
\spi|clk_div|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~14_combout\ = (\spi|clk_div|count\(7) & (!\spi|clk_div|Add0~13\)) # (!\spi|clk_div|count\(7) & ((\spi|clk_div|Add0~13\) # (GND)))
-- \spi|clk_div|Add0~15\ = CARRY((!\spi|clk_div|Add0~13\) # (!\spi|clk_div|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(7),
	datad => VCC,
	cin => \spi|clk_div|Add0~13\,
	combout => \spi|clk_div|Add0~14_combout\,
	cout => \spi|clk_div|Add0~15\);

-- Location: FF_X28_Y2_N15
\spi|clk_div|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(7));

-- Location: LCCOMB_X28_Y2_N16
\spi|clk_div|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~16_combout\ = (\spi|clk_div|count\(8) & (\spi|clk_div|Add0~15\ $ (GND))) # (!\spi|clk_div|count\(8) & (!\spi|clk_div|Add0~15\ & VCC))
-- \spi|clk_div|Add0~17\ = CARRY((\spi|clk_div|count\(8) & !\spi|clk_div|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(8),
	datad => VCC,
	cin => \spi|clk_div|Add0~15\,
	combout => \spi|clk_div|Add0~16_combout\,
	cout => \spi|clk_div|Add0~17\);

-- Location: FF_X28_Y2_N17
\spi|clk_div|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(8));

-- Location: LCCOMB_X28_Y2_N18
\spi|clk_div|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~18_combout\ = (\spi|clk_div|count\(9) & (!\spi|clk_div|Add0~17\)) # (!\spi|clk_div|count\(9) & ((\spi|clk_div|Add0~17\) # (GND)))
-- \spi|clk_div|Add0~19\ = CARRY((!\spi|clk_div|Add0~17\) # (!\spi|clk_div|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(9),
	datad => VCC,
	cin => \spi|clk_div|Add0~17\,
	combout => \spi|clk_div|Add0~18_combout\,
	cout => \spi|clk_div|Add0~19\);

-- Location: FF_X28_Y2_N19
\spi|clk_div|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(9));

-- Location: LCCOMB_X28_Y2_N20
\spi|clk_div|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~20_combout\ = (\spi|clk_div|count\(10) & (\spi|clk_div|Add0~19\ $ (GND))) # (!\spi|clk_div|count\(10) & (!\spi|clk_div|Add0~19\ & VCC))
-- \spi|clk_div|Add0~21\ = CARRY((\spi|clk_div|count\(10) & !\spi|clk_div|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(10),
	datad => VCC,
	cin => \spi|clk_div|Add0~19\,
	combout => \spi|clk_div|Add0~20_combout\,
	cout => \spi|clk_div|Add0~21\);

-- Location: FF_X28_Y2_N21
\spi|clk_div|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(10));

-- Location: LCCOMB_X28_Y2_N22
\spi|clk_div|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~22_combout\ = (\spi|clk_div|count\(11) & (!\spi|clk_div|Add0~21\)) # (!\spi|clk_div|count\(11) & ((\spi|clk_div|Add0~21\) # (GND)))
-- \spi|clk_div|Add0~23\ = CARRY((!\spi|clk_div|Add0~21\) # (!\spi|clk_div|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|count\(11),
	datad => VCC,
	cin => \spi|clk_div|Add0~21\,
	combout => \spi|clk_div|Add0~22_combout\,
	cout => \spi|clk_div|Add0~23\);

-- Location: FF_X28_Y2_N23
\spi|clk_div|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(11));

-- Location: LCCOMB_X28_Y2_N24
\spi|clk_div|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~24_combout\ = (\spi|clk_div|count\(12) & (\spi|clk_div|Add0~23\ $ (GND))) # (!\spi|clk_div|count\(12) & (!\spi|clk_div|Add0~23\ & VCC))
-- \spi|clk_div|Add0~25\ = CARRY((\spi|clk_div|count\(12) & !\spi|clk_div|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(12),
	datad => VCC,
	cin => \spi|clk_div|Add0~23\,
	combout => \spi|clk_div|Add0~24_combout\,
	cout => \spi|clk_div|Add0~25\);

-- Location: FF_X28_Y2_N25
\spi|clk_div|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(12));

-- Location: LCCOMB_X28_Y2_N26
\spi|clk_div|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~26_combout\ = (\spi|clk_div|count\(13) & (!\spi|clk_div|Add0~25\)) # (!\spi|clk_div|count\(13) & ((\spi|clk_div|Add0~25\) # (GND)))
-- \spi|clk_div|Add0~27\ = CARRY((!\spi|clk_div|Add0~25\) # (!\spi|clk_div|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|count\(13),
	datad => VCC,
	cin => \spi|clk_div|Add0~25\,
	combout => \spi|clk_div|Add0~26_combout\,
	cout => \spi|clk_div|Add0~27\);

-- Location: FF_X28_Y2_N27
\spi|clk_div|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(13));

-- Location: LCCOMB_X28_Y2_N28
\spi|clk_div|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~28_combout\ = (\spi|clk_div|count\(14) & (\spi|clk_div|Add0~27\ $ (GND))) # (!\spi|clk_div|count\(14) & (!\spi|clk_div|Add0~27\ & VCC))
-- \spi|clk_div|Add0~29\ = CARRY((\spi|clk_div|count\(14) & !\spi|clk_div|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(14),
	datad => VCC,
	cin => \spi|clk_div|Add0~27\,
	combout => \spi|clk_div|Add0~28_combout\,
	cout => \spi|clk_div|Add0~29\);

-- Location: FF_X28_Y2_N29
\spi|clk_div|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(14));

-- Location: LCCOMB_X28_Y2_N30
\spi|clk_div|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~30_combout\ = (\spi|clk_div|count\(15) & (!\spi|clk_div|Add0~29\)) # (!\spi|clk_div|count\(15) & ((\spi|clk_div|Add0~29\) # (GND)))
-- \spi|clk_div|Add0~31\ = CARRY((!\spi|clk_div|Add0~29\) # (!\spi|clk_div|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|count\(15),
	datad => VCC,
	cin => \spi|clk_div|Add0~29\,
	combout => \spi|clk_div|Add0~30_combout\,
	cout => \spi|clk_div|Add0~31\);

-- Location: FF_X28_Y2_N31
\spi|clk_div|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(15));

-- Location: LCCOMB_X28_Y1_N0
\spi|clk_div|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~32_combout\ = (\spi|clk_div|count\(16) & (\spi|clk_div|Add0~31\ $ (GND))) # (!\spi|clk_div|count\(16) & (!\spi|clk_div|Add0~31\ & VCC))
-- \spi|clk_div|Add0~33\ = CARRY((\spi|clk_div|count\(16) & !\spi|clk_div|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(16),
	datad => VCC,
	cin => \spi|clk_div|Add0~31\,
	combout => \spi|clk_div|Add0~32_combout\,
	cout => \spi|clk_div|Add0~33\);

-- Location: FF_X28_Y1_N1
\spi|clk_div|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(16));

-- Location: LCCOMB_X28_Y1_N2
\spi|clk_div|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~34_combout\ = (\spi|clk_div|count\(17) & (!\spi|clk_div|Add0~33\)) # (!\spi|clk_div|count\(17) & ((\spi|clk_div|Add0~33\) # (GND)))
-- \spi|clk_div|Add0~35\ = CARRY((!\spi|clk_div|Add0~33\) # (!\spi|clk_div|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(17),
	datad => VCC,
	cin => \spi|clk_div|Add0~33\,
	combout => \spi|clk_div|Add0~34_combout\,
	cout => \spi|clk_div|Add0~35\);

-- Location: FF_X28_Y1_N3
\spi|clk_div|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(17));

-- Location: LCCOMB_X28_Y1_N4
\spi|clk_div|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~36_combout\ = (\spi|clk_div|count\(18) & (\spi|clk_div|Add0~35\ $ (GND))) # (!\spi|clk_div|count\(18) & (!\spi|clk_div|Add0~35\ & VCC))
-- \spi|clk_div|Add0~37\ = CARRY((\spi|clk_div|count\(18) & !\spi|clk_div|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(18),
	datad => VCC,
	cin => \spi|clk_div|Add0~35\,
	combout => \spi|clk_div|Add0~36_combout\,
	cout => \spi|clk_div|Add0~37\);

-- Location: FF_X28_Y1_N5
\spi|clk_div|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(18));

-- Location: LCCOMB_X28_Y1_N6
\spi|clk_div|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~38_combout\ = (\spi|clk_div|count\(19) & (!\spi|clk_div|Add0~37\)) # (!\spi|clk_div|count\(19) & ((\spi|clk_div|Add0~37\) # (GND)))
-- \spi|clk_div|Add0~39\ = CARRY((!\spi|clk_div|Add0~37\) # (!\spi|clk_div|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|count\(19),
	datad => VCC,
	cin => \spi|clk_div|Add0~37\,
	combout => \spi|clk_div|Add0~38_combout\,
	cout => \spi|clk_div|Add0~39\);

-- Location: FF_X28_Y1_N7
\spi|clk_div|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(19));

-- Location: LCCOMB_X28_Y1_N8
\spi|clk_div|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~40_combout\ = (\spi|clk_div|count\(20) & (\spi|clk_div|Add0~39\ $ (GND))) # (!\spi|clk_div|count\(20) & (!\spi|clk_div|Add0~39\ & VCC))
-- \spi|clk_div|Add0~41\ = CARRY((\spi|clk_div|count\(20) & !\spi|clk_div|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(20),
	datad => VCC,
	cin => \spi|clk_div|Add0~39\,
	combout => \spi|clk_div|Add0~40_combout\,
	cout => \spi|clk_div|Add0~41\);

-- Location: FF_X28_Y1_N9
\spi|clk_div|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(20));

-- Location: LCCOMB_X28_Y1_N10
\spi|clk_div|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~42_combout\ = (\spi|clk_div|count\(21) & (!\spi|clk_div|Add0~41\)) # (!\spi|clk_div|count\(21) & ((\spi|clk_div|Add0~41\) # (GND)))
-- \spi|clk_div|Add0~43\ = CARRY((!\spi|clk_div|Add0~41\) # (!\spi|clk_div|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|count\(21),
	datad => VCC,
	cin => \spi|clk_div|Add0~41\,
	combout => \spi|clk_div|Add0~42_combout\,
	cout => \spi|clk_div|Add0~43\);

-- Location: FF_X28_Y1_N11
\spi|clk_div|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(21));

-- Location: LCCOMB_X28_Y1_N12
\spi|clk_div|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~44_combout\ = (\spi|clk_div|count\(22) & (\spi|clk_div|Add0~43\ $ (GND))) # (!\spi|clk_div|count\(22) & (!\spi|clk_div|Add0~43\ & VCC))
-- \spi|clk_div|Add0~45\ = CARRY((\spi|clk_div|count\(22) & !\spi|clk_div|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|count\(22),
	datad => VCC,
	cin => \spi|clk_div|Add0~43\,
	combout => \spi|clk_div|Add0~44_combout\,
	cout => \spi|clk_div|Add0~45\);

-- Location: FF_X28_Y1_N13
\spi|clk_div|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(22));

-- Location: LCCOMB_X28_Y1_N14
\spi|clk_div|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~46_combout\ = (\spi|clk_div|count\(23) & (!\spi|clk_div|Add0~45\)) # (!\spi|clk_div|count\(23) & ((\spi|clk_div|Add0~45\) # (GND)))
-- \spi|clk_div|Add0~47\ = CARRY((!\spi|clk_div|Add0~45\) # (!\spi|clk_div|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(23),
	datad => VCC,
	cin => \spi|clk_div|Add0~45\,
	combout => \spi|clk_div|Add0~46_combout\,
	cout => \spi|clk_div|Add0~47\);

-- Location: FF_X28_Y1_N15
\spi|clk_div|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(23));

-- Location: LCCOMB_X28_Y1_N16
\spi|clk_div|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~48_combout\ = (\spi|clk_div|count\(24) & (\spi|clk_div|Add0~47\ $ (GND))) # (!\spi|clk_div|count\(24) & (!\spi|clk_div|Add0~47\ & VCC))
-- \spi|clk_div|Add0~49\ = CARRY((\spi|clk_div|count\(24) & !\spi|clk_div|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(24),
	datad => VCC,
	cin => \spi|clk_div|Add0~47\,
	combout => \spi|clk_div|Add0~48_combout\,
	cout => \spi|clk_div|Add0~49\);

-- Location: FF_X28_Y1_N17
\spi|clk_div|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(24));

-- Location: LCCOMB_X28_Y1_N18
\spi|clk_div|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~50_combout\ = (\spi|clk_div|count\(25) & (!\spi|clk_div|Add0~49\)) # (!\spi|clk_div|count\(25) & ((\spi|clk_div|Add0~49\) # (GND)))
-- \spi|clk_div|Add0~51\ = CARRY((!\spi|clk_div|Add0~49\) # (!\spi|clk_div|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(25),
	datad => VCC,
	cin => \spi|clk_div|Add0~49\,
	combout => \spi|clk_div|Add0~50_combout\,
	cout => \spi|clk_div|Add0~51\);

-- Location: FF_X28_Y1_N19
\spi|clk_div|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(25));

-- Location: LCCOMB_X28_Y1_N20
\spi|clk_div|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~52_combout\ = (\spi|clk_div|count\(26) & (\spi|clk_div|Add0~51\ $ (GND))) # (!\spi|clk_div|count\(26) & (!\spi|clk_div|Add0~51\ & VCC))
-- \spi|clk_div|Add0~53\ = CARRY((\spi|clk_div|count\(26) & !\spi|clk_div|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(26),
	datad => VCC,
	cin => \spi|clk_div|Add0~51\,
	combout => \spi|clk_div|Add0~52_combout\,
	cout => \spi|clk_div|Add0~53\);

-- Location: FF_X28_Y1_N21
\spi|clk_div|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(26));

-- Location: LCCOMB_X28_Y1_N22
\spi|clk_div|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~54_combout\ = (\spi|clk_div|count\(27) & (!\spi|clk_div|Add0~53\)) # (!\spi|clk_div|count\(27) & ((\spi|clk_div|Add0~53\) # (GND)))
-- \spi|clk_div|Add0~55\ = CARRY((!\spi|clk_div|Add0~53\) # (!\spi|clk_div|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|count\(27),
	datad => VCC,
	cin => \spi|clk_div|Add0~53\,
	combout => \spi|clk_div|Add0~54_combout\,
	cout => \spi|clk_div|Add0~55\);

-- Location: FF_X28_Y1_N23
\spi|clk_div|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(27));

-- Location: LCCOMB_X28_Y1_N24
\spi|clk_div|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~56_combout\ = (\spi|clk_div|count\(28) & (\spi|clk_div|Add0~55\ $ (GND))) # (!\spi|clk_div|count\(28) & (!\spi|clk_div|Add0~55\ & VCC))
-- \spi|clk_div|Add0~57\ = CARRY((\spi|clk_div|count\(28) & !\spi|clk_div|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(28),
	datad => VCC,
	cin => \spi|clk_div|Add0~55\,
	combout => \spi|clk_div|Add0~56_combout\,
	cout => \spi|clk_div|Add0~57\);

-- Location: FF_X28_Y1_N25
\spi|clk_div|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(28));

-- Location: LCCOMB_X28_Y1_N26
\spi|clk_div|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~58_combout\ = (\spi|clk_div|count\(29) & (!\spi|clk_div|Add0~57\)) # (!\spi|clk_div|count\(29) & ((\spi|clk_div|Add0~57\) # (GND)))
-- \spi|clk_div|Add0~59\ = CARRY((!\spi|clk_div|Add0~57\) # (!\spi|clk_div|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|count\(29),
	datad => VCC,
	cin => \spi|clk_div|Add0~57\,
	combout => \spi|clk_div|Add0~58_combout\,
	cout => \spi|clk_div|Add0~59\);

-- Location: FF_X28_Y1_N27
\spi|clk_div|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(29));

-- Location: LCCOMB_X28_Y1_N28
\spi|clk_div|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~60_combout\ = (\spi|clk_div|count\(30) & (\spi|clk_div|Add0~59\ $ (GND))) # (!\spi|clk_div|count\(30) & (!\spi|clk_div|Add0~59\ & VCC))
-- \spi|clk_div|Add0~61\ = CARRY((\spi|clk_div|count\(30) & !\spi|clk_div|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|count\(30),
	datad => VCC,
	cin => \spi|clk_div|Add0~59\,
	combout => \spi|clk_div|Add0~60_combout\,
	cout => \spi|clk_div|Add0~61\);

-- Location: FF_X28_Y1_N31
\spi|clk_div|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(31));

-- Location: LCCOMB_X28_Y1_N30
\spi|clk_div|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Add0~62_combout\ = \spi|clk_div|count\(31) $ (\spi|clk_div|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|count\(31),
	cin => \spi|clk_div|Add0~61\,
	combout => \spi|clk_div|Add0~62_combout\);

-- Location: LCCOMB_X27_Y1_N30
\spi|clk_div|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Equal0~5_combout\ = (!\spi|clk_div|Add0~34_combout\ & (!\spi|clk_div|Add0~32_combout\ & (!\spi|clk_div|Add0~38_combout\ & !\spi|clk_div|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|Add0~34_combout\,
	datab => \spi|clk_div|Add0~32_combout\,
	datac => \spi|clk_div|Add0~38_combout\,
	datad => \spi|clk_div|Add0~36_combout\,
	combout => \spi|clk_div|Equal0~5_combout\);

-- Location: LCCOMB_X27_Y1_N24
\spi|clk_div|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Equal0~6_combout\ = (!\spi|clk_div|Add0~42_combout\ & (!\spi|clk_div|Add0~40_combout\ & (!\spi|clk_div|Add0~44_combout\ & !\spi|clk_div|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|Add0~42_combout\,
	datab => \spi|clk_div|Add0~40_combout\,
	datac => \spi|clk_div|Add0~44_combout\,
	datad => \spi|clk_div|Add0~46_combout\,
	combout => \spi|clk_div|Equal0~6_combout\);

-- Location: LCCOMB_X27_Y1_N12
\spi|clk_div|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Equal0~7_combout\ = (!\spi|clk_div|Add0~48_combout\ & (!\spi|clk_div|Add0~50_combout\ & (\spi|clk_div|Equal0~5_combout\ & \spi|clk_div|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|Add0~48_combout\,
	datab => \spi|clk_div|Add0~50_combout\,
	datac => \spi|clk_div|Equal0~5_combout\,
	datad => \spi|clk_div|Equal0~6_combout\,
	combout => \spi|clk_div|Equal0~7_combout\);

-- Location: LCCOMB_X27_Y1_N20
\spi|clk_div|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Equal0~8_combout\ = (!\spi|clk_div|Add0~52_combout\ & (!\spi|clk_div|Add0~54_combout\ & (!\spi|clk_div|Add0~56_combout\ & \spi|clk_div|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|Add0~52_combout\,
	datab => \spi|clk_div|Add0~54_combout\,
	datac => \spi|clk_div|Add0~56_combout\,
	datad => \spi|clk_div|Equal0~7_combout\,
	combout => \spi|clk_div|Equal0~8_combout\);

-- Location: LCCOMB_X27_Y1_N28
\spi|clk_div|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Equal0~9_combout\ = (!\spi|clk_div|Add0~60_combout\ & (!\spi|clk_div|Add0~58_combout\ & (!\spi|clk_div|Add0~62_combout\ & \spi|clk_div|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|Add0~60_combout\,
	datab => \spi|clk_div|Add0~58_combout\,
	datac => \spi|clk_div|Add0~62_combout\,
	datad => \spi|clk_div|Equal0~8_combout\,
	combout => \spi|clk_div|Equal0~9_combout\);

-- Location: LCCOMB_X27_Y1_N14
\spi|clk_div|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|count~1_combout\ = (\spi|clk_div|Add0~6_combout\ & ((!\spi|clk_div|Equal0~9_combout\) # (!\spi|clk_div|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|Add0~6_combout\,
	datac => \spi|clk_div|Equal0~4_combout\,
	datad => \spi|clk_div|Equal0~9_combout\,
	combout => \spi|clk_div|count~1_combout\);

-- Location: FF_X27_Y1_N15
\spi|clk_div|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|count\(3));

-- Location: LCCOMB_X27_Y2_N4
\spi|clk_div|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Equal0~0_combout\ = (\spi|clk_div|Add0~6_combout\ & (!\spi|clk_div|Add0~4_combout\ & (\spi|clk_div|Add0~0_combout\ & !\spi|clk_div|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|Add0~6_combout\,
	datab => \spi|clk_div|Add0~4_combout\,
	datac => \spi|clk_div|Add0~0_combout\,
	datad => \spi|clk_div|Add0~2_combout\,
	combout => \spi|clk_div|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y1_N8
\spi|clk_div|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Equal0~3_combout\ = (!\spi|clk_div|Add0~24_combout\ & (!\spi|clk_div|Add0~26_combout\ & (!\spi|clk_div|Add0~30_combout\ & !\spi|clk_div|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|Add0~24_combout\,
	datab => \spi|clk_div|Add0~26_combout\,
	datac => \spi|clk_div|Add0~30_combout\,
	datad => \spi|clk_div|Add0~28_combout\,
	combout => \spi|clk_div|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y2_N30
\spi|clk_div|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Equal0~1_combout\ = (!\spi|clk_div|Add0~10_combout\ & (!\spi|clk_div|Add0~12_combout\ & (!\spi|clk_div|Add0~14_combout\ & \spi|clk_div|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|Add0~10_combout\,
	datab => \spi|clk_div|Add0~12_combout\,
	datac => \spi|clk_div|Add0~14_combout\,
	datad => \spi|clk_div|Add0~8_combout\,
	combout => \spi|clk_div|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y1_N10
\spi|clk_div|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Equal0~2_combout\ = (!\spi|clk_div|Add0~18_combout\ & (!\spi|clk_div|Add0~22_combout\ & (!\spi|clk_div|Add0~16_combout\ & !\spi|clk_div|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|Add0~18_combout\,
	datab => \spi|clk_div|Add0~22_combout\,
	datac => \spi|clk_div|Add0~16_combout\,
	datad => \spi|clk_div|Add0~20_combout\,
	combout => \spi|clk_div|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y1_N26
\spi|clk_div|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|Equal0~4_combout\ = (\spi|clk_div|Equal0~0_combout\ & (\spi|clk_div|Equal0~3_combout\ & (\spi|clk_div|Equal0~1_combout\ & \spi|clk_div|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_div|Equal0~0_combout\,
	datab => \spi|clk_div|Equal0~3_combout\,
	datac => \spi|clk_div|Equal0~1_combout\,
	datad => \spi|clk_div|Equal0~2_combout\,
	combout => \spi|clk_div|Equal0~4_combout\);

-- Location: LCCOMB_X27_Y1_N18
\spi|clk_div|clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|clk~0_combout\ = \spi|clk_div|clk~q\ $ (((\spi|clk_div|Equal0~4_combout\ & \spi|clk_div|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_div|clk~q\,
	datac => \spi|clk_div|Equal0~4_combout\,
	datad => \spi|clk_div|Equal0~9_combout\,
	combout => \spi|clk_div|clk~0_combout\);

-- Location: LCCOMB_X27_Y1_N22
\spi|clk_div|clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk_div|clk~feeder_combout\ = \spi|clk_div|clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|clk_div|clk~0_combout\,
	combout => \spi|clk_div|clk~feeder_combout\);

-- Location: FF_X27_Y1_N23
\spi|clk_div|clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk_div|clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_div|clk~q\);

-- Location: CLKCTRL_G16
\spi|clk_div|clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \spi|clk_div|clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \spi|clk_div|clk~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y7_N2
\spi|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~2_combout\ = (\spi|bit_counter\(1) & (!\spi|Add0~1\)) # (!\spi|bit_counter\(1) & ((\spi|Add0~1\) # (GND)))
-- \spi|Add0~3\ = CARRY((!\spi|Add0~1\) # (!\spi|bit_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_counter\(1),
	datad => VCC,
	cin => \spi|Add0~1\,
	combout => \spi|Add0~2_combout\,
	cout => \spi|Add0~3\);

-- Location: LCCOMB_X38_Y7_N4
\spi|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~4_combout\ = (\spi|bit_counter\(2) & (\spi|Add0~3\ $ (GND))) # (!\spi|bit_counter\(2) & (!\spi|Add0~3\ & VCC))
-- \spi|Add0~5\ = CARRY((\spi|bit_counter\(2) & !\spi|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(2),
	datad => VCC,
	cin => \spi|Add0~3\,
	combout => \spi|Add0~4_combout\,
	cout => \spi|Add0~5\);

-- Location: LCCOMB_X33_Y6_N16
\spi|bit_counter~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter~32_combout\ = (\spi|LessThan0~1_combout\ & \spi|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|LessThan0~1_combout\,
	datad => \spi|Add0~4_combout\,
	combout => \spi|bit_counter~32_combout\);

-- Location: IOIBUF_X40_Y0_N1
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X33_Y6_N17
\spi|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \spi|bit_counter[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(2));

-- Location: LCCOMB_X38_Y7_N6
\spi|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~6_combout\ = (\spi|bit_counter\(3) & (!\spi|Add0~5\)) # (!\spi|bit_counter\(3) & ((\spi|Add0~5\) # (GND)))
-- \spi|Add0~7\ = CARRY((!\spi|Add0~5\) # (!\spi|bit_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(3),
	datad => VCC,
	cin => \spi|Add0~5\,
	combout => \spi|Add0~6_combout\,
	cout => \spi|Add0~7\);

-- Location: LCCOMB_X33_Y6_N12
\spi|bit_counter~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter~28_combout\ = (\spi|Add0~6_combout\ & \spi|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Add0~6_combout\,
	datad => \spi|LessThan0~1_combout\,
	combout => \spi|bit_counter~28_combout\);

-- Location: FF_X33_Y6_N13
\spi|bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \spi|bit_counter[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(3));

-- Location: LCCOMB_X38_Y7_N8
\spi|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~8_combout\ = (\spi|bit_counter\(4) & (\spi|Add0~7\ $ (GND))) # (!\spi|bit_counter\(4) & (!\spi|Add0~7\ & VCC))
-- \spi|Add0~9\ = CARRY((\spi|bit_counter\(4) & !\spi|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(4),
	datad => VCC,
	cin => \spi|Add0~7\,
	combout => \spi|Add0~8_combout\,
	cout => \spi|Add0~9\);

-- Location: LCCOMB_X35_Y6_N2
\spi|bit_counter[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[4]~29_combout\ = (\spi|LessThan0~1_combout\ & ((\spi|Add0~8_combout\) # ((!\spi|bit_counter[18]~2_combout\ & \spi|bit_counter\(4))))) # (!\spi|LessThan0~1_combout\ & (!\spi|bit_counter[18]~2_combout\ & (\spi|bit_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan0~1_combout\,
	datab => \spi|bit_counter[18]~2_combout\,
	datac => \spi|bit_counter\(4),
	datad => \spi|Add0~8_combout\,
	combout => \spi|bit_counter[4]~29_combout\);

-- Location: FF_X35_Y6_N3
\spi|bit_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[4]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(4));

-- Location: LCCOMB_X34_Y6_N14
\spi|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Decoder0~0_combout\ = (!\spi|bit_counter\(1) & (!\spi|bit_counter\(2) & !\spi|bit_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_counter\(1),
	datac => \spi|bit_counter\(2),
	datad => \spi|bit_counter\(3),
	combout => \spi|Decoder0~0_combout\);

-- Location: LCCOMB_X34_Y6_N6
\spi|Equal16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal16~0_combout\ = (((!\spi|Selector1~0_combout\) # (!\spi|bit_counter\(0))) # (!\spi|Decoder0~0_combout\)) # (!\spi|bit_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(4),
	datab => \spi|Decoder0~0_combout\,
	datac => \spi|bit_counter\(0),
	datad => \spi|Selector1~0_combout\,
	combout => \spi|Equal16~0_combout\);

-- Location: LCCOMB_X38_Y7_N10
\spi|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~10_combout\ = (\spi|bit_counter\(5) & (!\spi|Add0~9\)) # (!\spi|bit_counter\(5) & ((\spi|Add0~9\) # (GND)))
-- \spi|Add0~11\ = CARRY((!\spi|Add0~9\) # (!\spi|bit_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(5),
	datad => VCC,
	cin => \spi|Add0~9\,
	combout => \spi|Add0~10_combout\,
	cout => \spi|Add0~11\);

-- Location: LCCOMB_X37_Y6_N24
\spi|bit_counter[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[5]~26_combout\ = (\spi|bit_counter[18]~2_combout\ & (\spi|LessThan0~1_combout\ & ((\spi|Add0~10_combout\)))) # (!\spi|bit_counter[18]~2_combout\ & ((\spi|bit_counter\(5)) # ((\spi|LessThan0~1_combout\ & \spi|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter[18]~2_combout\,
	datab => \spi|LessThan0~1_combout\,
	datac => \spi|bit_counter\(5),
	datad => \spi|Add0~10_combout\,
	combout => \spi|bit_counter[5]~26_combout\);

-- Location: FF_X37_Y6_N25
\spi|bit_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[5]~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(5));

-- Location: LCCOMB_X38_Y7_N12
\spi|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~12_combout\ = (\spi|bit_counter\(6) & (\spi|Add0~11\ $ (GND))) # (!\spi|bit_counter\(6) & (!\spi|Add0~11\ & VCC))
-- \spi|Add0~13\ = CARRY((\spi|bit_counter\(6) & !\spi|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(6),
	datad => VCC,
	cin => \spi|Add0~11\,
	combout => \spi|Add0~12_combout\,
	cout => \spi|Add0~13\);

-- Location: LCCOMB_X38_Y7_N14
\spi|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~14_combout\ = (\spi|bit_counter\(7) & (!\spi|Add0~13\)) # (!\spi|bit_counter\(7) & ((\spi|Add0~13\) # (GND)))
-- \spi|Add0~15\ = CARRY((!\spi|Add0~13\) # (!\spi|bit_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_counter\(7),
	datad => VCC,
	cin => \spi|Add0~13\,
	combout => \spi|Add0~14_combout\,
	cout => \spi|Add0~15\);

-- Location: LCCOMB_X37_Y6_N14
\spi|bit_counter[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[7]~24_combout\ = (\spi|bit_counter[18]~2_combout\ & (\spi|LessThan0~1_combout\ & ((\spi|Add0~14_combout\)))) # (!\spi|bit_counter[18]~2_combout\ & ((\spi|bit_counter\(7)) # ((\spi|LessThan0~1_combout\ & \spi|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter[18]~2_combout\,
	datab => \spi|LessThan0~1_combout\,
	datac => \spi|bit_counter\(7),
	datad => \spi|Add0~14_combout\,
	combout => \spi|bit_counter[7]~24_combout\);

-- Location: FF_X37_Y6_N15
\spi|bit_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[7]~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(7));

-- Location: LCCOMB_X38_Y7_N16
\spi|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~16_combout\ = (\spi|bit_counter\(8) & (\spi|Add0~15\ $ (GND))) # (!\spi|bit_counter\(8) & (!\spi|Add0~15\ & VCC))
-- \spi|Add0~17\ = CARRY((\spi|bit_counter\(8) & !\spi|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(8),
	datad => VCC,
	cin => \spi|Add0~15\,
	combout => \spi|Add0~16_combout\,
	cout => \spi|Add0~17\);

-- Location: LCCOMB_X37_Y6_N16
\spi|bit_counter[8]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[8]~23_combout\ = (\spi|bit_counter[18]~2_combout\ & (\spi|LessThan0~1_combout\ & ((\spi|Add0~16_combout\)))) # (!\spi|bit_counter[18]~2_combout\ & ((\spi|bit_counter\(8)) # ((\spi|LessThan0~1_combout\ & \spi|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter[18]~2_combout\,
	datab => \spi|LessThan0~1_combout\,
	datac => \spi|bit_counter\(8),
	datad => \spi|Add0~16_combout\,
	combout => \spi|bit_counter[8]~23_combout\);

-- Location: FF_X37_Y6_N17
\spi|bit_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[8]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(8));

-- Location: LCCOMB_X38_Y7_N18
\spi|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~18_combout\ = (\spi|bit_counter\(9) & (!\spi|Add0~17\)) # (!\spi|bit_counter\(9) & ((\spi|Add0~17\) # (GND)))
-- \spi|Add0~19\ = CARRY((!\spi|Add0~17\) # (!\spi|bit_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(9),
	datad => VCC,
	cin => \spi|Add0~17\,
	combout => \spi|Add0~18_combout\,
	cout => \spi|Add0~19\);

-- Location: LCCOMB_X37_Y6_N6
\spi|bit_counter[9]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[9]~22_combout\ = (\spi|LessThan0~1_combout\ & ((\spi|Add0~18_combout\) # ((!\spi|bit_counter[18]~2_combout\ & \spi|bit_counter\(9))))) # (!\spi|LessThan0~1_combout\ & (!\spi|bit_counter[18]~2_combout\ & (\spi|bit_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan0~1_combout\,
	datab => \spi|bit_counter[18]~2_combout\,
	datac => \spi|bit_counter\(9),
	datad => \spi|Add0~18_combout\,
	combout => \spi|bit_counter[9]~22_combout\);

-- Location: FF_X37_Y6_N7
\spi|bit_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[9]~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(9));

-- Location: LCCOMB_X38_Y7_N20
\spi|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~20_combout\ = (\spi|bit_counter\(10) & (\spi|Add0~19\ $ (GND))) # (!\spi|bit_counter\(10) & (!\spi|Add0~19\ & VCC))
-- \spi|Add0~21\ = CARRY((\spi|bit_counter\(10) & !\spi|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_counter\(10),
	datad => VCC,
	cin => \spi|Add0~19\,
	combout => \spi|Add0~20_combout\,
	cout => \spi|Add0~21\);

-- Location: LCCOMB_X37_Y6_N12
\spi|bit_counter[10]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[10]~21_combout\ = (\spi|Add0~20_combout\ & ((\spi|LessThan0~1_combout\) # ((!\spi|bit_counter[18]~2_combout\ & \spi|bit_counter\(10))))) # (!\spi|Add0~20_combout\ & (!\spi|bit_counter[18]~2_combout\ & (\spi|bit_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add0~20_combout\,
	datab => \spi|bit_counter[18]~2_combout\,
	datac => \spi|bit_counter\(10),
	datad => \spi|LessThan0~1_combout\,
	combout => \spi|bit_counter[10]~21_combout\);

-- Location: FF_X37_Y6_N13
\spi|bit_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[10]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(10));

-- Location: LCCOMB_X38_Y7_N22
\spi|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~22_combout\ = (\spi|bit_counter\(11) & (!\spi|Add0~21\)) # (!\spi|bit_counter\(11) & ((\spi|Add0~21\) # (GND)))
-- \spi|Add0~23\ = CARRY((!\spi|Add0~21\) # (!\spi|bit_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(11),
	datad => VCC,
	cin => \spi|Add0~21\,
	combout => \spi|Add0~22_combout\,
	cout => \spi|Add0~23\);

-- Location: LCCOMB_X37_Y6_N8
\spi|bit_counter[11]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[11]~20_combout\ = (\spi|Add0~22_combout\ & ((\spi|LessThan0~1_combout\) # ((!\spi|bit_counter[18]~2_combout\ & \spi|bit_counter\(11))))) # (!\spi|Add0~22_combout\ & (!\spi|bit_counter[18]~2_combout\ & (\spi|bit_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add0~22_combout\,
	datab => \spi|bit_counter[18]~2_combout\,
	datac => \spi|bit_counter\(11),
	datad => \spi|LessThan0~1_combout\,
	combout => \spi|bit_counter[11]~20_combout\);

-- Location: FF_X37_Y6_N9
\spi|bit_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[11]~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(11));

-- Location: LCCOMB_X38_Y7_N24
\spi|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~24_combout\ = (\spi|bit_counter\(12) & (\spi|Add0~23\ $ (GND))) # (!\spi|bit_counter\(12) & (!\spi|Add0~23\ & VCC))
-- \spi|Add0~25\ = CARRY((\spi|bit_counter\(12) & !\spi|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_counter\(12),
	datad => VCC,
	cin => \spi|Add0~23\,
	combout => \spi|Add0~24_combout\,
	cout => \spi|Add0~25\);

-- Location: LCCOMB_X37_Y6_N30
\spi|bit_counter[12]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[12]~19_combout\ = (\spi|Add0~24_combout\ & ((\spi|LessThan0~1_combout\) # ((!\spi|bit_counter[18]~2_combout\ & \spi|bit_counter\(12))))) # (!\spi|Add0~24_combout\ & (!\spi|bit_counter[18]~2_combout\ & (\spi|bit_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add0~24_combout\,
	datab => \spi|bit_counter[18]~2_combout\,
	datac => \spi|bit_counter\(12),
	datad => \spi|LessThan0~1_combout\,
	combout => \spi|bit_counter[12]~19_combout\);

-- Location: FF_X37_Y6_N31
\spi|bit_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[12]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(12));

-- Location: LCCOMB_X38_Y7_N26
\spi|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~26_combout\ = (\spi|bit_counter\(13) & (!\spi|Add0~25\)) # (!\spi|bit_counter\(13) & ((\spi|Add0~25\) # (GND)))
-- \spi|Add0~27\ = CARRY((!\spi|Add0~25\) # (!\spi|bit_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_counter\(13),
	datad => VCC,
	cin => \spi|Add0~25\,
	combout => \spi|Add0~26_combout\,
	cout => \spi|Add0~27\);

-- Location: LCCOMB_X37_Y6_N20
\spi|bit_counter[13]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[13]~18_combout\ = (\spi|Add0~26_combout\ & ((\spi|LessThan0~1_combout\) # ((\spi|bit_counter\(13) & !\spi|bit_counter[18]~2_combout\)))) # (!\spi|Add0~26_combout\ & (((\spi|bit_counter\(13) & !\spi|bit_counter[18]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add0~26_combout\,
	datab => \spi|LessThan0~1_combout\,
	datac => \spi|bit_counter\(13),
	datad => \spi|bit_counter[18]~2_combout\,
	combout => \spi|bit_counter[13]~18_combout\);

-- Location: FF_X37_Y6_N21
\spi|bit_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[13]~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(13));

-- Location: LCCOMB_X38_Y7_N28
\spi|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~28_combout\ = (\spi|bit_counter\(14) & (\spi|Add0~27\ $ (GND))) # (!\spi|bit_counter\(14) & (!\spi|Add0~27\ & VCC))
-- \spi|Add0~29\ = CARRY((\spi|bit_counter\(14) & !\spi|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(14),
	datad => VCC,
	cin => \spi|Add0~27\,
	combout => \spi|Add0~28_combout\,
	cout => \spi|Add0~29\);

-- Location: LCCOMB_X37_Y6_N2
\spi|bit_counter[14]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[14]~17_combout\ = (\spi|Add0~28_combout\ & ((\spi|LessThan0~1_combout\) # ((!\spi|bit_counter[18]~2_combout\ & \spi|bit_counter\(14))))) # (!\spi|Add0~28_combout\ & (!\spi|bit_counter[18]~2_combout\ & (\spi|bit_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add0~28_combout\,
	datab => \spi|bit_counter[18]~2_combout\,
	datac => \spi|bit_counter\(14),
	datad => \spi|LessThan0~1_combout\,
	combout => \spi|bit_counter[14]~17_combout\);

-- Location: FF_X37_Y6_N3
\spi|bit_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[14]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(14));

-- Location: LCCOMB_X38_Y7_N30
\spi|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~30_combout\ = (\spi|bit_counter\(15) & (!\spi|Add0~29\)) # (!\spi|bit_counter\(15) & ((\spi|Add0~29\) # (GND)))
-- \spi|Add0~31\ = CARRY((!\spi|Add0~29\) # (!\spi|bit_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(15),
	datad => VCC,
	cin => \spi|Add0~29\,
	combout => \spi|Add0~30_combout\,
	cout => \spi|Add0~31\);

-- Location: LCCOMB_X35_Y6_N30
\spi|bit_counter[15]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[15]~16_combout\ = (\spi|LessThan0~1_combout\ & ((\spi|Add0~30_combout\) # ((!\spi|bit_counter[18]~2_combout\ & \spi|bit_counter\(15))))) # (!\spi|LessThan0~1_combout\ & (!\spi|bit_counter[18]~2_combout\ & (\spi|bit_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan0~1_combout\,
	datab => \spi|bit_counter[18]~2_combout\,
	datac => \spi|bit_counter\(15),
	datad => \spi|Add0~30_combout\,
	combout => \spi|bit_counter[15]~16_combout\);

-- Location: FF_X35_Y6_N31
\spi|bit_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[15]~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(15));

-- Location: LCCOMB_X38_Y6_N0
\spi|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~32_combout\ = (\spi|bit_counter\(16) & (\spi|Add0~31\ $ (GND))) # (!\spi|bit_counter\(16) & (!\spi|Add0~31\ & VCC))
-- \spi|Add0~33\ = CARRY((\spi|bit_counter\(16) & !\spi|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(16),
	datad => VCC,
	cin => \spi|Add0~31\,
	combout => \spi|Add0~32_combout\,
	cout => \spi|Add0~33\);

-- Location: LCCOMB_X35_Y6_N16
\spi|bit_counter[16]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[16]~15_combout\ = (\spi|LessThan0~1_combout\ & ((\spi|Add0~32_combout\) # ((!\spi|bit_counter[18]~2_combout\ & \spi|bit_counter\(16))))) # (!\spi|LessThan0~1_combout\ & (!\spi|bit_counter[18]~2_combout\ & (\spi|bit_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan0~1_combout\,
	datab => \spi|bit_counter[18]~2_combout\,
	datac => \spi|bit_counter\(16),
	datad => \spi|Add0~32_combout\,
	combout => \spi|bit_counter[16]~15_combout\);

-- Location: FF_X35_Y6_N17
\spi|bit_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[16]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(16));

-- Location: LCCOMB_X38_Y6_N2
\spi|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~34_combout\ = (\spi|bit_counter\(17) & (!\spi|Add0~33\)) # (!\spi|bit_counter\(17) & ((\spi|Add0~33\) # (GND)))
-- \spi|Add0~35\ = CARRY((!\spi|Add0~33\) # (!\spi|bit_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_counter\(17),
	datad => VCC,
	cin => \spi|Add0~33\,
	combout => \spi|Add0~34_combout\,
	cout => \spi|Add0~35\);

-- Location: LCCOMB_X35_Y6_N10
\spi|bit_counter[17]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[17]~14_combout\ = (\spi|LessThan0~1_combout\ & ((\spi|Add0~34_combout\) # ((!\spi|bit_counter[18]~2_combout\ & \spi|bit_counter\(17))))) # (!\spi|LessThan0~1_combout\ & (!\spi|bit_counter[18]~2_combout\ & (\spi|bit_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan0~1_combout\,
	datab => \spi|bit_counter[18]~2_combout\,
	datac => \spi|bit_counter\(17),
	datad => \spi|Add0~34_combout\,
	combout => \spi|bit_counter[17]~14_combout\);

-- Location: FF_X35_Y6_N11
\spi|bit_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[17]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(17));

-- Location: LCCOMB_X38_Y6_N4
\spi|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~36_combout\ = (\spi|bit_counter\(18) & (\spi|Add0~35\ $ (GND))) # (!\spi|bit_counter\(18) & (!\spi|Add0~35\ & VCC))
-- \spi|Add0~37\ = CARRY((\spi|bit_counter\(18) & !\spi|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(18),
	datad => VCC,
	cin => \spi|Add0~35\,
	combout => \spi|Add0~36_combout\,
	cout => \spi|Add0~37\);

-- Location: LCCOMB_X35_Y6_N12
\spi|bit_counter[18]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[18]~13_combout\ = (\spi|LessThan0~1_combout\ & ((\spi|Add0~36_combout\) # ((\spi|bit_counter\(18) & !\spi|bit_counter[18]~2_combout\)))) # (!\spi|LessThan0~1_combout\ & (((\spi|bit_counter\(18) & !\spi|bit_counter[18]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan0~1_combout\,
	datab => \spi|Add0~36_combout\,
	datac => \spi|bit_counter\(18),
	datad => \spi|bit_counter[18]~2_combout\,
	combout => \spi|bit_counter[18]~13_combout\);

-- Location: FF_X35_Y6_N13
\spi|bit_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[18]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(18));

-- Location: LCCOMB_X38_Y6_N6
\spi|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~38_combout\ = (\spi|bit_counter\(19) & (!\spi|Add0~37\)) # (!\spi|bit_counter\(19) & ((\spi|Add0~37\) # (GND)))
-- \spi|Add0~39\ = CARRY((!\spi|Add0~37\) # (!\spi|bit_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_counter\(19),
	datad => VCC,
	cin => \spi|Add0~37\,
	combout => \spi|Add0~38_combout\,
	cout => \spi|Add0~39\);

-- Location: LCCOMB_X36_Y6_N16
\spi|bit_counter[19]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[19]~12_combout\ = (\spi|bit_counter[18]~2_combout\ & (\spi|LessThan0~1_combout\ & ((\spi|Add0~38_combout\)))) # (!\spi|bit_counter[18]~2_combout\ & ((\spi|bit_counter\(19)) # ((\spi|LessThan0~1_combout\ & \spi|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter[18]~2_combout\,
	datab => \spi|LessThan0~1_combout\,
	datac => \spi|bit_counter\(19),
	datad => \spi|Add0~38_combout\,
	combout => \spi|bit_counter[19]~12_combout\);

-- Location: FF_X36_Y6_N17
\spi|bit_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[19]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(19));

-- Location: LCCOMB_X38_Y6_N8
\spi|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~40_combout\ = (\spi|bit_counter\(20) & (\spi|Add0~39\ $ (GND))) # (!\spi|bit_counter\(20) & (!\spi|Add0~39\ & VCC))
-- \spi|Add0~41\ = CARRY((\spi|bit_counter\(20) & !\spi|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(20),
	datad => VCC,
	cin => \spi|Add0~39\,
	combout => \spi|Add0~40_combout\,
	cout => \spi|Add0~41\);

-- Location: LCCOMB_X36_Y6_N26
\spi|bit_counter[20]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[20]~11_combout\ = (\spi|bit_counter[18]~2_combout\ & (\spi|LessThan0~1_combout\ & ((\spi|Add0~40_combout\)))) # (!\spi|bit_counter[18]~2_combout\ & ((\spi|bit_counter\(20)) # ((\spi|LessThan0~1_combout\ & \spi|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter[18]~2_combout\,
	datab => \spi|LessThan0~1_combout\,
	datac => \spi|bit_counter\(20),
	datad => \spi|Add0~40_combout\,
	combout => \spi|bit_counter[20]~11_combout\);

-- Location: FF_X36_Y6_N27
\spi|bit_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[20]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(20));

-- Location: LCCOMB_X38_Y6_N10
\spi|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~42_combout\ = (\spi|bit_counter\(21) & (!\spi|Add0~41\)) # (!\spi|bit_counter\(21) & ((\spi|Add0~41\) # (GND)))
-- \spi|Add0~43\ = CARRY((!\spi|Add0~41\) # (!\spi|bit_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(21),
	datad => VCC,
	cin => \spi|Add0~41\,
	combout => \spi|Add0~42_combout\,
	cout => \spi|Add0~43\);

-- Location: LCCOMB_X36_Y6_N12
\spi|bit_counter[21]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[21]~10_combout\ = (\spi|bit_counter[18]~2_combout\ & (\spi|LessThan0~1_combout\ & ((\spi|Add0~42_combout\)))) # (!\spi|bit_counter[18]~2_combout\ & ((\spi|bit_counter\(21)) # ((\spi|LessThan0~1_combout\ & \spi|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter[18]~2_combout\,
	datab => \spi|LessThan0~1_combout\,
	datac => \spi|bit_counter\(21),
	datad => \spi|Add0~42_combout\,
	combout => \spi|bit_counter[21]~10_combout\);

-- Location: FF_X36_Y6_N13
\spi|bit_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[21]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(21));

-- Location: LCCOMB_X38_Y6_N12
\spi|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~44_combout\ = (\spi|bit_counter\(22) & (\spi|Add0~43\ $ (GND))) # (!\spi|bit_counter\(22) & (!\spi|Add0~43\ & VCC))
-- \spi|Add0~45\ = CARRY((\spi|bit_counter\(22) & !\spi|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_counter\(22),
	datad => VCC,
	cin => \spi|Add0~43\,
	combout => \spi|Add0~44_combout\,
	cout => \spi|Add0~45\);

-- Location: LCCOMB_X36_Y6_N14
\spi|bit_counter[22]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[22]~9_combout\ = (\spi|bit_counter[18]~2_combout\ & (\spi|LessThan0~1_combout\ & ((\spi|Add0~44_combout\)))) # (!\spi|bit_counter[18]~2_combout\ & ((\spi|bit_counter\(22)) # ((\spi|LessThan0~1_combout\ & \spi|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter[18]~2_combout\,
	datab => \spi|LessThan0~1_combout\,
	datac => \spi|bit_counter\(22),
	datad => \spi|Add0~44_combout\,
	combout => \spi|bit_counter[22]~9_combout\);

-- Location: FF_X36_Y6_N15
\spi|bit_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[22]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(22));

-- Location: LCCOMB_X38_Y6_N14
\spi|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~46_combout\ = (\spi|bit_counter\(23) & (!\spi|Add0~45\)) # (!\spi|bit_counter\(23) & ((\spi|Add0~45\) # (GND)))
-- \spi|Add0~47\ = CARRY((!\spi|Add0~45\) # (!\spi|bit_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(23),
	datad => VCC,
	cin => \spi|Add0~45\,
	combout => \spi|Add0~46_combout\,
	cout => \spi|Add0~47\);

-- Location: LCCOMB_X36_Y6_N30
\spi|bit_counter[23]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[23]~8_combout\ = (\spi|bit_counter[18]~2_combout\ & (\spi|LessThan0~1_combout\ & ((\spi|Add0~46_combout\)))) # (!\spi|bit_counter[18]~2_combout\ & ((\spi|bit_counter\(23)) # ((\spi|LessThan0~1_combout\ & \spi|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter[18]~2_combout\,
	datab => \spi|LessThan0~1_combout\,
	datac => \spi|bit_counter\(23),
	datad => \spi|Add0~46_combout\,
	combout => \spi|bit_counter[23]~8_combout\);

-- Location: FF_X36_Y6_N31
\spi|bit_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[23]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(23));

-- Location: LCCOMB_X38_Y6_N16
\spi|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~48_combout\ = (\spi|bit_counter\(24) & (\spi|Add0~47\ $ (GND))) # (!\spi|bit_counter\(24) & (!\spi|Add0~47\ & VCC))
-- \spi|Add0~49\ = CARRY((\spi|bit_counter\(24) & !\spi|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(24),
	datad => VCC,
	cin => \spi|Add0~47\,
	combout => \spi|Add0~48_combout\,
	cout => \spi|Add0~49\);

-- Location: LCCOMB_X36_Y6_N28
\spi|bit_counter[24]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[24]~7_combout\ = (\spi|bit_counter[18]~2_combout\ & (\spi|LessThan0~1_combout\ & ((\spi|Add0~48_combout\)))) # (!\spi|bit_counter[18]~2_combout\ & ((\spi|bit_counter\(24)) # ((\spi|LessThan0~1_combout\ & \spi|Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter[18]~2_combout\,
	datab => \spi|LessThan0~1_combout\,
	datac => \spi|bit_counter\(24),
	datad => \spi|Add0~48_combout\,
	combout => \spi|bit_counter[24]~7_combout\);

-- Location: FF_X36_Y6_N29
\spi|bit_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[24]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(24));

-- Location: LCCOMB_X38_Y6_N18
\spi|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~50_combout\ = (\spi|bit_counter\(25) & (!\spi|Add0~49\)) # (!\spi|bit_counter\(25) & ((\spi|Add0~49\) # (GND)))
-- \spi|Add0~51\ = CARRY((!\spi|Add0~49\) # (!\spi|bit_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_counter\(25),
	datad => VCC,
	cin => \spi|Add0~49\,
	combout => \spi|Add0~50_combout\,
	cout => \spi|Add0~51\);

-- Location: LCCOMB_X36_Y6_N6
\spi|bit_counter[25]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[25]~6_combout\ = (\spi|bit_counter[18]~2_combout\ & (\spi|LessThan0~1_combout\ & ((\spi|Add0~50_combout\)))) # (!\spi|bit_counter[18]~2_combout\ & ((\spi|bit_counter\(25)) # ((\spi|LessThan0~1_combout\ & \spi|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter[18]~2_combout\,
	datab => \spi|LessThan0~1_combout\,
	datac => \spi|bit_counter\(25),
	datad => \spi|Add0~50_combout\,
	combout => \spi|bit_counter[25]~6_combout\);

-- Location: FF_X36_Y6_N7
\spi|bit_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[25]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(25));

-- Location: LCCOMB_X38_Y6_N20
\spi|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~52_combout\ = (\spi|bit_counter\(26) & (\spi|Add0~51\ $ (GND))) # (!\spi|bit_counter\(26) & (!\spi|Add0~51\ & VCC))
-- \spi|Add0~53\ = CARRY((\spi|bit_counter\(26) & !\spi|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(26),
	datad => VCC,
	cin => \spi|Add0~51\,
	combout => \spi|Add0~52_combout\,
	cout => \spi|Add0~53\);

-- Location: LCCOMB_X36_Y6_N24
\spi|bit_counter[26]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[26]~5_combout\ = (\spi|Add0~52_combout\ & ((\spi|LessThan0~1_combout\) # ((\spi|bit_counter\(26) & !\spi|bit_counter[18]~2_combout\)))) # (!\spi|Add0~52_combout\ & (((\spi|bit_counter\(26) & !\spi|bit_counter[18]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add0~52_combout\,
	datab => \spi|LessThan0~1_combout\,
	datac => \spi|bit_counter\(26),
	datad => \spi|bit_counter[18]~2_combout\,
	combout => \spi|bit_counter[26]~5_combout\);

-- Location: FF_X36_Y6_N25
\spi|bit_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[26]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(26));

-- Location: LCCOMB_X38_Y6_N22
\spi|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~54_combout\ = (\spi|bit_counter\(27) & (!\spi|Add0~53\)) # (!\spi|bit_counter\(27) & ((\spi|Add0~53\) # (GND)))
-- \spi|Add0~55\ = CARRY((!\spi|Add0~53\) # (!\spi|bit_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(27),
	datad => VCC,
	cin => \spi|Add0~53\,
	combout => \spi|Add0~54_combout\,
	cout => \spi|Add0~55\);

-- Location: LCCOMB_X36_Y6_N0
\spi|bit_counter[27]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[27]~4_combout\ = (\spi|bit_counter[18]~2_combout\ & (\spi|LessThan0~1_combout\ & ((\spi|Add0~54_combout\)))) # (!\spi|bit_counter[18]~2_combout\ & ((\spi|bit_counter\(27)) # ((\spi|LessThan0~1_combout\ & \spi|Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter[18]~2_combout\,
	datab => \spi|LessThan0~1_combout\,
	datac => \spi|bit_counter\(27),
	datad => \spi|Add0~54_combout\,
	combout => \spi|bit_counter[27]~4_combout\);

-- Location: FF_X36_Y6_N1
\spi|bit_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[27]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(27));

-- Location: LCCOMB_X38_Y6_N24
\spi|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~56_combout\ = (\spi|bit_counter\(28) & (\spi|Add0~55\ $ (GND))) # (!\spi|bit_counter\(28) & (!\spi|Add0~55\ & VCC))
-- \spi|Add0~57\ = CARRY((\spi|bit_counter\(28) & !\spi|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_counter\(28),
	datad => VCC,
	cin => \spi|Add0~55\,
	combout => \spi|Add0~56_combout\,
	cout => \spi|Add0~57\);

-- Location: LCCOMB_X36_Y6_N18
\spi|bit_counter[28]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[28]~3_combout\ = (\spi|bit_counter[18]~2_combout\ & (\spi|LessThan0~1_combout\ & ((\spi|Add0~56_combout\)))) # (!\spi|bit_counter[18]~2_combout\ & ((\spi|bit_counter\(28)) # ((\spi|LessThan0~1_combout\ & \spi|Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter[18]~2_combout\,
	datab => \spi|LessThan0~1_combout\,
	datac => \spi|bit_counter\(28),
	datad => \spi|Add0~56_combout\,
	combout => \spi|bit_counter[28]~3_combout\);

-- Location: FF_X36_Y6_N19
\spi|bit_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[28]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(28));

-- Location: LCCOMB_X38_Y6_N26
\spi|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~58_combout\ = (\spi|bit_counter\(29) & (!\spi|Add0~57\)) # (!\spi|bit_counter\(29) & ((\spi|Add0~57\) # (GND)))
-- \spi|Add0~59\ = CARRY((!\spi|Add0~57\) # (!\spi|bit_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(29),
	datad => VCC,
	cin => \spi|Add0~57\,
	combout => \spi|Add0~58_combout\,
	cout => \spi|Add0~59\);

-- Location: LCCOMB_X36_Y6_N8
\spi|bit_counter[29]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[29]~1_combout\ = (\spi|LessThan0~1_combout\ & (((\spi|Add0~58_combout\)))) # (!\spi|LessThan0~1_combout\ & (\spi|Equal16~0_combout\ & (\spi|bit_counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal16~0_combout\,
	datab => \spi|LessThan0~1_combout\,
	datac => \spi|bit_counter\(29),
	datad => \spi|Add0~58_combout\,
	combout => \spi|bit_counter[29]~1_combout\);

-- Location: FF_X36_Y6_N9
\spi|bit_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[29]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(29));

-- Location: LCCOMB_X38_Y6_N28
\spi|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~60_combout\ = (\spi|bit_counter\(30) & (\spi|Add0~59\ $ (GND))) # (!\spi|bit_counter\(30) & (!\spi|Add0~59\ & VCC))
-- \spi|Add0~61\ = CARRY((\spi|bit_counter\(30) & !\spi|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(30),
	datad => VCC,
	cin => \spi|Add0~59\,
	combout => \spi|Add0~60_combout\,
	cout => \spi|Add0~61\);

-- Location: LCCOMB_X36_Y6_N22
\spi|bit_counter[30]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[30]~0_combout\ = (\spi|LessThan0~1_combout\ & (((\spi|Add0~60_combout\)))) # (!\spi|LessThan0~1_combout\ & (\spi|Equal16~0_combout\ & (\spi|bit_counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal16~0_combout\,
	datab => \spi|LessThan0~1_combout\,
	datac => \spi|bit_counter\(30),
	datad => \spi|Add0~60_combout\,
	combout => \spi|bit_counter[30]~0_combout\);

-- Location: FF_X36_Y6_N23
\spi|bit_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[30]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(30));

-- Location: LCCOMB_X38_Y6_N30
\spi|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~62_combout\ = \spi|bit_counter\(31) $ (\spi|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(31),
	cin => \spi|Add0~61\,
	combout => \spi|Add0~62_combout\);

-- Location: LCCOMB_X37_Y6_N0
\spi|bit_counter[31]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[31]~27_combout\ = (\spi|Add0~62_combout\ & \spi|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Add0~62_combout\,
	datad => \spi|LessThan0~1_combout\,
	combout => \spi|bit_counter[31]~27_combout\);

-- Location: FF_X37_Y6_N1
\spi|bit_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[31]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(31));

-- Location: LCCOMB_X36_Y6_N4
\spi|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal2~1_combout\ = (!\spi|bit_counter\(25) & (!\spi|bit_counter\(24) & (!\spi|bit_counter\(23) & !\spi|bit_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(25),
	datab => \spi|bit_counter\(24),
	datac => \spi|bit_counter\(23),
	datad => \spi|bit_counter\(26),
	combout => \spi|Equal2~1_combout\);

-- Location: LCCOMB_X35_Y6_N8
\spi|Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal2~3_combout\ = (!\spi|bit_counter\(17) & (!\spi|bit_counter\(16) & (!\spi|bit_counter\(15) & !\spi|bit_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(17),
	datab => \spi|bit_counter\(16),
	datac => \spi|bit_counter\(15),
	datad => \spi|bit_counter\(18),
	combout => \spi|Equal2~3_combout\);

-- Location: LCCOMB_X36_Y6_N10
\spi|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal2~0_combout\ = (!\spi|bit_counter\(30) & (!\spi|bit_counter\(27) & (!\spi|bit_counter\(29) & !\spi|bit_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(30),
	datab => \spi|bit_counter\(27),
	datac => \spi|bit_counter\(29),
	datad => \spi|bit_counter\(28),
	combout => \spi|Equal2~0_combout\);

-- Location: LCCOMB_X36_Y6_N2
\spi|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal2~2_combout\ = (!\spi|bit_counter\(20) & (!\spi|bit_counter\(19) & (!\spi|bit_counter\(22) & !\spi|bit_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(20),
	datab => \spi|bit_counter\(19),
	datac => \spi|bit_counter\(22),
	datad => \spi|bit_counter\(21),
	combout => \spi|Equal2~2_combout\);

-- Location: LCCOMB_X35_Y6_N26
\spi|Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal2~4_combout\ = (\spi|Equal2~1_combout\ & (\spi|Equal2~3_combout\ & (\spi|Equal2~0_combout\ & \spi|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~1_combout\,
	datab => \spi|Equal2~3_combout\,
	datac => \spi|Equal2~0_combout\,
	datad => \spi|Equal2~2_combout\,
	combout => \spi|Equal2~4_combout\);

-- Location: LCCOMB_X35_Y6_N28
\spi|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Selector1~0_combout\ = (!\spi|bit_counter\(31) & (\spi|Equal2~4_combout\ & \spi|Equal2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_counter\(31),
	datac => \spi|Equal2~4_combout\,
	datad => \spi|Equal2~7_combout\,
	combout => \spi|Selector1~0_combout\);

-- Location: LCCOMB_X32_Y6_N6
\spi|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Decoder0~2_combout\ = (!\spi|bit_counter\(1) & (!\spi|bit_counter\(2) & (\spi|bit_counter\(0) & !\spi|bit_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(1),
	datab => \spi|bit_counter\(2),
	datac => \spi|bit_counter\(0),
	datad => \spi|bit_counter\(3),
	combout => \spi|Decoder0~2_combout\);

-- Location: LCCOMB_X33_Y6_N10
\spi|bit_counter[18]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[18]~2_combout\ = (\spi|LessThan0~1_combout\) # ((\spi|Selector1~0_combout\ & (\spi|Decoder0~2_combout\ & \spi|bit_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Selector1~0_combout\,
	datab => \spi|Decoder0~2_combout\,
	datac => \spi|bit_counter\(4),
	datad => \spi|LessThan0~1_combout\,
	combout => \spi|bit_counter[18]~2_combout\);

-- Location: LCCOMB_X37_Y6_N22
\spi|bit_counter[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter[6]~25_combout\ = (\spi|bit_counter[18]~2_combout\ & (\spi|LessThan0~1_combout\ & ((\spi|Add0~12_combout\)))) # (!\spi|bit_counter[18]~2_combout\ & ((\spi|bit_counter\(6)) # ((\spi|LessThan0~1_combout\ & \spi|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter[18]~2_combout\,
	datab => \spi|LessThan0~1_combout\,
	datac => \spi|bit_counter\(6),
	datad => \spi|Add0~12_combout\,
	combout => \spi|bit_counter[6]~25_combout\);

-- Location: FF_X37_Y6_N23
\spi|bit_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter[6]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(6));

-- Location: LCCOMB_X37_Y6_N4
\spi|Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal2~6_combout\ = (!\spi|bit_counter\(10) & (!\spi|bit_counter\(8) & (!\spi|bit_counter\(7) & !\spi|bit_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(10),
	datab => \spi|bit_counter\(8),
	datac => \spi|bit_counter\(7),
	datad => \spi|bit_counter\(9),
	combout => \spi|Equal2~6_combout\);

-- Location: LCCOMB_X37_Y6_N18
\spi|Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal2~5_combout\ = (!\spi|bit_counter\(12) & (!\spi|bit_counter\(14) & (!\spi|bit_counter\(11) & !\spi|bit_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(12),
	datab => \spi|bit_counter\(14),
	datac => \spi|bit_counter\(11),
	datad => \spi|bit_counter\(13),
	combout => \spi|Equal2~5_combout\);

-- Location: LCCOMB_X37_Y6_N26
\spi|Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal2~7_combout\ = (!\spi|bit_counter\(6) & (!\spi|bit_counter\(5) & (\spi|Equal2~6_combout\ & \spi|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(6),
	datab => \spi|bit_counter\(5),
	datac => \spi|Equal2~6_combout\,
	datad => \spi|Equal2~5_combout\,
	combout => \spi|Equal2~7_combout\);

-- Location: LCCOMB_X34_Y6_N26
\spi|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|LessThan0~0_combout\ = (\spi|bit_counter\(4) & ((\spi|bit_counter\(0)) # (!\spi|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_counter\(0),
	datac => \spi|Decoder0~0_combout\,
	datad => \spi|bit_counter\(4),
	combout => \spi|LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y6_N28
\spi|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|LessThan0~1_combout\ = (\spi|bit_counter\(31)) # ((\spi|Equal2~7_combout\ & (\spi|Equal2~4_combout\ & !\spi|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal2~7_combout\,
	datab => \spi|bit_counter\(31),
	datac => \spi|Equal2~4_combout\,
	datad => \spi|LessThan0~0_combout\,
	combout => \spi|LessThan0~1_combout\);

-- Location: LCCOMB_X38_Y7_N0
\spi|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~0_combout\ = \spi|bit_counter\(0) $ (VCC)
-- \spi|Add0~1\ = CARRY(\spi|bit_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_counter\(0),
	datad => VCC,
	combout => \spi|Add0~0_combout\,
	cout => \spi|Add0~1\);

-- Location: LCCOMB_X37_Y6_N10
\spi|bit_counter~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter~31_combout\ = (\spi|LessThan0~1_combout\ & \spi|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|LessThan0~1_combout\,
	datad => \spi|Add0~0_combout\,
	combout => \spi|bit_counter~31_combout\);

-- Location: FF_X37_Y6_N11
\spi|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \spi|bit_counter[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(0));

-- Location: LCCOMB_X33_Y6_N6
\spi|bit_counter~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|bit_counter~30_combout\ = (\spi|Add0~2_combout\ & \spi|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Add0~2_combout\,
	datad => \spi|LessThan0~1_combout\,
	combout => \spi|bit_counter~30_combout\);

-- Location: FF_X33_Y6_N7
\spi|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|bit_counter~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \spi|bit_counter[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_counter\(1));

-- Location: LCCOMB_X34_Y6_N0
\spi|Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal2~8_combout\ = (!\spi|bit_counter\(3) & (\spi|Selector1~0_combout\ & !\spi|bit_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(3),
	datab => \spi|Selector1~0_combout\,
	datad => \spi|bit_counter\(4),
	combout => \spi|Equal2~8_combout\);

-- Location: LCCOMB_X33_Y6_N24
\spi|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|WideOr0~combout\ = ((\spi|bit_counter\(1) & (\spi|bit_counter\(2))) # (!\spi|bit_counter\(1) & ((\spi|bit_counter\(0)) # (!\spi|bit_counter\(2))))) # (!\spi|Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(1),
	datab => \spi|bit_counter\(2),
	datac => \spi|bit_counter\(0),
	datad => \spi|Equal2~8_combout\,
	combout => \spi|WideOr0~combout\);

-- Location: FF_X33_Y6_N25
\spi|mosia_signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|WideOr0~combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|mosia_signal~q\);

-- Location: IOIBUF_X60_Y8_N8
\miso~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_miso,
	o => \miso~input_o\);

-- Location: LCCOMB_X34_Y6_N30
\spi|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Decoder0~4_combout\ = (\spi|bit_counter\(2) & \spi|bit_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(2),
	datac => \spi|bit_counter\(1),
	combout => \spi|Decoder0~4_combout\);

-- Location: LCCOMB_X33_Y6_N4
\spi|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|process_0~0_combout\ = (\spi|bit_counter\(3) & (((\spi|bit_counter\(4))))) # (!\spi|bit_counter\(3) & ((\spi|bit_counter\(2)) # ((\spi|bit_counter\(1)) # (!\spi|bit_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(3),
	datab => \spi|bit_counter\(2),
	datac => \spi|bit_counter\(4),
	datad => \spi|bit_counter\(1),
	combout => \spi|process_0~0_combout\);

-- Location: LCCOMB_X35_Y6_N0
\spi|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Decoder0~3_combout\ = (\spi|bit_counter\(3) & (\spi|bit_counter\(0) & (!\spi|process_0~0_combout\ & \spi|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(3),
	datab => \spi|bit_counter\(0),
	datac => \spi|process_0~0_combout\,
	datad => \spi|Selector1~0_combout\,
	combout => \spi|Decoder0~3_combout\);

-- Location: LCCOMB_X35_Y6_N24
\spi|data_register[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|data_register[2]~2_combout\ = (\spi|Decoder0~4_combout\ & ((\spi|Decoder0~3_combout\ & (\miso~input_o\)) # (!\spi|Decoder0~3_combout\ & ((\spi|data_register\(2)))))) # (!\spi|Decoder0~4_combout\ & (((\spi|data_register\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \spi|Decoder0~4_combout\,
	datac => \spi|data_register\(2),
	datad => \spi|Decoder0~3_combout\,
	combout => \spi|data_register[2]~2_combout\);

-- Location: FF_X35_Y6_N25
\spi|data_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|clk~clkctrl_outclk\,
	d => \spi|data_register[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|data_register\(2));

-- Location: LCCOMB_X33_Y6_N8
\spi|reg[9]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|reg[9]~0_combout\ = (!\rst~input_o\ & (!\spi|LessThan0~1_combout\ & !\spi|Equal16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \spi|LessThan0~1_combout\,
	datad => \spi|Equal16~0_combout\,
	combout => \spi|reg[9]~0_combout\);

-- Location: FF_X32_Y6_N25
\spi|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	asdata => \spi|data_register\(2),
	sload => VCC,
	ena => \spi|reg[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg\(2));

-- Location: LCCOMB_X32_Y6_N24
\spi|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Selector1~1_combout\ = (\spi|bit_counter\(0) & (\spi|bit_counter\(3) & (\spi|reg\(2) & !\spi|bit_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(0),
	datab => \spi|bit_counter\(3),
	datac => \spi|reg\(2),
	datad => \spi|bit_counter\(2),
	combout => \spi|Selector1~1_combout\);

-- Location: LCCOMB_X34_Y6_N16
\spi|Equal2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal2~9_combout\ = (!\spi|bit_counter\(2) & \spi|bit_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(2),
	datac => \spi|bit_counter\(1),
	combout => \spi|Equal2~9_combout\);

-- Location: LCCOMB_X34_Y6_N24
\spi|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Decoder0~5_combout\ = (\spi|bit_counter\(3) & (!\spi|process_0~0_combout\ & (!\spi|bit_counter\(0) & \spi|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(3),
	datab => \spi|process_0~0_combout\,
	datac => \spi|bit_counter\(0),
	datad => \spi|Selector1~0_combout\,
	combout => \spi|Decoder0~5_combout\);

-- Location: LCCOMB_X34_Y6_N2
\spi|data_register[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|data_register[7]~6_combout\ = (\spi|Equal2~9_combout\ & ((\spi|Decoder0~5_combout\ & (\miso~input_o\)) # (!\spi|Decoder0~5_combout\ & ((\spi|data_register\(7)))))) # (!\spi|Equal2~9_combout\ & (((\spi|data_register\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \spi|Equal2~9_combout\,
	datac => \spi|data_register\(7),
	datad => \spi|Decoder0~5_combout\,
	combout => \spi|data_register[7]~6_combout\);

-- Location: FF_X34_Y6_N3
\spi|data_register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|clk~clkctrl_outclk\,
	d => \spi|data_register[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|data_register\(7));

-- Location: FF_X32_Y6_N5
\spi|reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	asdata => \spi|data_register\(7),
	sload => VCC,
	ena => \spi|reg[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg\(7));

-- Location: LCCOMB_X35_Y6_N18
\spi|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal3~0_combout\ = (!\spi|bit_counter\(2) & (\spi|bit_counter\(0) & \spi|bit_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(2),
	datac => \spi|bit_counter\(0),
	datad => \spi|bit_counter\(1),
	combout => \spi|Equal3~0_combout\);

-- Location: LCCOMB_X35_Y6_N20
\spi|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Decoder0~6_combout\ = (\spi|bit_counter\(3) & (\spi|Selector1~0_combout\ & ((\spi|Decoder0~0_combout\) # (!\spi|bit_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Decoder0~0_combout\,
	datab => \spi|bit_counter\(3),
	datac => \spi|bit_counter\(4),
	datad => \spi|Selector1~0_combout\,
	combout => \spi|Decoder0~6_combout\);

-- Location: LCCOMB_X35_Y6_N4
\spi|data_register[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|data_register[6]~7_combout\ = (\spi|Equal3~0_combout\ & ((\spi|Decoder0~6_combout\ & (\miso~input_o\)) # (!\spi|Decoder0~6_combout\ & ((\spi|data_register\(6)))))) # (!\spi|Equal3~0_combout\ & (((\spi|data_register\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \spi|Equal3~0_combout\,
	datac => \spi|data_register\(6),
	datad => \spi|Decoder0~6_combout\,
	combout => \spi|data_register[6]~7_combout\);

-- Location: FF_X35_Y6_N5
\spi|data_register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|clk~clkctrl_outclk\,
	d => \spi|data_register[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|data_register\(6));

-- Location: LCCOMB_X32_Y6_N2
\spi|reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|reg[6]~feeder_combout\ = \spi|data_register\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|data_register\(6),
	combout => \spi|reg[6]~feeder_combout\);

-- Location: FF_X32_Y6_N3
\spi|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|reg[6]~feeder_combout\,
	ena => \spi|reg[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg\(6));

-- Location: LCCOMB_X32_Y6_N4
\spi|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Selector1~2_combout\ = (!\spi|bit_counter\(3) & ((\spi|bit_counter\(0) & ((\spi|reg\(6)))) # (!\spi|bit_counter\(0) & (\spi|reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(0),
	datab => \spi|bit_counter\(3),
	datac => \spi|reg\(7),
	datad => \spi|reg\(6),
	combout => \spi|Selector1~2_combout\);

-- Location: LCCOMB_X32_Y6_N18
\spi|Selector1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Selector1~3_combout\ = (\spi|bit_counter\(1) & ((\spi|Selector1~1_combout\) # ((\spi|Selector1~2_combout\ & \spi|bit_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(1),
	datab => \spi|Selector1~1_combout\,
	datac => \spi|Selector1~2_combout\,
	datad => \spi|bit_counter\(2),
	combout => \spi|Selector1~3_combout\);

-- Location: LCCOMB_X34_Y6_N20
\spi|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal4~0_combout\ = (\spi|bit_counter\(2) & !\spi|bit_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(2),
	datac => \spi|bit_counter\(1),
	combout => \spi|Equal4~0_combout\);

-- Location: LCCOMB_X35_Y6_N6
\spi|data_register[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|data_register[4]~5_combout\ = (\spi|Equal4~0_combout\ & ((\spi|Decoder0~3_combout\ & (\miso~input_o\)) # (!\spi|Decoder0~3_combout\ & ((\spi|data_register\(4)))))) # (!\spi|Equal4~0_combout\ & (((\spi|data_register\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \spi|Equal4~0_combout\,
	datac => \spi|data_register\(4),
	datad => \spi|Decoder0~3_combout\,
	combout => \spi|data_register[4]~5_combout\);

-- Location: FF_X35_Y6_N7
\spi|data_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|clk~clkctrl_outclk\,
	d => \spi|data_register[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|data_register\(4));

-- Location: FF_X32_Y6_N23
\spi|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	asdata => \spi|data_register\(4),
	sload => VCC,
	ena => \spi|reg[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg\(4));

-- Location: LCCOMB_X35_Y6_N22
\spi|Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Decoder0~8_combout\ = (!\spi|bit_counter\(2) & (\spi|bit_counter\(0) & !\spi|bit_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(2),
	datac => \spi|bit_counter\(0),
	datad => \spi|bit_counter\(1),
	combout => \spi|Decoder0~8_combout\);

-- Location: LCCOMB_X35_Y6_N14
\spi|data_register[8]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|data_register[8]~9_combout\ = (\spi|Decoder0~8_combout\ & ((\spi|Decoder0~6_combout\ & (\miso~input_o\)) # (!\spi|Decoder0~6_combout\ & ((\spi|data_register\(8)))))) # (!\spi|Decoder0~8_combout\ & (((\spi|data_register\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \spi|Decoder0~8_combout\,
	datac => \spi|data_register\(8),
	datad => \spi|Decoder0~6_combout\,
	combout => \spi|data_register[8]~9_combout\);

-- Location: FF_X35_Y6_N15
\spi|data_register[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|clk~clkctrl_outclk\,
	d => \spi|data_register[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|data_register\(8));

-- Location: FF_X32_Y6_N9
\spi|reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	asdata => \spi|data_register\(8),
	sload => VCC,
	ena => \spi|reg[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg\(8));

-- Location: LCCOMB_X32_Y6_N8
\spi|Selector1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Selector1~5_combout\ = (\spi|bit_counter\(3) & (\spi|reg\(4) & ((!\spi|bit_counter\(2))))) # (!\spi|bit_counter\(3) & (((\spi|reg\(8)) # (!\spi|bit_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|reg\(4),
	datab => \spi|bit_counter\(3),
	datac => \spi|reg\(8),
	datad => \spi|bit_counter\(2),
	combout => \spi|Selector1~5_combout\);

-- Location: LCCOMB_X32_Y6_N20
\spi|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|process_0~1_combout\ = (\spi|bit_counter\(31)) # ((\spi|process_0~0_combout\) # ((!\spi|Equal2~4_combout\) # (!\spi|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(31),
	datab => \spi|process_0~0_combout\,
	datac => \spi|Equal2~7_combout\,
	datad => \spi|Equal2~4_combout\,
	combout => \spi|process_0~1_combout\);

-- Location: LCCOMB_X32_Y6_N26
\spi|data_register[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|data_register[0]~1_combout\ = (\spi|Decoder0~2_combout\ & ((\spi|process_0~1_combout\ & ((\spi|data_register\(0)))) # (!\spi|process_0~1_combout\ & (\miso~input_o\)))) # (!\spi|Decoder0~2_combout\ & (((\spi|data_register\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Decoder0~2_combout\,
	datab => \miso~input_o\,
	datac => \spi|data_register\(0),
	datad => \spi|process_0~1_combout\,
	combout => \spi|data_register[0]~1_combout\);

-- Location: FF_X32_Y6_N27
\spi|data_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|clk~clkctrl_outclk\,
	d => \spi|data_register[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|data_register\(0));

-- Location: FF_X32_Y6_N13
\spi|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	asdata => \spi|data_register\(0),
	sload => VCC,
	ena => \spi|reg[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg\(0));

-- Location: LCCOMB_X32_Y6_N12
\spi|Selector1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Selector1~4_combout\ = (\spi|bit_counter\(3) & (\spi|reg\(0) & \spi|bit_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_counter\(3),
	datac => \spi|reg\(0),
	datad => \spi|bit_counter\(2),
	combout => \spi|Selector1~4_combout\);

-- Location: LCCOMB_X32_Y6_N30
\spi|Selector1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Selector1~6_combout\ = (!\spi|bit_counter\(1) & (\spi|bit_counter\(0) & ((\spi|Selector1~5_combout\) # (\spi|Selector1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(1),
	datab => \spi|Selector1~5_combout\,
	datac => \spi|bit_counter\(0),
	datad => \spi|Selector1~4_combout\,
	combout => \spi|Selector1~6_combout\);

-- Location: LCCOMB_X34_Y6_N22
\spi|data_register[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|data_register[3]~3_combout\ = (\spi|Decoder0~4_combout\ & ((\spi|Decoder0~5_combout\ & (\miso~input_o\)) # (!\spi|Decoder0~5_combout\ & ((\spi|data_register\(3)))))) # (!\spi|Decoder0~4_combout\ & (((\spi|data_register\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Decoder0~4_combout\,
	datab => \miso~input_o\,
	datac => \spi|data_register\(3),
	datad => \spi|Decoder0~5_combout\,
	combout => \spi|data_register[3]~3_combout\);

-- Location: FF_X34_Y6_N23
\spi|data_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|clk~clkctrl_outclk\,
	d => \spi|data_register[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|data_register\(3));

-- Location: FF_X34_Y6_N5
\spi|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	asdata => \spi|data_register\(3),
	sload => VCC,
	ena => \spi|reg[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg\(3));

-- Location: LCCOMB_X34_Y6_N10
\spi|data_register[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|data_register[5]~4_combout\ = (\spi|Equal4~0_combout\ & ((\spi|Decoder0~5_combout\ & (\miso~input_o\)) # (!\spi|Decoder0~5_combout\ & ((\spi|data_register\(5)))))) # (!\spi|Equal4~0_combout\ & (((\spi|data_register\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \spi|Equal4~0_combout\,
	datac => \spi|data_register\(5),
	datad => \spi|Decoder0~5_combout\,
	combout => \spi|data_register[5]~4_combout\);

-- Location: FF_X34_Y6_N11
\spi|data_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|clk~clkctrl_outclk\,
	d => \spi|data_register[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|data_register\(5));

-- Location: FF_X34_Y6_N13
\spi|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	asdata => \spi|data_register\(5),
	sload => VCC,
	ena => \spi|reg[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg\(5));

-- Location: LCCOMB_X32_Y6_N10
\spi|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Decoder0~1_combout\ = (!\spi|bit_counter\(1) & (!\spi|bit_counter\(2) & (!\spi|bit_counter\(0) & !\spi|bit_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(1),
	datab => \spi|bit_counter\(2),
	datac => \spi|bit_counter\(0),
	datad => \spi|bit_counter\(3),
	combout => \spi|Decoder0~1_combout\);

-- Location: LCCOMB_X32_Y6_N16
\spi|data_register[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|data_register[1]~0_combout\ = (\spi|Decoder0~1_combout\ & ((\spi|process_0~1_combout\ & ((\spi|data_register\(1)))) # (!\spi|process_0~1_combout\ & (\miso~input_o\)))) # (!\spi|Decoder0~1_combout\ & (((\spi|data_register\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Decoder0~1_combout\,
	datab => \miso~input_o\,
	datac => \spi|data_register\(1),
	datad => \spi|process_0~1_combout\,
	combout => \spi|data_register[1]~0_combout\);

-- Location: FF_X32_Y6_N17
\spi|data_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|clk~clkctrl_outclk\,
	d => \spi|data_register[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|data_register\(1));

-- Location: LCCOMB_X32_Y6_N28
\spi|reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|reg[1]~feeder_combout\ = \spi|data_register\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|data_register\(1),
	combout => \spi|reg[1]~feeder_combout\);

-- Location: FF_X32_Y6_N29
\spi|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|reg[1]~feeder_combout\,
	ena => \spi|reg[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg\(1));

-- Location: LCCOMB_X34_Y6_N12
\spi|Selector1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Selector1~7_combout\ = (!\spi|bit_counter\(1) & ((\spi|bit_counter\(2) & ((\spi|reg\(1)))) # (!\spi|bit_counter\(2) & (\spi|reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(2),
	datab => \spi|bit_counter\(1),
	datac => \spi|reg\(5),
	datad => \spi|reg\(1),
	combout => \spi|Selector1~7_combout\);

-- Location: LCCOMB_X34_Y6_N4
\spi|Selector1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Selector1~8_combout\ = (\spi|Selector1~7_combout\) # ((!\spi|bit_counter\(2) & (\spi|bit_counter\(1) & \spi|reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(2),
	datab => \spi|bit_counter\(1),
	datac => \spi|reg\(3),
	datad => \spi|Selector1~7_combout\,
	combout => \spi|Selector1~8_combout\);

-- Location: LCCOMB_X33_Y6_N18
\spi|Selector1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Selector1~9_combout\ = (\spi|Selector1~6_combout\) # ((\spi|bit_counter\(3) & (!\spi|bit_counter\(0) & \spi|Selector1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(3),
	datab => \spi|Selector1~6_combout\,
	datac => \spi|bit_counter\(0),
	datad => \spi|Selector1~8_combout\,
	combout => \spi|Selector1~9_combout\);

-- Location: LCCOMB_X33_Y6_N20
\spi|Selector1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Selector1~10_combout\ = (\spi|Selector1~0_combout\ & (!\spi|bit_counter\(4) & ((\spi|Selector1~3_combout\) # (\spi|Selector1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Selector1~0_combout\,
	datab => \spi|Selector1~3_combout\,
	datac => \spi|bit_counter\(4),
	datad => \spi|Selector1~9_combout\,
	combout => \spi|Selector1~10_combout\);

-- Location: LCCOMB_X33_Y6_N26
\spi|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|WideOr0~0_combout\ = ((\spi|bit_counter\(2)) # (!\spi|Equal2~8_combout\)) # (!\spi|bit_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(1),
	datab => \spi|bit_counter\(2),
	datac => \spi|Equal2~8_combout\,
	combout => \spi|WideOr0~0_combout\);

-- Location: LCCOMB_X34_Y6_N8
\spi|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Decoder0~7_combout\ = (!\spi|bit_counter\(2) & !\spi|bit_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(2),
	datac => \spi|bit_counter\(1),
	combout => \spi|Decoder0~7_combout\);

-- Location: LCCOMB_X34_Y6_N28
\spi|data_register[9]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|data_register[9]~8_combout\ = (\spi|Decoder0~7_combout\ & ((\spi|Decoder0~5_combout\ & (\miso~input_o\)) # (!\spi|Decoder0~5_combout\ & ((\spi|data_register\(9)))))) # (!\spi|Decoder0~7_combout\ & (((\spi|data_register\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \spi|Decoder0~7_combout\,
	datac => \spi|data_register\(9),
	datad => \spi|Decoder0~5_combout\,
	combout => \spi|data_register[9]~8_combout\);

-- Location: FF_X34_Y6_N29
\spi|data_register[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|clk~clkctrl_outclk\,
	d => \spi|data_register[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|data_register\(9));

-- Location: FF_X34_Y6_N19
\spi|reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	asdata => \spi|data_register\(9),
	sload => VCC,
	ena => \spi|reg[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg\(9));

-- Location: LCCOMB_X34_Y6_N18
\spi|Selector1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Selector1~11_combout\ = (!\spi|bit_counter\(0) & (\spi|Equal4~0_combout\ & (\spi|reg\(9) & \spi|Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_counter\(0),
	datab => \spi|Equal4~0_combout\,
	datac => \spi|reg\(9),
	datad => \spi|Equal2~8_combout\,
	combout => \spi|Selector1~11_combout\);

-- Location: LCCOMB_X33_Y6_N22
\spi|Selector1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Selector1~12_combout\ = (\spi|Selector1~10_combout\) # ((\spi|Selector1~11_combout\) # (!\spi|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Selector1~10_combout\,
	datac => \spi|WideOr0~0_combout\,
	datad => \spi|Selector1~11_combout\,
	combout => \spi|Selector1~12_combout\);

-- Location: FF_X33_Y6_N23
\spi|mosib_signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|Selector1~12_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|mosib_signal~q\);

-- Location: FF_X37_Y6_N29
\spi|chip_select_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|LessThan0~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|chip_select_a~q\);

-- Location: LCCOMB_X36_Y6_N20
\spi|chip_select_b~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|chip_select_b~feeder_combout\ = \spi|LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi|LessThan0~1_combout\,
	combout => \spi|chip_select_b~feeder_combout\);

-- Location: FF_X36_Y6_N21
\spi|chip_select_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk_div|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|chip_select_b~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|chip_select_b~q\);

-- Location: FF_X28_Y22_N29
\lcd|div_clk_new[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(30));

-- Location: LCCOMB_X28_Y23_N0
\lcd|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~0_combout\ = \lcd|div_clk_new\(0) $ (VCC)
-- \lcd|Add1~1\ = CARRY(\lcd|div_clk_new\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(0),
	datad => VCC,
	combout => \lcd|Add1~0_combout\,
	cout => \lcd|Add1~1\);

-- Location: FF_X28_Y23_N1
\lcd|div_clk_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(0));

-- Location: LCCOMB_X28_Y23_N2
\lcd|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~2_combout\ = (\lcd|div_clk_new\(1) & (!\lcd|Add1~1\)) # (!\lcd|div_clk_new\(1) & ((\lcd|Add1~1\) # (GND)))
-- \lcd|Add1~3\ = CARRY((!\lcd|Add1~1\) # (!\lcd|div_clk_new\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(1),
	datad => VCC,
	cin => \lcd|Add1~1\,
	combout => \lcd|Add1~2_combout\,
	cout => \lcd|Add1~3\);

-- Location: FF_X28_Y23_N3
\lcd|div_clk_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(1));

-- Location: LCCOMB_X28_Y23_N4
\lcd|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~4_combout\ = (\lcd|div_clk_new\(2) & (\lcd|Add1~3\ $ (GND))) # (!\lcd|div_clk_new\(2) & (!\lcd|Add1~3\ & VCC))
-- \lcd|Add1~5\ = CARRY((\lcd|div_clk_new\(2) & !\lcd|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(2),
	datad => VCC,
	cin => \lcd|Add1~3\,
	combout => \lcd|Add1~4_combout\,
	cout => \lcd|Add1~5\);

-- Location: FF_X28_Y23_N5
\lcd|div_clk_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(2));

-- Location: LCCOMB_X28_Y23_N6
\lcd|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~6_combout\ = (\lcd|div_clk_new\(3) & (!\lcd|Add1~5\)) # (!\lcd|div_clk_new\(3) & ((\lcd|Add1~5\) # (GND)))
-- \lcd|Add1~7\ = CARRY((!\lcd|Add1~5\) # (!\lcd|div_clk_new\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk_new\(3),
	datad => VCC,
	cin => \lcd|Add1~5\,
	combout => \lcd|Add1~6_combout\,
	cout => \lcd|Add1~7\);

-- Location: FF_X28_Y23_N7
\lcd|div_clk_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(3));

-- Location: LCCOMB_X28_Y23_N8
\lcd|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~8_combout\ = (\lcd|div_clk_new\(4) & (\lcd|Add1~7\ $ (GND))) # (!\lcd|div_clk_new\(4) & (!\lcd|Add1~7\ & VCC))
-- \lcd|Add1~9\ = CARRY((\lcd|div_clk_new\(4) & !\lcd|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk_new\(4),
	datad => VCC,
	cin => \lcd|Add1~7\,
	combout => \lcd|Add1~8_combout\,
	cout => \lcd|Add1~9\);

-- Location: LCCOMB_X29_Y23_N2
\lcd|div_clk_new~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk_new~2_combout\ = (\lcd|Add1~8_combout\ & !\lcd|Equal3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~8_combout\,
	datac => \lcd|Equal3~3_combout\,
	combout => \lcd|div_clk_new~2_combout\);

-- Location: FF_X29_Y23_N3
\lcd|div_clk_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|div_clk_new~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(4));

-- Location: LCCOMB_X28_Y23_N10
\lcd|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~10_combout\ = (\lcd|div_clk_new\(5) & (!\lcd|Add1~9\)) # (!\lcd|div_clk_new\(5) & ((\lcd|Add1~9\) # (GND)))
-- \lcd|Add1~11\ = CARRY((!\lcd|Add1~9\) # (!\lcd|div_clk_new\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk_new\(5),
	datad => VCC,
	cin => \lcd|Add1~9\,
	combout => \lcd|Add1~10_combout\,
	cout => \lcd|Add1~11\);

-- Location: FF_X28_Y23_N11
\lcd|div_clk_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(5));

-- Location: LCCOMB_X28_Y23_N12
\lcd|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~12_combout\ = (\lcd|div_clk_new\(6) & (\lcd|Add1~11\ $ (GND))) # (!\lcd|div_clk_new\(6) & (!\lcd|Add1~11\ & VCC))
-- \lcd|Add1~13\ = CARRY((\lcd|div_clk_new\(6) & !\lcd|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk_new\(6),
	datad => VCC,
	cin => \lcd|Add1~11\,
	combout => \lcd|Add1~12_combout\,
	cout => \lcd|Add1~13\);

-- Location: LCCOMB_X29_Y23_N6
\lcd|div_clk_new~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk_new~1_combout\ = (!\lcd|Equal3~3_combout\ & \lcd|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal3~3_combout\,
	datac => \lcd|Add1~12_combout\,
	combout => \lcd|div_clk_new~1_combout\);

-- Location: FF_X29_Y23_N7
\lcd|div_clk_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|div_clk_new~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(6));

-- Location: LCCOMB_X28_Y23_N14
\lcd|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~14_combout\ = (\lcd|div_clk_new\(7) & (!\lcd|Add1~13\)) # (!\lcd|div_clk_new\(7) & ((\lcd|Add1~13\) # (GND)))
-- \lcd|Add1~15\ = CARRY((!\lcd|Add1~13\) # (!\lcd|div_clk_new\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(7),
	datad => VCC,
	cin => \lcd|Add1~13\,
	combout => \lcd|Add1~14_combout\,
	cout => \lcd|Add1~15\);

-- Location: FF_X28_Y23_N15
\lcd|div_clk_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(7));

-- Location: LCCOMB_X28_Y23_N16
\lcd|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~16_combout\ = (\lcd|div_clk_new\(8) & (\lcd|Add1~15\ $ (GND))) # (!\lcd|div_clk_new\(8) & (!\lcd|Add1~15\ & VCC))
-- \lcd|Add1~17\ = CARRY((\lcd|div_clk_new\(8) & !\lcd|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(8),
	datad => VCC,
	cin => \lcd|Add1~15\,
	combout => \lcd|Add1~16_combout\,
	cout => \lcd|Add1~17\);

-- Location: LCCOMB_X29_Y23_N24
\lcd|div_clk_new~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk_new~0_combout\ = (\lcd|Add1~16_combout\ & !\lcd|Equal3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|Add1~16_combout\,
	datad => \lcd|Equal3~3_combout\,
	combout => \lcd|div_clk_new~0_combout\);

-- Location: FF_X29_Y23_N25
\lcd|div_clk_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|div_clk_new~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(8));

-- Location: LCCOMB_X28_Y23_N18
\lcd|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~18_combout\ = (\lcd|div_clk_new\(9) & (!\lcd|Add1~17\)) # (!\lcd|div_clk_new\(9) & ((\lcd|Add1~17\) # (GND)))
-- \lcd|Add1~19\ = CARRY((!\lcd|Add1~17\) # (!\lcd|div_clk_new\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk_new\(9),
	datad => VCC,
	cin => \lcd|Add1~17\,
	combout => \lcd|Add1~18_combout\,
	cout => \lcd|Add1~19\);

-- Location: LCCOMB_X29_Y23_N20
\lcd|div_clk_new~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk_new~4_combout\ = (\lcd|Add1~18_combout\ & !\lcd|Equal3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|Add1~18_combout\,
	datac => \lcd|Equal3~3_combout\,
	combout => \lcd|div_clk_new~4_combout\);

-- Location: FF_X29_Y23_N21
\lcd|div_clk_new[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|div_clk_new~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(9));

-- Location: LCCOMB_X28_Y23_N20
\lcd|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~20_combout\ = (\lcd|div_clk_new\(10) & (\lcd|Add1~19\ $ (GND))) # (!\lcd|div_clk_new\(10) & (!\lcd|Add1~19\ & VCC))
-- \lcd|Add1~21\ = CARRY((\lcd|div_clk_new\(10) & !\lcd|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(10),
	datad => VCC,
	cin => \lcd|Add1~19\,
	combout => \lcd|Add1~20_combout\,
	cout => \lcd|Add1~21\);

-- Location: FF_X28_Y23_N21
\lcd|div_clk_new[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(10));

-- Location: LCCOMB_X28_Y23_N22
\lcd|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~22_combout\ = (\lcd|div_clk_new\(11) & (!\lcd|Add1~21\)) # (!\lcd|div_clk_new\(11) & ((\lcd|Add1~21\) # (GND)))
-- \lcd|Add1~23\ = CARRY((!\lcd|Add1~21\) # (!\lcd|div_clk_new\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk_new\(11),
	datad => VCC,
	cin => \lcd|Add1~21\,
	combout => \lcd|Add1~22_combout\,
	cout => \lcd|Add1~23\);

-- Location: FF_X28_Y23_N23
\lcd|div_clk_new[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(11));

-- Location: LCCOMB_X28_Y23_N24
\lcd|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~24_combout\ = (\lcd|div_clk_new\(12) & (\lcd|Add1~23\ $ (GND))) # (!\lcd|div_clk_new\(12) & (!\lcd|Add1~23\ & VCC))
-- \lcd|Add1~25\ = CARRY((\lcd|div_clk_new\(12) & !\lcd|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(12),
	datad => VCC,
	cin => \lcd|Add1~23\,
	combout => \lcd|Add1~24_combout\,
	cout => \lcd|Add1~25\);

-- Location: FF_X28_Y23_N25
\lcd|div_clk_new[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(12));

-- Location: LCCOMB_X28_Y23_N26
\lcd|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~26_combout\ = (\lcd|div_clk_new\(13) & (!\lcd|Add1~25\)) # (!\lcd|div_clk_new\(13) & ((\lcd|Add1~25\) # (GND)))
-- \lcd|Add1~27\ = CARRY((!\lcd|Add1~25\) # (!\lcd|div_clk_new\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk_new\(13),
	datad => VCC,
	cin => \lcd|Add1~25\,
	combout => \lcd|Add1~26_combout\,
	cout => \lcd|Add1~27\);

-- Location: FF_X28_Y23_N27
\lcd|div_clk_new[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(13));

-- Location: LCCOMB_X28_Y23_N28
\lcd|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~28_combout\ = (\lcd|div_clk_new\(14) & (\lcd|Add1~27\ $ (GND))) # (!\lcd|div_clk_new\(14) & (!\lcd|Add1~27\ & VCC))
-- \lcd|Add1~29\ = CARRY((\lcd|div_clk_new\(14) & !\lcd|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(14),
	datad => VCC,
	cin => \lcd|Add1~27\,
	combout => \lcd|Add1~28_combout\,
	cout => \lcd|Add1~29\);

-- Location: LCCOMB_X29_Y23_N0
\lcd|div_clk_new~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk_new~3_combout\ = (\lcd|Add1~28_combout\ & !\lcd|Equal3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|Add1~28_combout\,
	datac => \lcd|Equal3~3_combout\,
	combout => \lcd|div_clk_new~3_combout\);

-- Location: FF_X29_Y23_N1
\lcd|div_clk_new[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|div_clk_new~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(14));

-- Location: LCCOMB_X28_Y23_N30
\lcd|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~30_combout\ = (\lcd|div_clk_new\(15) & (!\lcd|Add1~29\)) # (!\lcd|div_clk_new\(15) & ((\lcd|Add1~29\) # (GND)))
-- \lcd|Add1~31\ = CARRY((!\lcd|Add1~29\) # (!\lcd|div_clk_new\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(15),
	datad => VCC,
	cin => \lcd|Add1~29\,
	combout => \lcd|Add1~30_combout\,
	cout => \lcd|Add1~31\);

-- Location: LCCOMB_X29_Y23_N28
\lcd|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal3~1_combout\ = (\lcd|Add1~18_combout\ & !\lcd|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|Add1~18_combout\,
	datac => \lcd|Add1~14_combout\,
	combout => \lcd|Equal3~1_combout\);

-- Location: LCCOMB_X27_Y23_N14
\lcd|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal3~0_combout\ = (!\lcd|Add1~6_combout\ & (!\lcd|Add1~10_combout\ & (\lcd|Add1~12_combout\ & \lcd|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~6_combout\,
	datab => \lcd|Add1~10_combout\,
	datac => \lcd|Add1~12_combout\,
	datad => \lcd|Add1~8_combout\,
	combout => \lcd|Equal3~0_combout\);

-- Location: LCCOMB_X29_Y23_N10
\lcd|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal3~2_combout\ = (\lcd|Add1~30_combout\ & (\lcd|Equal3~1_combout\ & (!\lcd|Add1~26_combout\ & \lcd|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~30_combout\,
	datab => \lcd|Equal3~1_combout\,
	datac => \lcd|Add1~26_combout\,
	datad => \lcd|Equal3~0_combout\,
	combout => \lcd|Equal3~2_combout\);

-- Location: LCCOMB_X29_Y23_N8
\lcd|Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal2~8_combout\ = (!\lcd|Add1~54_combout\ & (!\lcd|Add1~48_combout\ & (!\lcd|Add1~50_combout\ & !\lcd|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~54_combout\,
	datab => \lcd|Add1~48_combout\,
	datac => \lcd|Add1~50_combout\,
	datad => \lcd|Add1~52_combout\,
	combout => \lcd|Equal2~8_combout\);

-- Location: LCCOMB_X29_Y22_N12
\lcd|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal2~0_combout\ = (!\lcd|Add1~0_combout\ & (!\lcd|Add1~4_combout\ & (!\lcd|Add1~2_combout\ & \lcd|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~0_combout\,
	datab => \lcd|Add1~4_combout\,
	datac => \lcd|Add1~2_combout\,
	datad => \lcd|Add1~16_combout\,
	combout => \lcd|Equal2~0_combout\);

-- Location: LCCOMB_X29_Y22_N16
\lcd|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal2~2_combout\ = (!\lcd|Add1~32_combout\ & (!\lcd|Add1~38_combout\ & (!\lcd|Add1~36_combout\ & !\lcd|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~32_combout\,
	datab => \lcd|Add1~38_combout\,
	datac => \lcd|Add1~36_combout\,
	datad => \lcd|Add1~34_combout\,
	combout => \lcd|Equal2~2_combout\);

-- Location: LCCOMB_X29_Y22_N30
\lcd|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal2~1_combout\ = (!\lcd|Add1~20_combout\ & (!\lcd|Add1~22_combout\ & (!\lcd|Add1~24_combout\ & \lcd|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~20_combout\,
	datab => \lcd|Add1~22_combout\,
	datac => \lcd|Add1~24_combout\,
	datad => \lcd|Add1~28_combout\,
	combout => \lcd|Equal2~1_combout\);

-- Location: LCCOMB_X29_Y22_N2
\lcd|Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal2~3_combout\ = (!\lcd|Add1~44_combout\ & (!\lcd|Add1~42_combout\ & (!\lcd|Add1~40_combout\ & !\lcd|Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~44_combout\,
	datab => \lcd|Add1~42_combout\,
	datac => \lcd|Add1~40_combout\,
	datad => \lcd|Add1~46_combout\,
	combout => \lcd|Equal2~3_combout\);

-- Location: LCCOMB_X29_Y22_N0
\lcd|Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal2~4_combout\ = (\lcd|Equal2~0_combout\ & (\lcd|Equal2~2_combout\ & (\lcd|Equal2~1_combout\ & \lcd|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal2~0_combout\,
	datab => \lcd|Equal2~2_combout\,
	datac => \lcd|Equal2~1_combout\,
	datad => \lcd|Equal2~3_combout\,
	combout => \lcd|Equal2~4_combout\);

-- Location: FF_X28_Y22_N31
\lcd|div_clk_new[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(31));

-- Location: LCCOMB_X28_Y22_N28
\lcd|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~60_combout\ = (\lcd|div_clk_new\(30) & (\lcd|Add1~59\ $ (GND))) # (!\lcd|div_clk_new\(30) & (!\lcd|Add1~59\ & VCC))
-- \lcd|Add1~61\ = CARRY((\lcd|div_clk_new\(30) & !\lcd|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(30),
	datad => VCC,
	cin => \lcd|Add1~59\,
	combout => \lcd|Add1~60_combout\,
	cout => \lcd|Add1~61\);

-- Location: LCCOMB_X28_Y22_N30
\lcd|Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~62_combout\ = \lcd|div_clk_new\(31) $ (\lcd|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk_new\(31),
	cin => \lcd|Add1~61\,
	combout => \lcd|Add1~62_combout\);

-- Location: LCCOMB_X29_Y23_N16
\lcd|Equal2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal2~9_combout\ = (!\lcd|Add1~56_combout\ & (!\lcd|Add1~62_combout\ & (!\lcd|Add1~58_combout\ & !\lcd|Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~56_combout\,
	datab => \lcd|Add1~62_combout\,
	datac => \lcd|Add1~58_combout\,
	datad => \lcd|Add1~60_combout\,
	combout => \lcd|Equal2~9_combout\);

-- Location: LCCOMB_X29_Y23_N26
\lcd|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal3~3_combout\ = (\lcd|Equal3~2_combout\ & (\lcd|Equal2~8_combout\ & (\lcd|Equal2~4_combout\ & \lcd|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal3~2_combout\,
	datab => \lcd|Equal2~8_combout\,
	datac => \lcd|Equal2~4_combout\,
	datad => \lcd|Equal2~9_combout\,
	combout => \lcd|Equal3~3_combout\);

-- Location: LCCOMB_X29_Y23_N18
\lcd|div_clk_new~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk_new~5_combout\ = (!\lcd|Equal3~3_combout\ & \lcd|Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal3~3_combout\,
	datac => \lcd|Add1~30_combout\,
	combout => \lcd|div_clk_new~5_combout\);

-- Location: FF_X29_Y23_N19
\lcd|div_clk_new[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|div_clk_new~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(15));

-- Location: LCCOMB_X28_Y22_N0
\lcd|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~32_combout\ = (\lcd|div_clk_new\(16) & (\lcd|Add1~31\ $ (GND))) # (!\lcd|div_clk_new\(16) & (!\lcd|Add1~31\ & VCC))
-- \lcd|Add1~33\ = CARRY((\lcd|div_clk_new\(16) & !\lcd|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(16),
	datad => VCC,
	cin => \lcd|Add1~31\,
	combout => \lcd|Add1~32_combout\,
	cout => \lcd|Add1~33\);

-- Location: FF_X28_Y22_N1
\lcd|div_clk_new[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(16));

-- Location: LCCOMB_X28_Y22_N2
\lcd|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~34_combout\ = (\lcd|div_clk_new\(17) & (!\lcd|Add1~33\)) # (!\lcd|div_clk_new\(17) & ((\lcd|Add1~33\) # (GND)))
-- \lcd|Add1~35\ = CARRY((!\lcd|Add1~33\) # (!\lcd|div_clk_new\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(17),
	datad => VCC,
	cin => \lcd|Add1~33\,
	combout => \lcd|Add1~34_combout\,
	cout => \lcd|Add1~35\);

-- Location: FF_X28_Y22_N3
\lcd|div_clk_new[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(17));

-- Location: LCCOMB_X28_Y22_N4
\lcd|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~36_combout\ = (\lcd|div_clk_new\(18) & (\lcd|Add1~35\ $ (GND))) # (!\lcd|div_clk_new\(18) & (!\lcd|Add1~35\ & VCC))
-- \lcd|Add1~37\ = CARRY((\lcd|div_clk_new\(18) & !\lcd|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(18),
	datad => VCC,
	cin => \lcd|Add1~35\,
	combout => \lcd|Add1~36_combout\,
	cout => \lcd|Add1~37\);

-- Location: FF_X28_Y22_N5
\lcd|div_clk_new[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(18));

-- Location: LCCOMB_X28_Y22_N6
\lcd|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~38_combout\ = (\lcd|div_clk_new\(19) & (!\lcd|Add1~37\)) # (!\lcd|div_clk_new\(19) & ((\lcd|Add1~37\) # (GND)))
-- \lcd|Add1~39\ = CARRY((!\lcd|Add1~37\) # (!\lcd|div_clk_new\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk_new\(19),
	datad => VCC,
	cin => \lcd|Add1~37\,
	combout => \lcd|Add1~38_combout\,
	cout => \lcd|Add1~39\);

-- Location: FF_X28_Y22_N7
\lcd|div_clk_new[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(19));

-- Location: LCCOMB_X28_Y22_N8
\lcd|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~40_combout\ = (\lcd|div_clk_new\(20) & (\lcd|Add1~39\ $ (GND))) # (!\lcd|div_clk_new\(20) & (!\lcd|Add1~39\ & VCC))
-- \lcd|Add1~41\ = CARRY((\lcd|div_clk_new\(20) & !\lcd|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(20),
	datad => VCC,
	cin => \lcd|Add1~39\,
	combout => \lcd|Add1~40_combout\,
	cout => \lcd|Add1~41\);

-- Location: FF_X28_Y22_N9
\lcd|div_clk_new[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(20));

-- Location: LCCOMB_X28_Y22_N10
\lcd|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~42_combout\ = (\lcd|div_clk_new\(21) & (!\lcd|Add1~41\)) # (!\lcd|div_clk_new\(21) & ((\lcd|Add1~41\) # (GND)))
-- \lcd|Add1~43\ = CARRY((!\lcd|Add1~41\) # (!\lcd|div_clk_new\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk_new\(21),
	datad => VCC,
	cin => \lcd|Add1~41\,
	combout => \lcd|Add1~42_combout\,
	cout => \lcd|Add1~43\);

-- Location: FF_X28_Y22_N11
\lcd|div_clk_new[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(21));

-- Location: LCCOMB_X28_Y22_N12
\lcd|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~44_combout\ = (\lcd|div_clk_new\(22) & (\lcd|Add1~43\ $ (GND))) # (!\lcd|div_clk_new\(22) & (!\lcd|Add1~43\ & VCC))
-- \lcd|Add1~45\ = CARRY((\lcd|div_clk_new\(22) & !\lcd|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk_new\(22),
	datad => VCC,
	cin => \lcd|Add1~43\,
	combout => \lcd|Add1~44_combout\,
	cout => \lcd|Add1~45\);

-- Location: FF_X28_Y22_N13
\lcd|div_clk_new[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(22));

-- Location: LCCOMB_X28_Y22_N14
\lcd|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~46_combout\ = (\lcd|div_clk_new\(23) & (!\lcd|Add1~45\)) # (!\lcd|div_clk_new\(23) & ((\lcd|Add1~45\) # (GND)))
-- \lcd|Add1~47\ = CARRY((!\lcd|Add1~45\) # (!\lcd|div_clk_new\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(23),
	datad => VCC,
	cin => \lcd|Add1~45\,
	combout => \lcd|Add1~46_combout\,
	cout => \lcd|Add1~47\);

-- Location: FF_X28_Y22_N15
\lcd|div_clk_new[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(23));

-- Location: LCCOMB_X28_Y22_N16
\lcd|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~48_combout\ = (\lcd|div_clk_new\(24) & (\lcd|Add1~47\ $ (GND))) # (!\lcd|div_clk_new\(24) & (!\lcd|Add1~47\ & VCC))
-- \lcd|Add1~49\ = CARRY((\lcd|div_clk_new\(24) & !\lcd|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(24),
	datad => VCC,
	cin => \lcd|Add1~47\,
	combout => \lcd|Add1~48_combout\,
	cout => \lcd|Add1~49\);

-- Location: FF_X28_Y22_N17
\lcd|div_clk_new[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(24));

-- Location: LCCOMB_X28_Y22_N18
\lcd|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~50_combout\ = (\lcd|div_clk_new\(25) & (!\lcd|Add1~49\)) # (!\lcd|div_clk_new\(25) & ((\lcd|Add1~49\) # (GND)))
-- \lcd|Add1~51\ = CARRY((!\lcd|Add1~49\) # (!\lcd|div_clk_new\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(25),
	datad => VCC,
	cin => \lcd|Add1~49\,
	combout => \lcd|Add1~50_combout\,
	cout => \lcd|Add1~51\);

-- Location: FF_X28_Y22_N19
\lcd|div_clk_new[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(25));

-- Location: LCCOMB_X28_Y22_N20
\lcd|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~52_combout\ = (\lcd|div_clk_new\(26) & (\lcd|Add1~51\ $ (GND))) # (!\lcd|div_clk_new\(26) & (!\lcd|Add1~51\ & VCC))
-- \lcd|Add1~53\ = CARRY((\lcd|div_clk_new\(26) & !\lcd|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(26),
	datad => VCC,
	cin => \lcd|Add1~51\,
	combout => \lcd|Add1~52_combout\,
	cout => \lcd|Add1~53\);

-- Location: FF_X28_Y22_N21
\lcd|div_clk_new[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(26));

-- Location: LCCOMB_X28_Y22_N22
\lcd|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~54_combout\ = (\lcd|div_clk_new\(27) & (!\lcd|Add1~53\)) # (!\lcd|div_clk_new\(27) & ((\lcd|Add1~53\) # (GND)))
-- \lcd|Add1~55\ = CARRY((!\lcd|Add1~53\) # (!\lcd|div_clk_new\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk_new\(27),
	datad => VCC,
	cin => \lcd|Add1~53\,
	combout => \lcd|Add1~54_combout\,
	cout => \lcd|Add1~55\);

-- Location: FF_X28_Y22_N23
\lcd|div_clk_new[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(27));

-- Location: LCCOMB_X28_Y22_N24
\lcd|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~56_combout\ = (\lcd|div_clk_new\(28) & (\lcd|Add1~55\ $ (GND))) # (!\lcd|div_clk_new\(28) & (!\lcd|Add1~55\ & VCC))
-- \lcd|Add1~57\ = CARRY((\lcd|div_clk_new\(28) & !\lcd|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(28),
	datad => VCC,
	cin => \lcd|Add1~55\,
	combout => \lcd|Add1~56_combout\,
	cout => \lcd|Add1~57\);

-- Location: FF_X28_Y22_N25
\lcd|div_clk_new[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(28));

-- Location: LCCOMB_X28_Y22_N26
\lcd|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~58_combout\ = (\lcd|div_clk_new\(29) & (!\lcd|Add1~57\)) # (!\lcd|div_clk_new\(29) & ((\lcd|Add1~57\) # (GND)))
-- \lcd|Add1~59\ = CARRY((!\lcd|Add1~57\) # (!\lcd|div_clk_new\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk_new\(29),
	datad => VCC,
	cin => \lcd|Add1~57\,
	combout => \lcd|Add1~58_combout\,
	cout => \lcd|Add1~59\);

-- Location: FF_X28_Y22_N27
\lcd|div_clk_new[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add1~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk_new\(29));

-- Location: LCCOMB_X29_Y23_N22
\lcd|clk_slow~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|clk_slow~0_combout\ = (!\lcd|Add1~60_combout\ & (!\lcd|Add1~58_combout\ & (\lcd|Equal2~8_combout\ & !\lcd|Add1~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~60_combout\,
	datab => \lcd|Add1~58_combout\,
	datac => \lcd|Equal2~8_combout\,
	datad => \lcd|Add1~62_combout\,
	combout => \lcd|clk_slow~0_combout\);

-- Location: LCCOMB_X27_Y23_N16
\lcd|Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal2~5_combout\ = (\lcd|Add1~6_combout\ & (\lcd|Add1~10_combout\ & (!\lcd|Add1~12_combout\ & !\lcd|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~6_combout\,
	datab => \lcd|Add1~10_combout\,
	datac => \lcd|Add1~12_combout\,
	datad => \lcd|Add1~8_combout\,
	combout => \lcd|Equal2~5_combout\);

-- Location: LCCOMB_X29_Y23_N4
\lcd|Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal2~6_combout\ = (\lcd|Equal2~5_combout\ & (\lcd|Add1~14_combout\ & (!\lcd|Add1~30_combout\ & !\lcd|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal2~5_combout\,
	datab => \lcd|Add1~14_combout\,
	datac => \lcd|Add1~30_combout\,
	datad => \lcd|Add1~18_combout\,
	combout => \lcd|Equal2~6_combout\);

-- Location: LCCOMB_X29_Y23_N14
\lcd|Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal2~7_combout\ = (\lcd|Add1~26_combout\ & (!\lcd|Add1~56_combout\ & (\lcd|Equal2~6_combout\ & \lcd|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~26_combout\,
	datab => \lcd|Add1~56_combout\,
	datac => \lcd|Equal2~6_combout\,
	datad => \lcd|Equal2~4_combout\,
	combout => \lcd|Equal2~7_combout\);

-- Location: LCCOMB_X29_Y23_N30
\lcd|clk_slow~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|clk_slow~1_combout\ = (\lcd|clk_slow~0_combout\ & ((\lcd|Equal2~7_combout\) # ((!\lcd|Equal3~3_combout\ & \lcd|clk_slow~q\)))) # (!\lcd|clk_slow~0_combout\ & (((!\lcd|Equal3~3_combout\ & \lcd|clk_slow~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|clk_slow~0_combout\,
	datab => \lcd|Equal2~7_combout\,
	datac => \lcd|Equal3~3_combout\,
	datad => \lcd|clk_slow~q\,
	combout => \lcd|clk_slow~1_combout\);

-- Location: FF_X29_Y23_N13
\lcd|clk_slow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \lcd|clk_slow~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|clk_slow~q\);

-- Location: CLKCTRL_G12
\lcd|clk_slow~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \lcd|clk_slow~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \lcd|clk_slow~clkctrl_outclk\);

-- Location: IOIBUF_X53_Y0_N1
\lcd_rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lcd_rst,
	o => \lcd_rst~input_o\);

-- Location: LCCOMB_X21_Y12_N4
\lcd|lcd_instance|state~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~33_combout\ = (!\lcd_rst~input_o\ & \lcd|lcd_instance|state.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_rst~input_o\,
	datad => \lcd|lcd_instance|state.S4~q\,
	combout => \lcd|lcd_instance|state~33_combout\);

-- Location: FF_X21_Y12_N5
\lcd|lcd_instance|state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|state.S5~q\);

-- Location: LCCOMB_X21_Y12_N16
\lcd|lcd_instance|state~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~34_combout\ = (\lcd|lcd_instance|state.S5~q\ & !\lcd_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|lcd_instance|state.S5~q\,
	datac => \lcd_rst~input_o\,
	combout => \lcd|lcd_instance|state~34_combout\);

-- Location: FF_X21_Y12_N17
\lcd|lcd_instance|state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|state~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|state.S6~q\);

-- Location: LCCOMB_X21_Y12_N20
\lcd|lcd_instance|state~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~28_combout\ = (!\lcd_rst~input_o\ & \lcd|lcd_instance|state.S6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_rst~input_o\,
	datad => \lcd|lcd_instance|state.S6~q\,
	combout => \lcd|lcd_instance|state~28_combout\);

-- Location: FF_X21_Y12_N21
\lcd|lcd_instance|state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|state.S7~q\);

-- Location: LCCOMB_X21_Y12_N2
\lcd|lcd_instance|state~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~35_combout\ = (!\lcd_rst~input_o\ & \lcd|lcd_instance|state.S7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_rst~input_o\,
	datad => \lcd|lcd_instance|state.S7~q\,
	combout => \lcd|lcd_instance|state~35_combout\);

-- Location: FF_X21_Y12_N3
\lcd|lcd_instance|state.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|state.S8~q\);

-- Location: LCCOMB_X25_Y12_N28
\lcd|lcd_instance|state~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~30_combout\ = (!\lcd_rst~input_o\ & \lcd|lcd_instance|state.S8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_rst~input_o\,
	datad => \lcd|lcd_instance|state.S8~q\,
	combout => \lcd|lcd_instance|state~30_combout\);

-- Location: FF_X25_Y12_N29
\lcd|lcd_instance|state.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|state.S9~q\);

-- Location: LCCOMB_X21_Y12_N12
\lcd|lcd_instance|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector23~0_combout\ = \lcd|lcd_instance|state.S2~q\ $ (\lcd|lcd_instance|count_cmd\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S2~q\,
	datac => \lcd|lcd_instance|count_cmd\(0),
	combout => \lcd|lcd_instance|Selector23~0_combout\);

-- Location: FF_X21_Y12_N13
\lcd|lcd_instance|count_cmd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|Selector23~0_combout\,
	sclr => \lcd_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|count_cmd\(0));

-- Location: LCCOMB_X22_Y12_N8
\lcd|lcd_instance|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Add0~0_combout\ = \lcd|lcd_instance|count_cmd\(1) $ (\lcd|lcd_instance|count_cmd\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|lcd_instance|count_cmd\(1),
	datad => \lcd|lcd_instance|count_cmd\(0),
	combout => \lcd|lcd_instance|Add0~0_combout\);

-- Location: FF_X22_Y12_N9
\lcd|lcd_instance|count_cmd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|Add0~0_combout\,
	sclr => \lcd_rst~input_o\,
	ena => \lcd|lcd_instance|state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|count_cmd\(1));

-- Location: LCCOMB_X22_Y12_N14
\lcd|lcd_instance|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Add0~1_combout\ = \lcd|lcd_instance|count_cmd\(2) $ (((\lcd|lcd_instance|count_cmd\(1) & \lcd|lcd_instance|count_cmd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|lcd_instance|count_cmd\(1),
	datac => \lcd|lcd_instance|count_cmd\(2),
	datad => \lcd|lcd_instance|count_cmd\(0),
	combout => \lcd|lcd_instance|Add0~1_combout\);

-- Location: FF_X22_Y12_N15
\lcd|lcd_instance|count_cmd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|Add0~1_combout\,
	sclr => \lcd_rst~input_o\,
	ena => \lcd|lcd_instance|state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|count_cmd\(2));

-- Location: LCCOMB_X22_Y12_N20
\lcd|lcd_instance|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|LessThan0~0_combout\ = ((!\lcd|lcd_instance|count_cmd\(1) & !\lcd|lcd_instance|count_cmd\(0))) # (!\lcd|lcd_instance|count_cmd\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|lcd_instance|count_cmd\(2),
	datac => \lcd|lcd_instance|count_cmd\(1),
	datad => \lcd|lcd_instance|count_cmd\(0),
	combout => \lcd|lcd_instance|LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y12_N0
\lcd|lcd_instance|state~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~26_combout\ = (!\lcd|lcd_instance|state.S0~q\ & (!\lcd_rst~input_o\ & \lcd|lcd_instance|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|lcd_instance|state.S0~q\,
	datac => \lcd_rst~input_o\,
	datad => \lcd|lcd_instance|LessThan0~0_combout\,
	combout => \lcd|lcd_instance|state~26_combout\);

-- Location: FF_X21_Y12_N1
\lcd|lcd_instance|state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|state.S1~q\);

-- Location: LCCOMB_X21_Y12_N30
\lcd|lcd_instance|state~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~31_combout\ = (!\lcd_rst~input_o\ & \lcd|lcd_instance|state.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_rst~input_o\,
	datad => \lcd|lcd_instance|state.S1~q\,
	combout => \lcd|lcd_instance|state~31_combout\);

-- Location: FF_X21_Y12_N31
\lcd|lcd_instance|state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|state.S2~q\);

-- Location: LCCOMB_X22_Y12_N22
\lcd|lcd_instance|state~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~29_combout\ = (\lcd|lcd_instance|state.S2~q\) # (\lcd_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|lcd_instance|state.S2~q\,
	datad => \lcd_rst~input_o\,
	combout => \lcd|lcd_instance|state~29_combout\);

-- Location: LCCOMB_X21_Y12_N8
\lcd|lcd_instance|state.S0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state.S0~0_combout\ = !\lcd|lcd_instance|state~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd|lcd_instance|state~29_combout\,
	combout => \lcd|lcd_instance|state.S0~0_combout\);

-- Location: FF_X21_Y12_N9
\lcd|lcd_instance|state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|state.S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|state.S0~q\);

-- Location: LCCOMB_X21_Y12_N26
\lcd|lcd_instance|state~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~32_combout\ = (!\lcd_rst~input_o\ & ((\lcd|lcd_instance|state.S9~q\) # ((!\lcd|lcd_instance|state.S0~q\ & !\lcd|lcd_instance|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S9~q\,
	datab => \lcd|lcd_instance|state.S0~q\,
	datac => \lcd_rst~input_o\,
	datad => \lcd|lcd_instance|LessThan0~0_combout\,
	combout => \lcd|lcd_instance|state~32_combout\);

-- Location: FF_X21_Y12_N27
\lcd|lcd_instance|state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|state~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|state.S3~q\);

-- Location: LCCOMB_X21_Y12_N14
\lcd|lcd_instance|state~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~27_combout\ = (\lcd|lcd_instance|state.S3~q\ & !\lcd_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S3~q\,
	datac => \lcd_rst~input_o\,
	combout => \lcd|lcd_instance|state~27_combout\);

-- Location: FF_X21_Y12_N15
\lcd|lcd_instance|state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|state.S4~q\);

-- Location: LCCOMB_X21_Y12_N18
\lcd|lcd_instance|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector10~0_combout\ = (\lcd|lcd_instance|state.S4~q\) # ((\lcd|lcd_instance|state.S7~q\) # (\lcd|lcd_instance|state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S4~q\,
	datab => \lcd|lcd_instance|state.S7~q\,
	datac => \lcd|lcd_instance|state.S1~q\,
	combout => \lcd|lcd_instance|Selector10~0_combout\);

-- Location: LCCOMB_X24_Y12_N16
\lcd|lcd_instance|lcd[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|lcd[1]~0_combout\ = (!\lcd|lcd_instance|state.S9~q\ & ((\lcd|lcd_instance|state.S0~q\) # (\lcd|lcd_instance|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S0~q\,
	datac => \lcd|lcd_instance|state.S9~q\,
	datad => \lcd|lcd_instance|LessThan0~0_combout\,
	combout => \lcd|lcd_instance|lcd[1]~0_combout\);

-- Location: LCCOMB_X24_Y12_N24
\lcd|lcd_instance|Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector10~1_combout\ = (\lcd|lcd_instance|Selector10~0_combout\) # ((\lcd|lcd_instance|lcd_en~q\ & !\lcd|lcd_instance|lcd[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|lcd_instance|Selector10~0_combout\,
	datac => \lcd|lcd_instance|lcd_en~q\,
	datad => \lcd|lcd_instance|lcd[1]~0_combout\,
	combout => \lcd|lcd_instance|Selector10~1_combout\);

-- Location: FF_X24_Y12_N25
\lcd|lcd_instance|lcd_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|Selector10~1_combout\,
	ena => \ALT_INV_lcd_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|lcd_en~q\);

-- Location: LCCOMB_X21_Y12_N22
\lcd|lcd_instance|Selector8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector8~2_combout\ = (!\lcd|lcd_instance|state.S5~q\ & (!\lcd|lcd_instance|state.S3~q\ & !\lcd|lcd_instance|state.S4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|lcd_instance|state.S5~q\,
	datac => \lcd|lcd_instance|state.S3~q\,
	datad => \lcd|lcd_instance|state.S4~q\,
	combout => \lcd|lcd_instance|Selector8~2_combout\);

-- Location: LCCOMB_X22_Y12_N18
\lcd|lcd_instance|Selector8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector8~3_combout\ = (\lcd|lcd_instance|state.S0~q\ & ((\lcd|lcd_instance|lcd_rs~q\) # ((!\lcd|lcd_instance|state.S9~q\)))) # (!\lcd|lcd_instance|state.S0~q\ & (\lcd|lcd_instance|lcd_rs~q\ & 
-- ((!\lcd|lcd_instance|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S0~q\,
	datab => \lcd|lcd_instance|lcd_rs~q\,
	datac => \lcd|lcd_instance|state.S9~q\,
	datad => \lcd|lcd_instance|LessThan0~0_combout\,
	combout => \lcd|lcd_instance|Selector8~3_combout\);

-- Location: LCCOMB_X21_Y12_N6
\lcd|lcd_instance|Selector8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector8~4_combout\ = (!\lcd|lcd_instance|state.S2~q\ & (!\lcd|lcd_instance|state.S1~q\ & (\lcd|lcd_instance|Selector8~2_combout\ & \lcd|lcd_instance|Selector8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S2~q\,
	datab => \lcd|lcd_instance|state.S1~q\,
	datac => \lcd|lcd_instance|Selector8~2_combout\,
	datad => \lcd|lcd_instance|Selector8~3_combout\,
	combout => \lcd|lcd_instance|Selector8~4_combout\);

-- Location: FF_X21_Y12_N7
\lcd|lcd_instance|lcd_rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|Selector8~4_combout\,
	ena => \ALT_INV_lcd_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|lcd_rs~q\);

-- Location: LCCOMB_X27_Y9_N4
\lcd|covid_det_instance|bit_index[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|bit_index[2]~0_combout\ = \lcd|covid_det_instance|bit_index\(2) $ (((\lcd|covid_det_instance|bit_index\(0) & (!\lcd|covid_det_instance|bit_index\(3) & \lcd|covid_det_instance|bit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(0),
	datab => \lcd|covid_det_instance|bit_index\(2),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(1),
	combout => \lcd|covid_det_instance|bit_index[2]~0_combout\);

-- Location: FF_X27_Y9_N13
\lcd|covid_det_instance|bit_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	asdata => \lcd|covid_det_instance|bit_index[2]~0_combout\,
	clrn => \ALT_INV_lcd_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|covid_det_instance|bit_index\(2));

-- Location: LCCOMB_X28_Y9_N18
\lcd|covid_det_instance|bit_index[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|bit_index[0]~3_combout\ = (\lcd|covid_det_instance|bit_index\(0) & (((\lcd|covid_det_instance|bit_index\(3))))) # (!\lcd|covid_det_instance|bit_index\(0) & (((!\lcd|covid_det_instance|bit_index\(1) & 
-- !\lcd|covid_det_instance|bit_index\(2))) # (!\lcd|covid_det_instance|bit_index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(1),
	datab => \lcd|covid_det_instance|bit_index\(0),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(2),
	combout => \lcd|covid_det_instance|bit_index[0]~3_combout\);

-- Location: FF_X28_Y9_N31
\lcd|covid_det_instance|bit_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \lcd|covid_det_instance|bit_index[0]~3_combout\,
	clrn => \ALT_INV_lcd_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|covid_det_instance|bit_index\(0));

-- Location: LCCOMB_X28_Y9_N0
\lcd|covid_det_instance|bit_index[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|bit_index[1]~1_combout\ = \lcd|covid_det_instance|bit_index\(1) $ (((\lcd|covid_det_instance|bit_index\(0) & !\lcd|covid_det_instance|bit_index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|covid_det_instance|bit_index\(0),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(1),
	combout => \lcd|covid_det_instance|bit_index[1]~1_combout\);

-- Location: FF_X28_Y9_N3
\lcd|covid_det_instance|bit_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	asdata => \lcd|covid_det_instance|bit_index[1]~1_combout\,
	clrn => \ALT_INV_lcd_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|covid_det_instance|bit_index\(1));

-- Location: LCCOMB_X28_Y9_N6
\lcd|covid_det_instance|bit_index[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|bit_index[3]~2_combout\ = (\lcd|covid_det_instance|bit_index\(3)) # ((\lcd|covid_det_instance|bit_index\(1) & (\lcd|covid_det_instance|bit_index\(0) & \lcd|covid_det_instance|bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(1),
	datab => \lcd|covid_det_instance|bit_index\(0),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(2),
	combout => \lcd|covid_det_instance|bit_index[3]~2_combout\);

-- Location: FF_X28_Y9_N11
\lcd|covid_det_instance|bit_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	asdata => \lcd|covid_det_instance|bit_index[3]~2_combout\,
	clrn => \ALT_INV_lcd_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|covid_det_instance|bit_index\(3));

-- Location: LCCOMB_X28_Y9_N4
\lcd|covid_det_instance|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Mux0~0_combout\ = (\lcd|covid_det_instance|bit_index\(0) & ((\spi|data_register\(1)))) # (!\lcd|covid_det_instance|bit_index\(0) & (\spi|data_register\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|data_register\(0),
	datac => \lcd|covid_det_instance|bit_index\(0),
	datad => \spi|data_register\(1),
	combout => \lcd|covid_det_instance|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y9_N20
\lcd|covid_det_instance|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Mux0~1_combout\ = (\lcd|covid_det_instance|bit_index\(0) & (\spi|data_register\(3))) # (!\lcd|covid_det_instance|bit_index\(0) & ((\spi|data_register\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|data_register\(3),
	datac => \lcd|covid_det_instance|bit_index\(0),
	datad => \spi|data_register\(2),
	combout => \lcd|covid_det_instance|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y9_N26
\lcd|covid_det_instance|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Mux0~2_combout\ = (\lcd|covid_det_instance|bit_index\(3) & (!\lcd|covid_det_instance|bit_index\(1))) # (!\lcd|covid_det_instance|bit_index\(3) & ((\lcd|covid_det_instance|bit_index\(1) & ((\lcd|covid_det_instance|Mux0~1_combout\))) 
-- # (!\lcd|covid_det_instance|bit_index\(1) & (\lcd|covid_det_instance|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(3),
	datab => \lcd|covid_det_instance|bit_index\(1),
	datac => \lcd|covid_det_instance|Mux0~0_combout\,
	datad => \lcd|covid_det_instance|Mux0~1_combout\,
	combout => \lcd|covid_det_instance|Mux0~2_combout\);

-- Location: LCCOMB_X28_Y9_N8
\lcd|covid_det_instance|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Mux0~3_combout\ = (\lcd|covid_det_instance|bit_index\(0) & ((\spi|data_register\(7)) # ((!\lcd|covid_det_instance|bit_index\(1))))) # (!\lcd|covid_det_instance|bit_index\(0) & (((\spi|data_register\(6) & 
-- \lcd|covid_det_instance|bit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(0),
	datab => \spi|data_register\(7),
	datac => \spi|data_register\(6),
	datad => \lcd|covid_det_instance|bit_index\(1),
	combout => \lcd|covid_det_instance|Mux0~3_combout\);

-- Location: LCCOMB_X28_Y9_N14
\lcd|covid_det_instance|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Mux0~4_combout\ = (\lcd|covid_det_instance|bit_index\(1) & (((\lcd|covid_det_instance|Mux0~3_combout\)))) # (!\lcd|covid_det_instance|bit_index\(1) & ((\lcd|covid_det_instance|Mux0~3_combout\ & ((\spi|data_register\(5)))) # 
-- (!\lcd|covid_det_instance|Mux0~3_combout\ & (\spi|data_register\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|data_register\(4),
	datab => \lcd|covid_det_instance|bit_index\(1),
	datac => \lcd|covid_det_instance|Mux0~3_combout\,
	datad => \spi|data_register\(5),
	combout => \lcd|covid_det_instance|Mux0~4_combout\);

-- Location: LCCOMB_X28_Y9_N24
\lcd|covid_det_instance|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Mux0~5_combout\ = (\lcd|covid_det_instance|bit_index\(0) & (\spi|data_register\(9))) # (!\lcd|covid_det_instance|bit_index\(0) & ((\spi|data_register\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|data_register\(9),
	datac => \lcd|covid_det_instance|bit_index\(0),
	datad => \spi|data_register\(8),
	combout => \lcd|covid_det_instance|Mux0~5_combout\);

-- Location: LCCOMB_X28_Y9_N16
\lcd|covid_det_instance|Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Mux0~6_combout\ = ((!\lcd|covid_det_instance|bit_index\(2) & \lcd|covid_det_instance|Mux0~5_combout\)) # (!\lcd|covid_det_instance|bit_index\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(2),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|Mux0~5_combout\,
	combout => \lcd|covid_det_instance|Mux0~6_combout\);

-- Location: LCCOMB_X28_Y9_N22
\lcd|covid_det_instance|Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Mux0~7_combout\ = (\lcd|covid_det_instance|Mux0~6_combout\ & ((\lcd|covid_det_instance|bit_index\(2) & ((\lcd|covid_det_instance|Mux0~4_combout\))) # (!\lcd|covid_det_instance|bit_index\(2) & 
-- (\lcd|covid_det_instance|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|Mux0~2_combout\,
	datab => \lcd|covid_det_instance|bit_index\(2),
	datac => \lcd|covid_det_instance|Mux0~4_combout\,
	datad => \lcd|covid_det_instance|Mux0~6_combout\,
	combout => \lcd|covid_det_instance|Mux0~7_combout\);

-- Location: LCCOMB_X21_Y12_N28
\lcd|lcd_instance|lcd[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|lcd[7]~1_combout\ = (\lcd|lcd_instance|state.S6~q\) # ((\lcd|lcd_instance|state.S8~q\) # (\lcd|lcd_instance|state.S7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|lcd_instance|state.S6~q\,
	datac => \lcd|lcd_instance|state.S8~q\,
	datad => \lcd|lcd_instance|state.S7~q\,
	combout => \lcd|lcd_instance|lcd[7]~1_combout\);

-- Location: FF_X28_Y18_N25
\lcd|div_clk[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(28));

-- Location: LCCOMB_X28_Y19_N0
\lcd|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~0_combout\ = \lcd|div_clk_new\(0) $ (VCC)
-- \lcd|Add0~1\ = CARRY(\lcd|div_clk_new\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk_new\(0),
	datad => VCC,
	combout => \lcd|Add0~0_combout\,
	cout => \lcd|Add0~1\);

-- Location: LCCOMB_X28_Y19_N2
\lcd|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~2_combout\ = (\lcd|div_clk_new\(1) & (!\lcd|Add0~1\)) # (!\lcd|div_clk_new\(1) & ((\lcd|Add0~1\) # (GND)))
-- \lcd|Add0~3\ = CARRY((!\lcd|Add0~1\) # (!\lcd|div_clk_new\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(1),
	datad => VCC,
	cin => \lcd|Add0~1\,
	combout => \lcd|Add0~2_combout\,
	cout => \lcd|Add0~3\);

-- Location: LCCOMB_X28_Y19_N4
\lcd|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~4_combout\ = (\lcd|div_clk\(2) & (\lcd|Add0~3\ $ (GND))) # (!\lcd|div_clk\(2) & (!\lcd|Add0~3\ & VCC))
-- \lcd|Add0~5\ = CARRY((\lcd|div_clk\(2) & !\lcd|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk\(2),
	datad => VCC,
	cin => \lcd|Add0~3\,
	combout => \lcd|Add0~4_combout\,
	cout => \lcd|Add0~5\);

-- Location: FF_X28_Y19_N5
\lcd|div_clk[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(2));

-- Location: LCCOMB_X28_Y19_N6
\lcd|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~6_combout\ = (\lcd|div_clk\(3) & (!\lcd|Add0~5\)) # (!\lcd|div_clk\(3) & ((\lcd|Add0~5\) # (GND)))
-- \lcd|Add0~7\ = CARRY((!\lcd|Add0~5\) # (!\lcd|div_clk\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk\(3),
	datad => VCC,
	cin => \lcd|Add0~5\,
	combout => \lcd|Add0~6_combout\,
	cout => \lcd|Add0~7\);

-- Location: FF_X28_Y19_N7
\lcd|div_clk[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(3));

-- Location: LCCOMB_X28_Y19_N8
\lcd|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~8_combout\ = (\lcd|div_clk\(4) & (\lcd|Add0~7\ $ (GND))) # (!\lcd|div_clk\(4) & (!\lcd|Add0~7\ & VCC))
-- \lcd|Add0~9\ = CARRY((\lcd|div_clk\(4) & !\lcd|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk\(4),
	datad => VCC,
	cin => \lcd|Add0~7\,
	combout => \lcd|Add0~8_combout\,
	cout => \lcd|Add0~9\);

-- Location: FF_X28_Y19_N9
\lcd|div_clk[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(4));

-- Location: LCCOMB_X28_Y19_N10
\lcd|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~10_combout\ = (\lcd|div_clk\(5) & (!\lcd|Add0~9\)) # (!\lcd|div_clk\(5) & ((\lcd|Add0~9\) # (GND)))
-- \lcd|Add0~11\ = CARRY((!\lcd|Add0~9\) # (!\lcd|div_clk\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk\(5),
	datad => VCC,
	cin => \lcd|Add0~9\,
	combout => \lcd|Add0~10_combout\,
	cout => \lcd|Add0~11\);

-- Location: FF_X28_Y19_N11
\lcd|div_clk[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(5));

-- Location: LCCOMB_X28_Y19_N12
\lcd|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~12_combout\ = (\lcd|div_clk\(6) & (\lcd|Add0~11\ $ (GND))) # (!\lcd|div_clk\(6) & (!\lcd|Add0~11\ & VCC))
-- \lcd|Add0~13\ = CARRY((\lcd|div_clk\(6) & !\lcd|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk\(6),
	datad => VCC,
	cin => \lcd|Add0~11\,
	combout => \lcd|Add0~12_combout\,
	cout => \lcd|Add0~13\);

-- Location: LCCOMB_X27_Y18_N30
\lcd|div_clk~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk~2_combout\ = (\lcd|Add0~12_combout\ & !\lcd|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|Add0~12_combout\,
	datad => \lcd|Equal1~3_combout\,
	combout => \lcd|div_clk~2_combout\);

-- Location: FF_X27_Y18_N31
\lcd|div_clk[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|div_clk~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(6));

-- Location: LCCOMB_X28_Y19_N14
\lcd|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~14_combout\ = (\lcd|div_clk\(7) & (!\lcd|Add0~13\)) # (!\lcd|div_clk\(7) & ((\lcd|Add0~13\) # (GND)))
-- \lcd|Add0~15\ = CARRY((!\lcd|Add0~13\) # (!\lcd|div_clk\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk\(7),
	datad => VCC,
	cin => \lcd|Add0~13\,
	combout => \lcd|Add0~14_combout\,
	cout => \lcd|Add0~15\);

-- Location: FF_X28_Y19_N15
\lcd|div_clk[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(7));

-- Location: LCCOMB_X28_Y19_N16
\lcd|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~16_combout\ = (\lcd|div_clk\(8) & (\lcd|Add0~15\ $ (GND))) # (!\lcd|div_clk\(8) & (!\lcd|Add0~15\ & VCC))
-- \lcd|Add0~17\ = CARRY((\lcd|div_clk\(8) & !\lcd|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk\(8),
	datad => VCC,
	cin => \lcd|Add0~15\,
	combout => \lcd|Add0~16_combout\,
	cout => \lcd|Add0~17\);

-- Location: LCCOMB_X27_Y18_N24
\lcd|div_clk~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk~1_combout\ = (\lcd|Add0~16_combout\ & !\lcd|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|Add0~16_combout\,
	datad => \lcd|Equal1~3_combout\,
	combout => \lcd|div_clk~1_combout\);

-- Location: FF_X27_Y18_N25
\lcd|div_clk[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|div_clk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(8));

-- Location: LCCOMB_X28_Y19_N18
\lcd|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~18_combout\ = (\lcd|div_clk\(9) & (!\lcd|Add0~17\)) # (!\lcd|div_clk\(9) & ((\lcd|Add0~17\) # (GND)))
-- \lcd|Add0~19\ = CARRY((!\lcd|Add0~17\) # (!\lcd|div_clk\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk\(9),
	datad => VCC,
	cin => \lcd|Add0~17\,
	combout => \lcd|Add0~18_combout\,
	cout => \lcd|Add0~19\);

-- Location: FF_X28_Y19_N19
\lcd|div_clk[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(9));

-- Location: LCCOMB_X28_Y19_N20
\lcd|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~20_combout\ = (\lcd|div_clk\(10) & (\lcd|Add0~19\ $ (GND))) # (!\lcd|div_clk\(10) & (!\lcd|Add0~19\ & VCC))
-- \lcd|Add0~21\ = CARRY((\lcd|div_clk\(10) & !\lcd|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk\(10),
	datad => VCC,
	cin => \lcd|Add0~19\,
	combout => \lcd|Add0~20_combout\,
	cout => \lcd|Add0~21\);

-- Location: LCCOMB_X28_Y19_N22
\lcd|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~22_combout\ = (\lcd|div_clk\(11) & (!\lcd|Add0~21\)) # (!\lcd|div_clk\(11) & ((\lcd|Add0~21\) # (GND)))
-- \lcd|Add0~23\ = CARRY((!\lcd|Add0~21\) # (!\lcd|div_clk\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk\(11),
	datad => VCC,
	cin => \lcd|Add0~21\,
	combout => \lcd|Add0~22_combout\,
	cout => \lcd|Add0~23\);

-- Location: LCCOMB_X27_Y18_N18
\lcd|div_clk~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk~3_combout\ = (\lcd|Add0~22_combout\ & !\lcd|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~22_combout\,
	datad => \lcd|Equal1~3_combout\,
	combout => \lcd|div_clk~3_combout\);

-- Location: FF_X27_Y18_N19
\lcd|div_clk[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|div_clk~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(11));

-- Location: LCCOMB_X28_Y19_N24
\lcd|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~24_combout\ = (\lcd|div_clk\(12) & (\lcd|Add0~23\ $ (GND))) # (!\lcd|div_clk\(12) & (!\lcd|Add0~23\ & VCC))
-- \lcd|Add0~25\ = CARRY((\lcd|div_clk\(12) & !\lcd|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk\(12),
	datad => VCC,
	cin => \lcd|Add0~23\,
	combout => \lcd|Add0~24_combout\,
	cout => \lcd|Add0~25\);

-- Location: FF_X28_Y19_N25
\lcd|div_clk[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(12));

-- Location: LCCOMB_X28_Y19_N26
\lcd|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~26_combout\ = (\lcd|div_clk\(13) & (!\lcd|Add0~25\)) # (!\lcd|div_clk\(13) & ((\lcd|Add0~25\) # (GND)))
-- \lcd|Add0~27\ = CARRY((!\lcd|Add0~25\) # (!\lcd|div_clk\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk\(13),
	datad => VCC,
	cin => \lcd|Add0~25\,
	combout => \lcd|Add0~26_combout\,
	cout => \lcd|Add0~27\);

-- Location: FF_X28_Y19_N27
\lcd|div_clk[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(13));

-- Location: LCCOMB_X28_Y19_N28
\lcd|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~28_combout\ = (\lcd|div_clk\(14) & (\lcd|Add0~27\ $ (GND))) # (!\lcd|div_clk\(14) & (!\lcd|Add0~27\ & VCC))
-- \lcd|Add0~29\ = CARRY((\lcd|div_clk\(14) & !\lcd|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk\(14),
	datad => VCC,
	cin => \lcd|Add0~27\,
	combout => \lcd|Add0~28_combout\,
	cout => \lcd|Add0~29\);

-- Location: FF_X28_Y19_N29
\lcd|div_clk[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(14));

-- Location: LCCOMB_X28_Y19_N30
\lcd|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~30_combout\ = (\lcd|div_clk\(15) & (!\lcd|Add0~29\)) # (!\lcd|div_clk\(15) & ((\lcd|Add0~29\) # (GND)))
-- \lcd|Add0~31\ = CARRY((!\lcd|Add0~29\) # (!\lcd|div_clk\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk\(15),
	datad => VCC,
	cin => \lcd|Add0~29\,
	combout => \lcd|Add0~30_combout\,
	cout => \lcd|Add0~31\);

-- Location: FF_X28_Y19_N31
\lcd|div_clk[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(15));

-- Location: LCCOMB_X28_Y18_N0
\lcd|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~32_combout\ = (\lcd|div_clk\(16) & (\lcd|Add0~31\ $ (GND))) # (!\lcd|div_clk\(16) & (!\lcd|Add0~31\ & VCC))
-- \lcd|Add0~33\ = CARRY((\lcd|div_clk\(16) & !\lcd|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk\(16),
	datad => VCC,
	cin => \lcd|Add0~31\,
	combout => \lcd|Add0~32_combout\,
	cout => \lcd|Add0~33\);

-- Location: LCCOMB_X27_Y18_N0
\lcd|div_clk~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk~4_combout\ = (\lcd|Add0~32_combout\ & !\lcd|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|Add0~32_combout\,
	datad => \lcd|Equal1~3_combout\,
	combout => \lcd|div_clk~4_combout\);

-- Location: FF_X27_Y18_N1
\lcd|div_clk[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|div_clk~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(16));

-- Location: LCCOMB_X28_Y18_N2
\lcd|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~34_combout\ = (\lcd|div_clk\(17) & (!\lcd|Add0~33\)) # (!\lcd|div_clk\(17) & ((\lcd|Add0~33\) # (GND)))
-- \lcd|Add0~35\ = CARRY((!\lcd|Add0~33\) # (!\lcd|div_clk\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk\(17),
	datad => VCC,
	cin => \lcd|Add0~33\,
	combout => \lcd|Add0~34_combout\,
	cout => \lcd|Add0~35\);

-- Location: LCCOMB_X27_Y18_N8
\lcd|div_clk~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk~5_combout\ = (\lcd|Add0~34_combout\ & !\lcd|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~34_combout\,
	datad => \lcd|Equal1~3_combout\,
	combout => \lcd|div_clk~5_combout\);

-- Location: FF_X27_Y18_N9
\lcd|div_clk[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|div_clk~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(17));

-- Location: LCCOMB_X28_Y18_N4
\lcd|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~36_combout\ = (\lcd|div_clk\(18) & (\lcd|Add0~35\ $ (GND))) # (!\lcd|div_clk\(18) & (!\lcd|Add0~35\ & VCC))
-- \lcd|Add0~37\ = CARRY((\lcd|div_clk\(18) & !\lcd|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk\(18),
	datad => VCC,
	cin => \lcd|Add0~35\,
	combout => \lcd|Add0~36_combout\,
	cout => \lcd|Add0~37\);

-- Location: FF_X28_Y18_N5
\lcd|div_clk[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(18));

-- Location: LCCOMB_X28_Y18_N6
\lcd|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~38_combout\ = (\lcd|div_clk\(19) & (!\lcd|Add0~37\)) # (!\lcd|div_clk\(19) & ((\lcd|Add0~37\) # (GND)))
-- \lcd|Add0~39\ = CARRY((!\lcd|Add0~37\) # (!\lcd|div_clk\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk\(19),
	datad => VCC,
	cin => \lcd|Add0~37\,
	combout => \lcd|Add0~38_combout\,
	cout => \lcd|Add0~39\);

-- Location: FF_X28_Y18_N7
\lcd|div_clk[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(19));

-- Location: LCCOMB_X28_Y18_N8
\lcd|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~40_combout\ = (\lcd|div_clk\(20) & (\lcd|Add0~39\ $ (GND))) # (!\lcd|div_clk\(20) & (!\lcd|Add0~39\ & VCC))
-- \lcd|Add0~41\ = CARRY((\lcd|div_clk\(20) & !\lcd|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk\(20),
	datad => VCC,
	cin => \lcd|Add0~39\,
	combout => \lcd|Add0~40_combout\,
	cout => \lcd|Add0~41\);

-- Location: FF_X28_Y18_N9
\lcd|div_clk[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(20));

-- Location: LCCOMB_X28_Y18_N10
\lcd|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~42_combout\ = (\lcd|div_clk\(21) & (!\lcd|Add0~41\)) # (!\lcd|div_clk\(21) & ((\lcd|Add0~41\) # (GND)))
-- \lcd|Add0~43\ = CARRY((!\lcd|Add0~41\) # (!\lcd|div_clk\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk\(21),
	datad => VCC,
	cin => \lcd|Add0~41\,
	combout => \lcd|Add0~42_combout\,
	cout => \lcd|Add0~43\);

-- Location: FF_X28_Y18_N11
\lcd|div_clk[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(21));

-- Location: LCCOMB_X28_Y18_N12
\lcd|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~44_combout\ = (\lcd|div_clk\(22) & (\lcd|Add0~43\ $ (GND))) # (!\lcd|div_clk\(22) & (!\lcd|Add0~43\ & VCC))
-- \lcd|Add0~45\ = CARRY((\lcd|div_clk\(22) & !\lcd|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk\(22),
	datad => VCC,
	cin => \lcd|Add0~43\,
	combout => \lcd|Add0~44_combout\,
	cout => \lcd|Add0~45\);

-- Location: FF_X28_Y18_N13
\lcd|div_clk[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(22));

-- Location: LCCOMB_X28_Y18_N14
\lcd|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~46_combout\ = (\lcd|div_clk\(23) & (!\lcd|Add0~45\)) # (!\lcd|div_clk\(23) & ((\lcd|Add0~45\) # (GND)))
-- \lcd|Add0~47\ = CARRY((!\lcd|Add0~45\) # (!\lcd|div_clk\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk\(23),
	datad => VCC,
	cin => \lcd|Add0~45\,
	combout => \lcd|Add0~46_combout\,
	cout => \lcd|Add0~47\);

-- Location: FF_X28_Y18_N15
\lcd|div_clk[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(23));

-- Location: LCCOMB_X28_Y18_N16
\lcd|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~48_combout\ = (\lcd|div_clk\(24) & (\lcd|Add0~47\ $ (GND))) # (!\lcd|div_clk\(24) & (!\lcd|Add0~47\ & VCC))
-- \lcd|Add0~49\ = CARRY((\lcd|div_clk\(24) & !\lcd|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk\(24),
	datad => VCC,
	cin => \lcd|Add0~47\,
	combout => \lcd|Add0~48_combout\,
	cout => \lcd|Add0~49\);

-- Location: FF_X28_Y18_N17
\lcd|div_clk[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(24));

-- Location: LCCOMB_X28_Y18_N18
\lcd|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~50_combout\ = (\lcd|div_clk\(25) & (!\lcd|Add0~49\)) # (!\lcd|div_clk\(25) & ((\lcd|Add0~49\) # (GND)))
-- \lcd|Add0~51\ = CARRY((!\lcd|Add0~49\) # (!\lcd|div_clk\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk\(25),
	datad => VCC,
	cin => \lcd|Add0~49\,
	combout => \lcd|Add0~50_combout\,
	cout => \lcd|Add0~51\);

-- Location: FF_X28_Y18_N19
\lcd|div_clk[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(25));

-- Location: LCCOMB_X28_Y18_N20
\lcd|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~52_combout\ = (\lcd|div_clk\(26) & (\lcd|Add0~51\ $ (GND))) # (!\lcd|div_clk\(26) & (!\lcd|Add0~51\ & VCC))
-- \lcd|Add0~53\ = CARRY((\lcd|div_clk\(26) & !\lcd|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk\(26),
	datad => VCC,
	cin => \lcd|Add0~51\,
	combout => \lcd|Add0~52_combout\,
	cout => \lcd|Add0~53\);

-- Location: FF_X28_Y18_N21
\lcd|div_clk[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(26));

-- Location: LCCOMB_X28_Y18_N22
\lcd|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~54_combout\ = (\lcd|div_clk\(27) & (!\lcd|Add0~53\)) # (!\lcd|div_clk\(27) & ((\lcd|Add0~53\) # (GND)))
-- \lcd|Add0~55\ = CARRY((!\lcd|Add0~53\) # (!\lcd|div_clk\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk\(27),
	datad => VCC,
	cin => \lcd|Add0~53\,
	combout => \lcd|Add0~54_combout\,
	cout => \lcd|Add0~55\);

-- Location: FF_X28_Y18_N23
\lcd|div_clk[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(27));

-- Location: LCCOMB_X28_Y18_N24
\lcd|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~56_combout\ = (\lcd|div_clk\(28) & (\lcd|Add0~55\ $ (GND))) # (!\lcd|div_clk\(28) & (!\lcd|Add0~55\ & VCC))
-- \lcd|Add0~57\ = CARRY((\lcd|div_clk\(28) & !\lcd|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk\(28),
	datad => VCC,
	cin => \lcd|Add0~55\,
	combout => \lcd|Add0~56_combout\,
	cout => \lcd|Add0~57\);

-- Location: FF_X28_Y18_N29
\lcd|div_clk[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(30));

-- Location: LCCOMB_X28_Y18_N26
\lcd|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~58_combout\ = (\lcd|div_clk\(29) & (!\lcd|Add0~57\)) # (!\lcd|div_clk\(29) & ((\lcd|Add0~57\) # (GND)))
-- \lcd|Add0~59\ = CARRY((!\lcd|Add0~57\) # (!\lcd|div_clk\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk\(29),
	datad => VCC,
	cin => \lcd|Add0~57\,
	combout => \lcd|Add0~58_combout\,
	cout => \lcd|Add0~59\);

-- Location: FF_X28_Y18_N27
\lcd|div_clk[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(29));

-- Location: LCCOMB_X28_Y18_N28
\lcd|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~60_combout\ = (\lcd|div_clk\(30) & (\lcd|Add0~59\ $ (GND))) # (!\lcd|div_clk\(30) & (!\lcd|Add0~59\ & VCC))
-- \lcd|Add0~61\ = CARRY((\lcd|div_clk\(30) & !\lcd|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk\(30),
	datad => VCC,
	cin => \lcd|Add0~59\,
	combout => \lcd|Add0~60_combout\,
	cout => \lcd|Add0~61\);

-- Location: FF_X28_Y18_N31
\lcd|div_clk[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(31));

-- Location: LCCOMB_X28_Y18_N30
\lcd|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~62_combout\ = \lcd|div_clk\(31) $ (\lcd|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk\(31),
	cin => \lcd|Add0~61\,
	combout => \lcd|Add0~62_combout\);

-- Location: LCCOMB_X27_Y18_N6
\lcd|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal0~6_combout\ = (!\lcd|Add0~56_combout\ & (!\lcd|Add0~60_combout\ & (!\lcd|Add0~58_combout\ & !\lcd|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~56_combout\,
	datab => \lcd|Add0~60_combout\,
	datac => \lcd|Add0~58_combout\,
	datad => \lcd|Add0~62_combout\,
	combout => \lcd|Equal0~6_combout\);

-- Location: LCCOMB_X27_Y18_N2
\lcd|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal0~5_combout\ = (!\lcd|Add0~48_combout\ & (!\lcd|Add0~50_combout\ & (!\lcd|Add0~52_combout\ & !\lcd|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~48_combout\,
	datab => \lcd|Add0~50_combout\,
	datac => \lcd|Add0~52_combout\,
	datad => \lcd|Add0~54_combout\,
	combout => \lcd|Equal0~5_combout\);

-- Location: LCCOMB_X27_Y19_N20
\lcd|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal1~0_combout\ = (!\lcd|Add0~14_combout\ & (!\lcd|Add0~10_combout\ & (\lcd|Add0~12_combout\ & \lcd|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~14_combout\,
	datab => \lcd|Add0~10_combout\,
	datac => \lcd|Add0~12_combout\,
	datad => \lcd|Add0~16_combout\,
	combout => \lcd|Equal1~0_combout\);

-- Location: LCCOMB_X27_Y18_N20
\lcd|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal1~1_combout\ = (!\lcd|Add0~18_combout\ & \lcd|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|Add0~18_combout\,
	datad => \lcd|Add0~22_combout\,
	combout => \lcd|Equal1~1_combout\);

-- Location: LCCOMB_X27_Y18_N10
\lcd|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal1~2_combout\ = (\lcd|Add0~34_combout\ & (!\lcd|Add0~30_combout\ & (\lcd|Equal1~0_combout\ & \lcd|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~34_combout\,
	datab => \lcd|Add0~30_combout\,
	datac => \lcd|Equal1~0_combout\,
	datad => \lcd|Equal1~1_combout\,
	combout => \lcd|Equal1~2_combout\);

-- Location: LCCOMB_X27_Y18_N12
\lcd|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal1~3_combout\ = (\lcd|Equal0~6_combout\ & (\lcd|Equal0~5_combout\ & (\lcd|Equal1~2_combout\ & \lcd|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal0~6_combout\,
	datab => \lcd|Equal0~5_combout\,
	datac => \lcd|Equal1~2_combout\,
	datad => \lcd|Equal0~4_combout\,
	combout => \lcd|Equal1~3_combout\);

-- Location: LCCOMB_X27_Y18_N26
\lcd|div_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk~0_combout\ = (\lcd|Add0~20_combout\ & !\lcd|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|Add0~20_combout\,
	datad => \lcd|Equal1~3_combout\,
	combout => \lcd|div_clk~0_combout\);

-- Location: FF_X27_Y18_N27
\lcd|div_clk[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|div_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|div_clk\(10));

-- Location: LCCOMB_X27_Y19_N26
\lcd|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal0~1_combout\ = (\lcd|Add0~20_combout\ & (!\lcd|Add0~26_combout\ & (!\lcd|Add0~8_combout\ & !\lcd|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~20_combout\,
	datab => \lcd|Add0~26_combout\,
	datac => \lcd|Add0~8_combout\,
	datad => \lcd|Add0~24_combout\,
	combout => \lcd|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y19_N4
\lcd|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal0~0_combout\ = (!\lcd|Add0~2_combout\ & (!\lcd|Add0~0_combout\ & (!\lcd|Add0~4_combout\ & !\lcd|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~2_combout\,
	datab => \lcd|Add0~0_combout\,
	datac => \lcd|Add0~4_combout\,
	datad => \lcd|Add0~6_combout\,
	combout => \lcd|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y18_N4
\lcd|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal0~3_combout\ = (!\lcd|Add0~42_combout\ & (!\lcd|Add0~40_combout\ & (!\lcd|Add0~44_combout\ & !\lcd|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~42_combout\,
	datab => \lcd|Add0~40_combout\,
	datac => \lcd|Add0~44_combout\,
	datad => \lcd|Add0~46_combout\,
	combout => \lcd|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y18_N28
\lcd|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal0~2_combout\ = (!\lcd|Add0~36_combout\ & (\lcd|Add0~32_combout\ & (!\lcd|Add0~28_combout\ & !\lcd|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~36_combout\,
	datab => \lcd|Add0~32_combout\,
	datac => \lcd|Add0~28_combout\,
	datad => \lcd|Add0~38_combout\,
	combout => \lcd|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y18_N14
\lcd|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal0~4_combout\ = (\lcd|Equal0~1_combout\ & (\lcd|Equal0~0_combout\ & (\lcd|Equal0~3_combout\ & \lcd|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal0~1_combout\,
	datab => \lcd|Equal0~0_combout\,
	datac => \lcd|Equal0~3_combout\,
	datad => \lcd|Equal0~2_combout\,
	combout => \lcd|Equal0~4_combout\);

-- Location: LCCOMB_X27_Y19_N30
\lcd|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal0~7_combout\ = (\lcd|Add0~14_combout\ & (\lcd|Add0~10_combout\ & (!\lcd|Add0~12_combout\ & !\lcd|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~14_combout\,
	datab => \lcd|Add0~10_combout\,
	datac => \lcd|Add0~12_combout\,
	datad => \lcd|Add0~16_combout\,
	combout => \lcd|Equal0~7_combout\);

-- Location: LCCOMB_X27_Y18_N4
\lcd|lcd_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_clk~0_combout\ = (!\lcd|Add0~34_combout\ & (\lcd|Add0~18_combout\ & (\lcd|Add0~30_combout\ & !\lcd|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~34_combout\,
	datab => \lcd|Add0~18_combout\,
	datac => \lcd|Add0~30_combout\,
	datad => \lcd|Add0~22_combout\,
	combout => \lcd|lcd_clk~0_combout\);

-- Location: LCCOMB_X27_Y18_N14
\lcd|lcd_clk~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_clk~1_combout\ = (\lcd|Equal0~7_combout\ & (\lcd|Equal0~5_combout\ & (\lcd|lcd_clk~0_combout\ & \lcd|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal0~7_combout\,
	datab => \lcd|Equal0~5_combout\,
	datac => \lcd|lcd_clk~0_combout\,
	datad => \lcd|Equal0~6_combout\,
	combout => \lcd|lcd_clk~1_combout\);

-- Location: LCCOMB_X27_Y18_N22
\lcd|lcd_clk~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_clk~2_combout\ = (\lcd|Equal0~4_combout\ & ((\lcd|lcd_clk~1_combout\) # ((\lcd|lcd_clk~q\ & !\lcd|Equal1~3_combout\)))) # (!\lcd|Equal0~4_combout\ & (((\lcd|lcd_clk~q\ & !\lcd|Equal1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal0~4_combout\,
	datab => \lcd|lcd_clk~1_combout\,
	datac => \lcd|lcd_clk~q\,
	datad => \lcd|Equal1~3_combout\,
	combout => \lcd|lcd_clk~2_combout\);

-- Location: LCCOMB_X27_Y18_N16
\lcd|lcd_clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_clk~feeder_combout\ = \lcd|lcd_clk~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd|lcd_clk~2_combout\,
	combout => \lcd|lcd_clk~feeder_combout\);

-- Location: FF_X27_Y18_N17
\lcd|lcd_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|lcd_clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_clk~q\);

-- Location: CLKCTRL_G14
\lcd|lcd_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \lcd|lcd_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \lcd|lcd_clk~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y12_N0
\lcd|i[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[0]~32_combout\ = \lcd|i\(0) $ (VCC)
-- \lcd|i[0]~33\ = CARRY(\lcd|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(0),
	datad => VCC,
	combout => \lcd|i[0]~32_combout\,
	cout => \lcd|i[0]~33\);

-- Location: LCCOMB_X26_Y12_N2
\lcd|i[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[1]~34_combout\ = (\lcd|i\(1) & (!\lcd|i[0]~33\)) # (!\lcd|i\(1) & ((\lcd|i[0]~33\) # (GND)))
-- \lcd|i[1]~35\ = CARRY((!\lcd|i[0]~33\) # (!\lcd|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(1),
	datad => VCC,
	cin => \lcd|i[0]~33\,
	combout => \lcd|i[1]~34_combout\,
	cout => \lcd|i[1]~35\);

-- Location: LCCOMB_X26_Y12_N4
\lcd|i[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[2]~36_combout\ = (\lcd|i\(2) & (\lcd|i[1]~35\ $ (GND))) # (!\lcd|i\(2) & (!\lcd|i[1]~35\ & VCC))
-- \lcd|i[2]~37\ = CARRY((\lcd|i\(2) & !\lcd|i[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(2),
	datad => VCC,
	cin => \lcd|i[1]~35\,
	combout => \lcd|i[2]~36_combout\,
	cout => \lcd|i[2]~37\);

-- Location: LCCOMB_X26_Y12_N6
\lcd|i[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[3]~38_combout\ = (\lcd|i\(3) & (!\lcd|i[2]~37\)) # (!\lcd|i\(3) & ((\lcd|i[2]~37\) # (GND)))
-- \lcd|i[3]~39\ = CARRY((!\lcd|i[2]~37\) # (!\lcd|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(3),
	datad => VCC,
	cin => \lcd|i[2]~37\,
	combout => \lcd|i[3]~38_combout\,
	cout => \lcd|i[3]~39\);

-- Location: FF_X26_Y12_N7
\lcd|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[3]~38_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(3));

-- Location: LCCOMB_X26_Y12_N8
\lcd|i[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[4]~40_combout\ = (\lcd|i\(4) & (\lcd|i[3]~39\ $ (GND))) # (!\lcd|i\(4) & (!\lcd|i[3]~39\ & VCC))
-- \lcd|i[4]~41\ = CARRY((\lcd|i\(4) & !\lcd|i[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(4),
	datad => VCC,
	cin => \lcd|i[3]~39\,
	combout => \lcd|i[4]~40_combout\,
	cout => \lcd|i[4]~41\);

-- Location: FF_X26_Y12_N9
\lcd|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[4]~40_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(4));

-- Location: LCCOMB_X26_Y12_N10
\lcd|i[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[5]~42_combout\ = (\lcd|i\(5) & (!\lcd|i[4]~41\)) # (!\lcd|i\(5) & ((\lcd|i[4]~41\) # (GND)))
-- \lcd|i[5]~43\ = CARRY((!\lcd|i[4]~41\) # (!\lcd|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(5),
	datad => VCC,
	cin => \lcd|i[4]~41\,
	combout => \lcd|i[5]~42_combout\,
	cout => \lcd|i[5]~43\);

-- Location: FF_X26_Y12_N11
\lcd|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[5]~42_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(5));

-- Location: LCCOMB_X26_Y12_N12
\lcd|i[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[6]~44_combout\ = (\lcd|i\(6) & (\lcd|i[5]~43\ $ (GND))) # (!\lcd|i\(6) & (!\lcd|i[5]~43\ & VCC))
-- \lcd|i[6]~45\ = CARRY((\lcd|i\(6) & !\lcd|i[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(6),
	datad => VCC,
	cin => \lcd|i[5]~43\,
	combout => \lcd|i[6]~44_combout\,
	cout => \lcd|i[6]~45\);

-- Location: FF_X26_Y12_N13
\lcd|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[6]~44_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(6));

-- Location: LCCOMB_X26_Y12_N14
\lcd|i[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[7]~46_combout\ = (\lcd|i\(7) & (!\lcd|i[6]~45\)) # (!\lcd|i\(7) & ((\lcd|i[6]~45\) # (GND)))
-- \lcd|i[7]~47\ = CARRY((!\lcd|i[6]~45\) # (!\lcd|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(7),
	datad => VCC,
	cin => \lcd|i[6]~45\,
	combout => \lcd|i[7]~46_combout\,
	cout => \lcd|i[7]~47\);

-- Location: FF_X26_Y12_N15
\lcd|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[7]~46_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(7));

-- Location: LCCOMB_X26_Y12_N16
\lcd|i[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[8]~48_combout\ = (\lcd|i\(8) & (\lcd|i[7]~47\ $ (GND))) # (!\lcd|i\(8) & (!\lcd|i[7]~47\ & VCC))
-- \lcd|i[8]~49\ = CARRY((\lcd|i\(8) & !\lcd|i[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(8),
	datad => VCC,
	cin => \lcd|i[7]~47\,
	combout => \lcd|i[8]~48_combout\,
	cout => \lcd|i[8]~49\);

-- Location: FF_X26_Y12_N17
\lcd|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[8]~48_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(8));

-- Location: LCCOMB_X26_Y12_N18
\lcd|i[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[9]~50_combout\ = (\lcd|i\(9) & (!\lcd|i[8]~49\)) # (!\lcd|i\(9) & ((\lcd|i[8]~49\) # (GND)))
-- \lcd|i[9]~51\ = CARRY((!\lcd|i[8]~49\) # (!\lcd|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(9),
	datad => VCC,
	cin => \lcd|i[8]~49\,
	combout => \lcd|i[9]~50_combout\,
	cout => \lcd|i[9]~51\);

-- Location: FF_X26_Y12_N19
\lcd|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[9]~50_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(9));

-- Location: LCCOMB_X26_Y12_N20
\lcd|i[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[10]~52_combout\ = (\lcd|i\(10) & (\lcd|i[9]~51\ $ (GND))) # (!\lcd|i\(10) & (!\lcd|i[9]~51\ & VCC))
-- \lcd|i[10]~53\ = CARRY((\lcd|i\(10) & !\lcd|i[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(10),
	datad => VCC,
	cin => \lcd|i[9]~51\,
	combout => \lcd|i[10]~52_combout\,
	cout => \lcd|i[10]~53\);

-- Location: FF_X26_Y12_N21
\lcd|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[10]~52_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(10));

-- Location: LCCOMB_X26_Y12_N22
\lcd|i[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[11]~54_combout\ = (\lcd|i\(11) & (!\lcd|i[10]~53\)) # (!\lcd|i\(11) & ((\lcd|i[10]~53\) # (GND)))
-- \lcd|i[11]~55\ = CARRY((!\lcd|i[10]~53\) # (!\lcd|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(11),
	datad => VCC,
	cin => \lcd|i[10]~53\,
	combout => \lcd|i[11]~54_combout\,
	cout => \lcd|i[11]~55\);

-- Location: FF_X26_Y12_N23
\lcd|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[11]~54_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(11));

-- Location: LCCOMB_X27_Y12_N30
\lcd|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~1_combout\ = (!\lcd|i\(8) & (!\lcd|i\(9) & (!\lcd|i\(10) & !\lcd|i\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(8),
	datab => \lcd|i\(9),
	datac => \lcd|i\(10),
	datad => \lcd|i\(11),
	combout => \lcd|Equal4~1_combout\);

-- Location: LCCOMB_X26_Y12_N24
\lcd|i[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[12]~56_combout\ = (\lcd|i\(12) & (\lcd|i[11]~55\ $ (GND))) # (!\lcd|i\(12) & (!\lcd|i[11]~55\ & VCC))
-- \lcd|i[12]~57\ = CARRY((\lcd|i\(12) & !\lcd|i[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(12),
	datad => VCC,
	cin => \lcd|i[11]~55\,
	combout => \lcd|i[12]~56_combout\,
	cout => \lcd|i[12]~57\);

-- Location: FF_X26_Y12_N25
\lcd|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[12]~56_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(12));

-- Location: LCCOMB_X26_Y12_N26
\lcd|i[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[13]~58_combout\ = (\lcd|i\(13) & (!\lcd|i[12]~57\)) # (!\lcd|i\(13) & ((\lcd|i[12]~57\) # (GND)))
-- \lcd|i[13]~59\ = CARRY((!\lcd|i[12]~57\) # (!\lcd|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(13),
	datad => VCC,
	cin => \lcd|i[12]~57\,
	combout => \lcd|i[13]~58_combout\,
	cout => \lcd|i[13]~59\);

-- Location: FF_X26_Y12_N27
\lcd|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[13]~58_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(13));

-- Location: LCCOMB_X26_Y12_N28
\lcd|i[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[14]~60_combout\ = (\lcd|i\(14) & (\lcd|i[13]~59\ $ (GND))) # (!\lcd|i\(14) & (!\lcd|i[13]~59\ & VCC))
-- \lcd|i[14]~61\ = CARRY((\lcd|i\(14) & !\lcd|i[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(14),
	datad => VCC,
	cin => \lcd|i[13]~59\,
	combout => \lcd|i[14]~60_combout\,
	cout => \lcd|i[14]~61\);

-- Location: FF_X26_Y12_N29
\lcd|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[14]~60_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(14));

-- Location: LCCOMB_X26_Y12_N30
\lcd|i[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[15]~62_combout\ = (\lcd|i\(15) & (!\lcd|i[14]~61\)) # (!\lcd|i\(15) & ((\lcd|i[14]~61\) # (GND)))
-- \lcd|i[15]~63\ = CARRY((!\lcd|i[14]~61\) # (!\lcd|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(15),
	datad => VCC,
	cin => \lcd|i[14]~61\,
	combout => \lcd|i[15]~62_combout\,
	cout => \lcd|i[15]~63\);

-- Location: FF_X26_Y12_N31
\lcd|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[15]~62_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(15));

-- Location: LCCOMB_X26_Y11_N0
\lcd|i[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[16]~64_combout\ = (\lcd|i\(16) & (\lcd|i[15]~63\ $ (GND))) # (!\lcd|i\(16) & (!\lcd|i[15]~63\ & VCC))
-- \lcd|i[16]~65\ = CARRY((\lcd|i\(16) & !\lcd|i[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(16),
	datad => VCC,
	cin => \lcd|i[15]~63\,
	combout => \lcd|i[16]~64_combout\,
	cout => \lcd|i[16]~65\);

-- Location: FF_X26_Y11_N1
\lcd|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[16]~64_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(16));

-- Location: LCCOMB_X26_Y11_N2
\lcd|i[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[17]~66_combout\ = (\lcd|i\(17) & (!\lcd|i[16]~65\)) # (!\lcd|i\(17) & ((\lcd|i[16]~65\) # (GND)))
-- \lcd|i[17]~67\ = CARRY((!\lcd|i[16]~65\) # (!\lcd|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(17),
	datad => VCC,
	cin => \lcd|i[16]~65\,
	combout => \lcd|i[17]~66_combout\,
	cout => \lcd|i[17]~67\);

-- Location: FF_X26_Y11_N3
\lcd|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[17]~66_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(17));

-- Location: LCCOMB_X26_Y11_N4
\lcd|i[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[18]~68_combout\ = (\lcd|i\(18) & (\lcd|i[17]~67\ $ (GND))) # (!\lcd|i\(18) & (!\lcd|i[17]~67\ & VCC))
-- \lcd|i[18]~69\ = CARRY((\lcd|i\(18) & !\lcd|i[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(18),
	datad => VCC,
	cin => \lcd|i[17]~67\,
	combout => \lcd|i[18]~68_combout\,
	cout => \lcd|i[18]~69\);

-- Location: FF_X26_Y11_N5
\lcd|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[18]~68_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(18));

-- Location: LCCOMB_X26_Y11_N6
\lcd|i[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[19]~70_combout\ = (\lcd|i\(19) & (!\lcd|i[18]~69\)) # (!\lcd|i\(19) & ((\lcd|i[18]~69\) # (GND)))
-- \lcd|i[19]~71\ = CARRY((!\lcd|i[18]~69\) # (!\lcd|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(19),
	datad => VCC,
	cin => \lcd|i[18]~69\,
	combout => \lcd|i[19]~70_combout\,
	cout => \lcd|i[19]~71\);

-- Location: FF_X26_Y11_N7
\lcd|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[19]~70_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(19));

-- Location: LCCOMB_X27_Y11_N2
\lcd|Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~3_combout\ = (!\lcd|i\(17) & (!\lcd|i\(18) & (!\lcd|i\(19) & !\lcd|i\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(17),
	datab => \lcd|i\(18),
	datac => \lcd|i\(19),
	datad => \lcd|i\(16),
	combout => \lcd|Equal4~3_combout\);

-- Location: LCCOMB_X27_Y12_N12
\lcd|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~0_combout\ = (!\lcd|i\(4) & (!\lcd|i\(5) & (!\lcd|i\(7) & !\lcd|i\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(4),
	datab => \lcd|i\(5),
	datac => \lcd|i\(7),
	datad => \lcd|i\(6),
	combout => \lcd|Equal4~0_combout\);

-- Location: LCCOMB_X27_Y12_N8
\lcd|Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~2_combout\ = (!\lcd|i\(12) & (!\lcd|i\(14) & (!\lcd|i\(13) & !\lcd|i\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(12),
	datab => \lcd|i\(14),
	datac => \lcd|i\(13),
	datad => \lcd|i\(15),
	combout => \lcd|Equal4~2_combout\);

-- Location: LCCOMB_X27_Y11_N20
\lcd|Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~4_combout\ = (\lcd|Equal4~1_combout\ & (\lcd|Equal4~3_combout\ & (\lcd|Equal4~0_combout\ & \lcd|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal4~1_combout\,
	datab => \lcd|Equal4~3_combout\,
	datac => \lcd|Equal4~0_combout\,
	datad => \lcd|Equal4~2_combout\,
	combout => \lcd|Equal4~4_combout\);

-- Location: LCCOMB_X26_Y11_N8
\lcd|i[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[20]~72_combout\ = (\lcd|i\(20) & (\lcd|i[19]~71\ $ (GND))) # (!\lcd|i\(20) & (!\lcd|i[19]~71\ & VCC))
-- \lcd|i[20]~73\ = CARRY((\lcd|i\(20) & !\lcd|i[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(20),
	datad => VCC,
	cin => \lcd|i[19]~71\,
	combout => \lcd|i[20]~72_combout\,
	cout => \lcd|i[20]~73\);

-- Location: FF_X26_Y11_N9
\lcd|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[20]~72_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(20));

-- Location: LCCOMB_X26_Y11_N10
\lcd|i[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[21]~74_combout\ = (\lcd|i\(21) & (!\lcd|i[20]~73\)) # (!\lcd|i\(21) & ((\lcd|i[20]~73\) # (GND)))
-- \lcd|i[21]~75\ = CARRY((!\lcd|i[20]~73\) # (!\lcd|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(21),
	datad => VCC,
	cin => \lcd|i[20]~73\,
	combout => \lcd|i[21]~74_combout\,
	cout => \lcd|i[21]~75\);

-- Location: FF_X26_Y11_N11
\lcd|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[21]~74_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(21));

-- Location: LCCOMB_X26_Y11_N12
\lcd|i[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[22]~76_combout\ = (\lcd|i\(22) & (\lcd|i[21]~75\ $ (GND))) # (!\lcd|i\(22) & (!\lcd|i[21]~75\ & VCC))
-- \lcd|i[22]~77\ = CARRY((\lcd|i\(22) & !\lcd|i[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(22),
	datad => VCC,
	cin => \lcd|i[21]~75\,
	combout => \lcd|i[22]~76_combout\,
	cout => \lcd|i[22]~77\);

-- Location: FF_X26_Y11_N13
\lcd|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[22]~76_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(22));

-- Location: LCCOMB_X26_Y11_N14
\lcd|i[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[23]~78_combout\ = (\lcd|i\(23) & (!\lcd|i[22]~77\)) # (!\lcd|i\(23) & ((\lcd|i[22]~77\) # (GND)))
-- \lcd|i[23]~79\ = CARRY((!\lcd|i[22]~77\) # (!\lcd|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(23),
	datad => VCC,
	cin => \lcd|i[22]~77\,
	combout => \lcd|i[23]~78_combout\,
	cout => \lcd|i[23]~79\);

-- Location: FF_X26_Y11_N15
\lcd|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[23]~78_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(23));

-- Location: LCCOMB_X26_Y11_N16
\lcd|i[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[24]~80_combout\ = (\lcd|i\(24) & (\lcd|i[23]~79\ $ (GND))) # (!\lcd|i\(24) & (!\lcd|i[23]~79\ & VCC))
-- \lcd|i[24]~81\ = CARRY((\lcd|i\(24) & !\lcd|i[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(24),
	datad => VCC,
	cin => \lcd|i[23]~79\,
	combout => \lcd|i[24]~80_combout\,
	cout => \lcd|i[24]~81\);

-- Location: FF_X26_Y11_N17
\lcd|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[24]~80_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(24));

-- Location: LCCOMB_X26_Y11_N18
\lcd|i[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[25]~82_combout\ = (\lcd|i\(25) & (!\lcd|i[24]~81\)) # (!\lcd|i\(25) & ((\lcd|i[24]~81\) # (GND)))
-- \lcd|i[25]~83\ = CARRY((!\lcd|i[24]~81\) # (!\lcd|i\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(25),
	datad => VCC,
	cin => \lcd|i[24]~81\,
	combout => \lcd|i[25]~82_combout\,
	cout => \lcd|i[25]~83\);

-- Location: FF_X26_Y11_N19
\lcd|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[25]~82_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(25));

-- Location: LCCOMB_X26_Y11_N20
\lcd|i[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[26]~84_combout\ = (\lcd|i\(26) & (\lcd|i[25]~83\ $ (GND))) # (!\lcd|i\(26) & (!\lcd|i[25]~83\ & VCC))
-- \lcd|i[26]~85\ = CARRY((\lcd|i\(26) & !\lcd|i[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(26),
	datad => VCC,
	cin => \lcd|i[25]~83\,
	combout => \lcd|i[26]~84_combout\,
	cout => \lcd|i[26]~85\);

-- Location: FF_X26_Y11_N21
\lcd|i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[26]~84_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(26));

-- Location: LCCOMB_X26_Y11_N22
\lcd|i[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[27]~86_combout\ = (\lcd|i\(27) & (!\lcd|i[26]~85\)) # (!\lcd|i\(27) & ((\lcd|i[26]~85\) # (GND)))
-- \lcd|i[27]~87\ = CARRY((!\lcd|i[26]~85\) # (!\lcd|i\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(27),
	datad => VCC,
	cin => \lcd|i[26]~85\,
	combout => \lcd|i[27]~86_combout\,
	cout => \lcd|i[27]~87\);

-- Location: FF_X26_Y11_N23
\lcd|i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[27]~86_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(27));

-- Location: LCCOMB_X26_Y11_N24
\lcd|i[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[28]~88_combout\ = (\lcd|i\(28) & (\lcd|i[27]~87\ $ (GND))) # (!\lcd|i\(28) & (!\lcd|i[27]~87\ & VCC))
-- \lcd|i[28]~89\ = CARRY((\lcd|i\(28) & !\lcd|i[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(28),
	datad => VCC,
	cin => \lcd|i[27]~87\,
	combout => \lcd|i[28]~88_combout\,
	cout => \lcd|i[28]~89\);

-- Location: FF_X26_Y11_N25
\lcd|i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[28]~88_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(28));

-- Location: LCCOMB_X26_Y11_N26
\lcd|i[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[29]~90_combout\ = (\lcd|i\(29) & (!\lcd|i[28]~89\)) # (!\lcd|i\(29) & ((\lcd|i[28]~89\) # (GND)))
-- \lcd|i[29]~91\ = CARRY((!\lcd|i[28]~89\) # (!\lcd|i\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(29),
	datad => VCC,
	cin => \lcd|i[28]~89\,
	combout => \lcd|i[29]~90_combout\,
	cout => \lcd|i[29]~91\);

-- Location: FF_X26_Y11_N27
\lcd|i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[29]~90_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(29));

-- Location: LCCOMB_X26_Y11_N28
\lcd|i[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[30]~92_combout\ = (\lcd|i\(30) & (\lcd|i[29]~91\ $ (GND))) # (!\lcd|i\(30) & (!\lcd|i[29]~91\ & VCC))
-- \lcd|i[30]~93\ = CARRY((\lcd|i\(30) & !\lcd|i[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(30),
	datad => VCC,
	cin => \lcd|i[29]~91\,
	combout => \lcd|i[30]~92_combout\,
	cout => \lcd|i[30]~93\);

-- Location: FF_X26_Y11_N29
\lcd|i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[30]~92_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(30));

-- Location: LCCOMB_X26_Y11_N30
\lcd|i[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[31]~94_combout\ = \lcd|i\(31) $ (\lcd|i[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(31),
	cin => \lcd|i[30]~93\,
	combout => \lcd|i[31]~94_combout\);

-- Location: FF_X26_Y11_N31
\lcd|i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[31]~94_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(31));

-- Location: LCCOMB_X27_Y11_N14
\lcd|Equal4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~7_combout\ = (!\lcd|i\(29) & (!\lcd|i\(28) & (!\lcd|i\(30) & !\lcd|i\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(29),
	datab => \lcd|i\(28),
	datac => \lcd|i\(30),
	datad => \lcd|i\(31),
	combout => \lcd|Equal4~7_combout\);

-- Location: LCCOMB_X28_Y11_N20
\lcd|Equal4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~5_combout\ = (!\lcd|i\(21) & (!\lcd|i\(22) & (!\lcd|i\(23) & !\lcd|i\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(21),
	datab => \lcd|i\(22),
	datac => \lcd|i\(23),
	datad => \lcd|i\(20),
	combout => \lcd|Equal4~5_combout\);

-- Location: LCCOMB_X25_Y11_N8
\lcd|Equal4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~6_combout\ = (!\lcd|i\(26) & (!\lcd|i\(24) & (!\lcd|i\(25) & !\lcd|i\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(26),
	datab => \lcd|i\(24),
	datac => \lcd|i\(25),
	datad => \lcd|i\(27),
	combout => \lcd|Equal4~6_combout\);

-- Location: LCCOMB_X27_Y11_N8
\lcd|Equal4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~8_combout\ = (\lcd|Equal4~7_combout\ & (\lcd|Equal4~5_combout\ & \lcd|Equal4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|Equal4~7_combout\,
	datac => \lcd|Equal4~5_combout\,
	datad => \lcd|Equal4~6_combout\,
	combout => \lcd|Equal4~8_combout\);

-- Location: LCCOMB_X25_Y11_N4
\lcd|write_data[4]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~23_combout\ = (\lcd|i\(2)) # ((\lcd|i\(3)) # ((!\lcd|Equal4~8_combout\) # (!\lcd|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(2),
	datab => \lcd|i\(3),
	datac => \lcd|Equal4~4_combout\,
	datad => \lcd|Equal4~8_combout\,
	combout => \lcd|write_data[4]~23_combout\);

-- Location: LCCOMB_X27_Y12_N26
\lcd|Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal12~0_combout\ = (!\lcd|i\(2) & (\lcd|i\(3) & !\lcd|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(2),
	datac => \lcd|i\(3),
	datad => \lcd|i\(1),
	combout => \lcd|Equal12~0_combout\);

-- Location: LCCOMB_X25_Y11_N20
\lcd|Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal13~0_combout\ = (((!\lcd|Equal4~8_combout\) # (!\lcd|Equal4~4_combout\)) # (!\lcd|i\(0))) # (!\lcd|Equal12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal12~0_combout\,
	datab => \lcd|i\(0),
	datac => \lcd|Equal4~4_combout\,
	datad => \lcd|Equal4~8_combout\,
	combout => \lcd|Equal13~0_combout\);

-- Location: LCCOMB_X27_Y11_N16
\lcd|Equal4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~9_combout\ = (!\lcd|i\(3) & (\lcd|Equal4~8_combout\ & \lcd|Equal4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(3),
	datac => \lcd|Equal4~8_combout\,
	datad => \lcd|Equal4~4_combout\,
	combout => \lcd|Equal4~9_combout\);

-- Location: LCCOMB_X27_Y11_N30
\lcd|Equal12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal12~1_combout\ = (\lcd|Equal4~8_combout\ & (\lcd|Equal12~0_combout\ & \lcd|Equal4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|Equal4~8_combout\,
	datac => \lcd|Equal12~0_combout\,
	datad => \lcd|Equal4~4_combout\,
	combout => \lcd|Equal12~1_combout\);

-- Location: LCCOMB_X27_Y11_N6
\lcd|Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal10~0_combout\ = (\lcd|i\(2) & (\lcd|i\(1) & (!\lcd|i\(0) & \lcd|Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(2),
	datab => \lcd|i\(1),
	datac => \lcd|i\(0),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|Equal10~0_combout\);

-- Location: LCCOMB_X25_Y11_N2
\lcd|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal8~0_combout\ = (\lcd|i\(2) & (!\lcd|i\(0) & (!\lcd|i\(1) & \lcd|Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(2),
	datab => \lcd|i\(0),
	datac => \lcd|i\(1),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|Equal8~0_combout\);

-- Location: LCCOMB_X25_Y11_N24
\lcd|write_column~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~2_combout\ = (!\lcd|Equal10~0_combout\ & (!\lcd|Equal8~0_combout\ & ((\lcd|i\(0)) # (!\lcd|Equal12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal12~1_combout\,
	datab => \lcd|i\(0),
	datac => \lcd|Equal10~0_combout\,
	datad => \lcd|Equal8~0_combout\,
	combout => \lcd|write_column~2_combout\);

-- Location: LCCOMB_X25_Y11_N14
\lcd|write_data[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~24_combout\ = (\lcd|write_column~2_combout\ & (((!\lcd|i\(0)) # (!\lcd|Equal4~9_combout\)) # (!\lcd|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(2),
	datab => \lcd|Equal4~9_combout\,
	datac => \lcd|i\(0),
	datad => \lcd|write_column~2_combout\,
	combout => \lcd|write_data[4]~24_combout\);

-- Location: LCCOMB_X25_Y11_N28
\lcd|lcd_instance|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector11~0_combout\ = (\lcd|lcd_instance|state.S8~q\) # ((!\lcd|lcd_instance|state.S0~q\ & (\lcd|lcd_instance|ack~q\ & !\lcd|lcd_instance|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S0~q\,
	datab => \lcd|lcd_instance|state.S8~q\,
	datac => \lcd|lcd_instance|ack~q\,
	datad => \lcd|lcd_instance|LessThan0~0_combout\,
	combout => \lcd|lcd_instance|Selector11~0_combout\);

-- Location: FF_X25_Y11_N29
\lcd|lcd_instance|ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|Selector11~0_combout\,
	sclr => \lcd_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|ack~q\);

-- Location: LCCOMB_X25_Y11_N18
\lcd|write_data[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~22_combout\ = (\lcd|lcd_instance|ack~q\ & (((!\lcd|write_data[4]~24_combout\) # (!\lcd|Equal13~0_combout\)) # (!\lcd|write_data[4]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_data[4]~23_combout\,
	datab => \lcd|Equal13~0_combout\,
	datac => \lcd|write_data[4]~24_combout\,
	datad => \lcd|lcd_instance|ack~q\,
	combout => \lcd|write_data[4]~22_combout\);

-- Location: FF_X26_Y12_N5
\lcd|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[2]~36_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(2));

-- Location: LCCOMB_X25_Y11_N30
\lcd|write_data[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~4_combout\ = ((!\lcd|Equal4~9_combout\) # (!\lcd|i\(2))) # (!\lcd|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(0),
	datac => \lcd|i\(2),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|write_data[4]~4_combout\);

-- Location: LCCOMB_X25_Y11_N26
\lcd|write_data[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~6_combout\ = (\lcd|write_data[4]~4_combout\ & (\lcd|write_data[4]~23_combout\ & \lcd|write_column~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_data[4]~4_combout\,
	datac => \lcd|write_data[4]~23_combout\,
	datad => \lcd|write_column~2_combout\,
	combout => \lcd|write_data[4]~6_combout\);

-- Location: FF_X26_Y12_N1
\lcd|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[0]~32_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(0));

-- Location: FF_X26_Y12_N3
\lcd|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[1]~34_combout\,
	sclr => \lcd|write_data[4]~6_combout\,
	ena => \lcd|write_data[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(1));

-- Location: LCCOMB_X28_Y11_N30
\lcd|write_data[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~8_combout\ = (\lcd|i\(1)) # ((\lcd|i\(2)) # (!\lcd|Equal4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(1),
	datab => \lcd|i\(2),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|write_data[4]~8_combout\);

-- Location: LCCOMB_X27_Y9_N14
\lcd|covid_det_instance|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~5_combout\ = (!\lcd|covid_det_instance|bit_index\(1) & (!\lcd|covid_det_instance|bit_index\(2) & (!\lcd|covid_det_instance|bit_index\(3) & !\lcd|covid_det_instance|bit_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(1),
	datab => \lcd|covid_det_instance|bit_index\(2),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(0),
	combout => \lcd|covid_det_instance|Equal0~5_combout\);

-- Location: LCCOMB_X28_Y9_N2
\lcd|covid_det_instance|out_ascii_new2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~5_combout\ = (\lcd|covid_det_instance|Equal0~5_combout\ & (\lcd|covid_det_instance|Mux0~7_combout\)) # (!\lcd|covid_det_instance|Equal0~5_combout\ & ((\lcd|covid_det_instance|out_ascii_new2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|Mux0~7_combout\,
	datab => \lcd|covid_det_instance|out_ascii_new2~5_combout\,
	datad => \lcd|covid_det_instance|Equal0~5_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~5_combout\);

-- Location: LCCOMB_X27_Y11_N4
\lcd|write_data[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~12_combout\ = (\lcd|i\(2) & (\lcd|i\(1) & \lcd|Equal4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(2),
	datab => \lcd|i\(1),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|write_data[4]~12_combout\);

-- Location: LCCOMB_X27_Y9_N20
\lcd|covid_det_instance|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~7_combout\ = (\lcd|covid_det_instance|bit_index\(1) & (!\lcd|covid_det_instance|bit_index\(2) & (!\lcd|covid_det_instance|bit_index\(3) & !\lcd|covid_det_instance|bit_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(1),
	datab => \lcd|covid_det_instance|bit_index\(2),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(0),
	combout => \lcd|covid_det_instance|Equal0~7_combout\);

-- Location: LCCOMB_X28_Y9_N12
\lcd|covid_det_instance|out_ascii_new2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~7_combout\ = (\lcd|covid_det_instance|Equal0~7_combout\ & (\lcd|covid_det_instance|Mux0~7_combout\)) # (!\lcd|covid_det_instance|Equal0~7_combout\ & ((\lcd|covid_det_instance|out_ascii_new2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|Mux0~7_combout\,
	datab => \lcd|covid_det_instance|out_ascii_new2~7_combout\,
	datad => \lcd|covid_det_instance|Equal0~7_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~7_combout\);

-- Location: LCCOMB_X27_Y9_N26
\lcd|covid_det_instance|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~6_combout\ = (\lcd|covid_det_instance|bit_index\(1) & (\lcd|covid_det_instance|bit_index\(0) & (!\lcd|covid_det_instance|bit_index\(3) & !\lcd|covid_det_instance|bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(1),
	datab => \lcd|covid_det_instance|bit_index\(0),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(2),
	combout => \lcd|covid_det_instance|Equal0~6_combout\);

-- Location: LCCOMB_X27_Y9_N2
\lcd|covid_det_instance|out_ascii_new2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~6_combout\ = (\lcd|covid_det_instance|Equal0~6_combout\ & ((\lcd|covid_det_instance|Mux0~7_combout\))) # (!\lcd|covid_det_instance|Equal0~6_combout\ & (\lcd|covid_det_instance|out_ascii_new2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|covid_det_instance|out_ascii_new2~6_combout\,
	datac => \lcd|covid_det_instance|Equal0~6_combout\,
	datad => \lcd|covid_det_instance|Mux0~7_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~6_combout\);

-- Location: LCCOMB_X27_Y11_N18
\lcd|write_data~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~13_combout\ = (\lcd|Equal10~0_combout\) # ((!\lcd|i\(0) & \lcd|Equal12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(0),
	datac => \lcd|Equal12~1_combout\,
	datad => \lcd|Equal10~0_combout\,
	combout => \lcd|write_data~13_combout\);

-- Location: LCCOMB_X27_Y11_N28
\lcd|write_data~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~14_combout\ = (\lcd|write_data[4]~12_combout\ & ((\lcd|write_data~13_combout\ & ((\lcd|covid_det_instance|out_ascii_new2~6_combout\))) # (!\lcd|write_data~13_combout\ & (\lcd|covid_det_instance|out_ascii_new2~7_combout\)))) # 
-- (!\lcd|write_data[4]~12_combout\ & (((\lcd|write_data~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_data[4]~12_combout\,
	datab => \lcd|covid_det_instance|out_ascii_new2~7_combout\,
	datac => \lcd|covid_det_instance|out_ascii_new2~6_combout\,
	datad => \lcd|write_data~13_combout\,
	combout => \lcd|write_data~14_combout\);

-- Location: LCCOMB_X27_Y9_N0
\lcd|covid_det_instance|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~4_combout\ = (!\lcd|covid_det_instance|bit_index\(1) & (!\lcd|covid_det_instance|bit_index\(2) & (!\lcd|covid_det_instance|bit_index\(3) & \lcd|covid_det_instance|bit_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(1),
	datab => \lcd|covid_det_instance|bit_index\(2),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(0),
	combout => \lcd|covid_det_instance|Equal0~4_combout\);

-- Location: LCCOMB_X28_Y9_N28
\lcd|covid_det_instance|out_ascii_new2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~4_combout\ = (\lcd|covid_det_instance|Equal0~4_combout\ & ((\lcd|covid_det_instance|Mux0~7_combout\))) # (!\lcd|covid_det_instance|Equal0~4_combout\ & (\lcd|covid_det_instance|out_ascii_new2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|covid_det_instance|out_ascii_new2~4_combout\,
	datac => \lcd|covid_det_instance|Equal0~4_combout\,
	datad => \lcd|covid_det_instance|Mux0~7_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~4_combout\);

-- Location: LCCOMB_X27_Y11_N22
\lcd|write_data~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~15_combout\ = (\lcd|write_data~14_combout\ & (((\lcd|write_data[4]~12_combout\) # (\lcd|covid_det_instance|out_ascii_new2~4_combout\)))) # (!\lcd|write_data~14_combout\ & (\lcd|covid_det_instance|out_ascii_new2~5_combout\ & 
-- (!\lcd|write_data[4]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|out_ascii_new2~5_combout\,
	datab => \lcd|write_data~14_combout\,
	datac => \lcd|write_data[4]~12_combout\,
	datad => \lcd|covid_det_instance|out_ascii_new2~4_combout\,
	combout => \lcd|write_data~15_combout\);

-- Location: LCCOMB_X28_Y11_N12
\lcd|write_data[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~11_combout\ = (\lcd|i\(0) & (\lcd|Equal4~9_combout\ & (\lcd|i\(1) $ (\lcd|i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(1),
	datab => \lcd|i\(2),
	datac => \lcd|i\(0),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|write_data[4]~11_combout\);

-- Location: LCCOMB_X28_Y11_N14
\lcd|write_data[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~10_combout\ = (\lcd|Equal4~9_combout\ & ((\lcd|i\(1) & (!\lcd|i\(2) & \lcd|i\(0))) # (!\lcd|i\(1) & (\lcd|i\(2) & !\lcd|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(1),
	datab => \lcd|i\(2),
	datac => \lcd|i\(0),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|write_data[4]~10_combout\);

-- Location: LCCOMB_X27_Y9_N28
\lcd|covid_det_instance|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~3_combout\ = (\lcd|covid_det_instance|bit_index\(2) & (!\lcd|covid_det_instance|bit_index\(0) & (!\lcd|covid_det_instance|bit_index\(3) & !\lcd|covid_det_instance|bit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(2),
	datab => \lcd|covid_det_instance|bit_index\(0),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(1),
	combout => \lcd|covid_det_instance|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y9_N18
\lcd|covid_det_instance|out_ascii_new2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~3_combout\ = (\lcd|covid_det_instance|Equal0~3_combout\ & ((\lcd|covid_det_instance|Mux0~7_combout\))) # (!\lcd|covid_det_instance|Equal0~3_combout\ & (\lcd|covid_det_instance|out_ascii_new2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|covid_det_instance|Equal0~3_combout\,
	datac => \lcd|covid_det_instance|out_ascii_new2~3_combout\,
	datad => \lcd|covid_det_instance|Mux0~7_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~3_combout\);

-- Location: LCCOMB_X27_Y11_N12
\lcd|write_data~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~16_combout\ = (\lcd|write_data[4]~11_combout\ & (((\lcd|write_data[4]~10_combout\) # (\lcd|covid_det_instance|out_ascii_new2~3_combout\)))) # (!\lcd|write_data[4]~11_combout\ & (\lcd|write_data~15_combout\ & 
-- (!\lcd|write_data[4]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_data~15_combout\,
	datab => \lcd|write_data[4]~11_combout\,
	datac => \lcd|write_data[4]~10_combout\,
	datad => \lcd|covid_det_instance|out_ascii_new2~3_combout\,
	combout => \lcd|write_data~16_combout\);

-- Location: LCCOMB_X27_Y9_N22
\lcd|covid_det_instance|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~2_combout\ = (\lcd|covid_det_instance|bit_index\(2) & (\lcd|covid_det_instance|bit_index\(0) & (!\lcd|covid_det_instance|bit_index\(3) & !\lcd|covid_det_instance|bit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(2),
	datab => \lcd|covid_det_instance|bit_index\(0),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(1),
	combout => \lcd|covid_det_instance|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y9_N6
\lcd|covid_det_instance|out_ascii_new2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~2_combout\ = (\lcd|covid_det_instance|Equal0~2_combout\ & ((\lcd|covid_det_instance|Mux0~7_combout\))) # (!\lcd|covid_det_instance|Equal0~2_combout\ & (\lcd|covid_det_instance|out_ascii_new2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|out_ascii_new2~2_combout\,
	datac => \lcd|covid_det_instance|Equal0~2_combout\,
	datad => \lcd|covid_det_instance|Mux0~7_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~2_combout\);

-- Location: LCCOMB_X27_Y9_N10
\lcd|covid_det_instance|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~8_combout\ = (\lcd|covid_det_instance|bit_index\(1) & (\lcd|covid_det_instance|bit_index\(2) & (!\lcd|covid_det_instance|bit_index\(3) & !\lcd|covid_det_instance|bit_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(1),
	datab => \lcd|covid_det_instance|bit_index\(2),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(0),
	combout => \lcd|covid_det_instance|Equal0~8_combout\);

-- Location: LCCOMB_X28_Y9_N10
\lcd|covid_det_instance|out_ascii_new2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~8_combout\ = (\lcd|covid_det_instance|Equal0~8_combout\ & (\lcd|covid_det_instance|Mux0~7_combout\)) # (!\lcd|covid_det_instance|Equal0~8_combout\ & ((\lcd|covid_det_instance|out_ascii_new2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|Mux0~7_combout\,
	datab => \lcd|covid_det_instance|out_ascii_new2~8_combout\,
	datad => \lcd|covid_det_instance|Equal0~8_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~8_combout\);

-- Location: LCCOMB_X27_Y11_N26
\lcd|write_data~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~17_combout\ = (\lcd|write_data~16_combout\ & (((\lcd|covid_det_instance|out_ascii_new2~8_combout\) # (!\lcd|write_data[4]~10_combout\)))) # (!\lcd|write_data~16_combout\ & (\lcd|covid_det_instance|out_ascii_new2~2_combout\ & 
-- (\lcd|write_data[4]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_data~16_combout\,
	datab => \lcd|covid_det_instance|out_ascii_new2~2_combout\,
	datac => \lcd|write_data[4]~10_combout\,
	datad => \lcd|covid_det_instance|out_ascii_new2~8_combout\,
	combout => \lcd|write_data~17_combout\);

-- Location: LCCOMB_X27_Y9_N30
\lcd|covid_det_instance|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~1_combout\ = (\lcd|covid_det_instance|bit_index\(2) & (\lcd|covid_det_instance|bit_index\(0) & (!\lcd|covid_det_instance|bit_index\(3) & \lcd|covid_det_instance|bit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(2),
	datab => \lcd|covid_det_instance|bit_index\(0),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(1),
	combout => \lcd|covid_det_instance|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y9_N24
\lcd|covid_det_instance|out_ascii_new2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~1_combout\ = (\lcd|covid_det_instance|Equal0~1_combout\ & ((\lcd|covid_det_instance|Mux0~7_combout\))) # (!\lcd|covid_det_instance|Equal0~1_combout\ & (\lcd|covid_det_instance|out_ascii_new2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|covid_det_instance|out_ascii_new2~1_combout\,
	datac => \lcd|covid_det_instance|Equal0~1_combout\,
	datad => \lcd|covid_det_instance|Mux0~7_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~1_combout\);

-- Location: LCCOMB_X28_Y11_N24
\lcd|write_data[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~9_combout\ = (!\lcd|i\(2) & (!\lcd|i\(0) & \lcd|Equal4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(2),
	datac => \lcd|i\(0),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|write_data[4]~9_combout\);

-- Location: LCCOMB_X27_Y11_N24
\lcd|write_data~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~18_combout\ = (\lcd|write_data[4]~8_combout\ & ((\lcd|write_data[4]~9_combout\ & ((\lcd|covid_det_instance|out_ascii_new2~1_combout\))) # (!\lcd|write_data[4]~9_combout\ & (\lcd|write_data~17_combout\)))) # (!\lcd|write_data[4]~8_combout\ 
-- & (((\lcd|write_data[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_data~17_combout\,
	datab => \lcd|covid_det_instance|out_ascii_new2~1_combout\,
	datac => \lcd|write_data[4]~8_combout\,
	datad => \lcd|write_data[4]~9_combout\,
	combout => \lcd|write_data~18_combout\);

-- Location: LCCOMB_X27_Y9_N8
\lcd|covid_det_instance|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~0_combout\ = (!\lcd|covid_det_instance|bit_index\(1) & (!\lcd|covid_det_instance|bit_index\(0) & (\lcd|covid_det_instance|bit_index\(3) & !\lcd|covid_det_instance|bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(1),
	datab => \lcd|covid_det_instance|bit_index\(0),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(2),
	combout => \lcd|covid_det_instance|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y9_N12
\lcd|covid_det_instance|out_ascii_new2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~0_combout\ = (\lcd|covid_det_instance|Equal0~0_combout\ & ((\lcd|covid_det_instance|Mux0~7_combout\))) # (!\lcd|covid_det_instance|Equal0~0_combout\ & (\lcd|covid_det_instance|out_ascii_new2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|out_ascii_new2~0_combout\,
	datab => \lcd|covid_det_instance|Equal0~0_combout\,
	datad => \lcd|covid_det_instance|Mux0~7_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~0_combout\);

-- Location: LCCOMB_X27_Y9_N16
\lcd|covid_det_instance|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~9_combout\ = (!\lcd|covid_det_instance|bit_index\(2) & (\lcd|covid_det_instance|bit_index\(0) & (\lcd|covid_det_instance|bit_index\(3) & !\lcd|covid_det_instance|bit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(2),
	datab => \lcd|covid_det_instance|bit_index\(0),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(1),
	combout => \lcd|covid_det_instance|Equal0~9_combout\);

-- Location: LCCOMB_X28_Y9_N30
\lcd|covid_det_instance|out_ascii_new2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~9_combout\ = (\lcd|covid_det_instance|Equal0~9_combout\ & ((\lcd|covid_det_instance|Mux0~7_combout\))) # (!\lcd|covid_det_instance|Equal0~9_combout\ & (\lcd|covid_det_instance|out_ascii_new2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|Equal0~9_combout\,
	datab => \lcd|covid_det_instance|out_ascii_new2~9_combout\,
	datad => \lcd|covid_det_instance|Mux0~7_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~9_combout\);

-- Location: LCCOMB_X27_Y11_N10
\lcd|write_data~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~19_combout\ = (\lcd|write_data[4]~8_combout\ & (\lcd|write_data~18_combout\)) # (!\lcd|write_data[4]~8_combout\ & ((\lcd|write_data~18_combout\ & ((\lcd|covid_det_instance|out_ascii_new2~9_combout\))) # (!\lcd|write_data~18_combout\ & 
-- (\lcd|covid_det_instance|out_ascii_new2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_data[4]~8_combout\,
	datab => \lcd|write_data~18_combout\,
	datac => \lcd|covid_det_instance|out_ascii_new2~0_combout\,
	datad => \lcd|covid_det_instance|out_ascii_new2~9_combout\,
	combout => \lcd|write_data~19_combout\);

-- Location: LCCOMB_X25_Y11_N16
\lcd|write_data[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~5_combout\ = (((\lcd|i\(0) & \lcd|Equal12~1_combout\)) # (!\lcd|write_column~2_combout\)) # (!\lcd|write_data[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_data[4]~4_combout\,
	datab => \lcd|i\(0),
	datac => \lcd|Equal12~1_combout\,
	datad => \lcd|write_column~2_combout\,
	combout => \lcd|write_data[4]~5_combout\);

-- Location: LCCOMB_X27_Y11_N0
\lcd|write_data~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~20_combout\ = (\lcd|write_data~19_combout\ & (\lcd|lcd_instance|ack~q\ & ((\lcd|write_data[4]~5_combout\) # (!\lcd|write_data[4]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_data~19_combout\,
	datab => \lcd|write_data[4]~23_combout\,
	datac => \lcd|lcd_instance|ack~q\,
	datad => \lcd|write_data[4]~5_combout\,
	combout => \lcd|write_data~20_combout\);

-- Location: LCCOMB_X25_Y11_N0
\lcd|write_data[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~7_combout\ = (\lcd_rst~input_o\) # ((\lcd|lcd_instance|ack~q\ & ((!\lcd|write_data[4]~6_combout\) # (!\lcd|Equal13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_rst~input_o\,
	datab => \lcd|Equal13~0_combout\,
	datac => \lcd|write_data[4]~6_combout\,
	datad => \lcd|lcd_instance|ack~q\,
	combout => \lcd|write_data[4]~7_combout\);

-- Location: FF_X27_Y11_N1
\lcd|write_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|write_data~20_combout\,
	ena => \lcd|write_data[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|write_data\(0));

-- Location: LCCOMB_X24_Y12_N28
\lcd|lcd_instance|data_dis[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|data_dis[0]~feeder_combout\ = \lcd|write_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd|write_data\(0),
	combout => \lcd|lcd_instance|data_dis[0]~feeder_combout\);

-- Location: FF_X24_Y12_N29
\lcd|lcd_instance|data_dis[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|data_dis[0]~feeder_combout\,
	ena => \lcd|lcd_instance|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|data_dis\(0));

-- Location: LCCOMB_X22_Y12_N12
\lcd|lcd_instance|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector5~0_combout\ = (\lcd|lcd_instance|state.S2~q\) # ((\lcd|lcd_instance|state.S1~q\) # ((!\lcd|lcd_instance|state.S0~q\ & \lcd|lcd_instance|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S0~q\,
	datab => \lcd|lcd_instance|state.S2~q\,
	datac => \lcd|lcd_instance|state.S1~q\,
	datad => \lcd|lcd_instance|LessThan0~0_combout\,
	combout => \lcd|lcd_instance|Selector5~0_combout\);

-- Location: LCCOMB_X22_Y12_N6
\lcd|lcd_instance|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector7~1_combout\ = (\lcd|lcd_instance|count_cmd\(0) & (!\lcd|lcd_instance|count_cmd\(1) & \lcd|lcd_instance|Selector5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|count_cmd\(0),
	datac => \lcd|lcd_instance|count_cmd\(1),
	datad => \lcd|lcd_instance|Selector5~0_combout\,
	combout => \lcd|lcd_instance|Selector7~1_combout\);

-- Location: LCCOMB_X25_Y12_N18
\lcd|write_column~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~4_combout\ = (!\lcd|i\(2) & (!\lcd|i\(1) & \lcd|Equal4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(2),
	datab => \lcd|i\(1),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|write_column~4_combout\);

-- Location: LCCOMB_X25_Y12_N4
\lcd|write_column~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~5_combout\ = (\lcd|lcd_instance|ack~q\ & ((\lcd|i\(0)) # (!\lcd|write_column~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(0),
	datac => \lcd|lcd_instance|ack~q\,
	datad => \lcd|write_column~4_combout\,
	combout => \lcd|write_column~5_combout\);

-- Location: LCCOMB_X25_Y11_N12
\lcd|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal7~0_combout\ = (!\lcd|i\(2) & (\lcd|i\(0) & (\lcd|i\(1) & \lcd|Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(2),
	datab => \lcd|i\(0),
	datac => \lcd|i\(1),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|Equal7~0_combout\);

-- Location: LCCOMB_X25_Y11_N22
\lcd|Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal6~0_combout\ = (!\lcd|i\(2) & (!\lcd|i\(0) & (\lcd|i\(1) & \lcd|Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(2),
	datab => \lcd|i\(0),
	datac => \lcd|i\(1),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|Equal6~0_combout\);

-- Location: LCCOMB_X25_Y11_N10
\lcd|write_column~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~3_combout\ = (\lcd|Equal6~0_combout\) # ((!\lcd|Equal7~0_combout\ & !\lcd|write_data[4]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal7~0_combout\,
	datac => \lcd|Equal6~0_combout\,
	datad => \lcd|write_data[4]~5_combout\,
	combout => \lcd|write_column~3_combout\);

-- Location: LCCOMB_X25_Y12_N16
\lcd|write_column~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~6_combout\ = (\lcd|write_column~5_combout\ & ((\lcd|write_column~4_combout\) # ((\lcd|write_column~2_combout\ & !\lcd|write_column~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_column~2_combout\,
	datab => \lcd|write_column~4_combout\,
	datac => \lcd|write_column~5_combout\,
	datad => \lcd|write_column~3_combout\,
	combout => \lcd|write_column~6_combout\);

-- Location: FF_X25_Y12_N17
\lcd|write_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|write_column~6_combout\,
	ena => \lcd|write_data[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|write_column\(0));

-- Location: LCCOMB_X25_Y12_N14
\lcd|lcd_instance|cmd_position[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|cmd_position[0]~feeder_combout\ = \lcd|write_column\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|write_column\(0),
	combout => \lcd|lcd_instance|cmd_position[0]~feeder_combout\);

-- Location: FF_X25_Y12_N15
\lcd|lcd_instance|cmd_position[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|cmd_position[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|cmd_position\(0));

-- Location: LCCOMB_X24_Y12_N10
\lcd|lcd_instance|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector7~0_combout\ = (\lcd|lcd_instance|lcd\(0) & (((\lcd|lcd_instance|cmd_position\(0) & !\lcd|lcd_instance|Selector8~2_combout\)) # (!\lcd|lcd_instance|lcd[1]~0_combout\))) # (!\lcd|lcd_instance|lcd\(0) & 
-- (\lcd|lcd_instance|cmd_position\(0) & (!\lcd|lcd_instance|Selector8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|lcd\(0),
	datab => \lcd|lcd_instance|cmd_position\(0),
	datac => \lcd|lcd_instance|Selector8~2_combout\,
	datad => \lcd|lcd_instance|lcd[1]~0_combout\,
	combout => \lcd|lcd_instance|Selector7~0_combout\);

-- Location: LCCOMB_X24_Y12_N30
\lcd|lcd_instance|Selector7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector7~2_combout\ = (\lcd|lcd_instance|Selector7~1_combout\) # ((\lcd|lcd_instance|Selector7~0_combout\) # ((\lcd|lcd_instance|lcd[7]~1_combout\ & \lcd|lcd_instance|data_dis\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|lcd[7]~1_combout\,
	datab => \lcd|lcd_instance|data_dis\(0),
	datac => \lcd|lcd_instance|Selector7~1_combout\,
	datad => \lcd|lcd_instance|Selector7~0_combout\,
	combout => \lcd|lcd_instance|Selector7~2_combout\);

-- Location: FF_X24_Y12_N31
\lcd|lcd_instance|lcd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|Selector7~2_combout\,
	ena => \ALT_INV_lcd_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|lcd\(0));

-- Location: LCCOMB_X24_Y11_N28
\lcd|write_column~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~7_combout\ = (\lcd|Equal6~0_combout\) # ((\lcd|Equal7~0_combout\) # ((\lcd|write_data[4]~12_combout\ & \lcd|write_data[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_data[4]~12_combout\,
	datab => \lcd|Equal6~0_combout\,
	datac => \lcd|Equal7~0_combout\,
	datad => \lcd|write_data[4]~5_combout\,
	combout => \lcd|write_column~7_combout\);

-- Location: LCCOMB_X24_Y11_N30
\lcd|write_column~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~8_combout\ = (\lcd|lcd_instance|ack~q\ & (\lcd|write_data[4]~8_combout\ & \lcd|write_column~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|lcd_instance|ack~q\,
	datac => \lcd|write_data[4]~8_combout\,
	datad => \lcd|write_column~7_combout\,
	combout => \lcd|write_column~8_combout\);

-- Location: FF_X24_Y11_N31
\lcd|write_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|write_column~8_combout\,
	ena => \lcd|write_data[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|write_column\(1));

-- Location: LCCOMB_X24_Y11_N0
\lcd|lcd_instance|cmd_position[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|cmd_position[1]~feeder_combout\ = \lcd|write_column\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|write_column\(1),
	combout => \lcd|lcd_instance|cmd_position[1]~feeder_combout\);

-- Location: FF_X24_Y11_N1
\lcd|lcd_instance|cmd_position[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|cmd_position[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|cmd_position\(1));

-- Location: LCCOMB_X25_Y11_N6
\lcd|write_data[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~21_combout\ = ((\lcd|Equal13~0_combout\ & (\lcd|write_data[4]~23_combout\ & \lcd|write_data[4]~24_combout\))) # (!\lcd|lcd_instance|ack~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|ack~q\,
	datab => \lcd|Equal13~0_combout\,
	datac => \lcd|write_data[4]~23_combout\,
	datad => \lcd|write_data[4]~24_combout\,
	combout => \lcd|write_data[4]~21_combout\);

-- Location: FF_X25_Y11_N7
\lcd|write_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|write_data[4]~21_combout\,
	ena => \lcd|write_data[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|write_data\(1));

-- Location: LCCOMB_X22_Y11_N0
\lcd|lcd_instance|data_dis[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|data_dis[1]~feeder_combout\ = \lcd|write_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|write_data\(1),
	combout => \lcd|lcd_instance|data_dis[1]~feeder_combout\);

-- Location: FF_X22_Y11_N1
\lcd|lcd_instance|data_dis[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|data_dis[1]~feeder_combout\,
	ena => \lcd|lcd_instance|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|data_dis\(1));

-- Location: LCCOMB_X22_Y11_N22
\lcd|lcd_instance|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector6~1_combout\ = (\lcd|lcd_instance|state.S0~q\ & \lcd|lcd_instance|data_dis\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|lcd_instance|state.S0~q\,
	datad => \lcd|lcd_instance|data_dis\(1),
	combout => \lcd|lcd_instance|Selector6~1_combout\);

-- Location: LCCOMB_X21_Y12_N24
\lcd|lcd_instance|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector6~0_combout\ = (!\lcd|lcd_instance|state.S2~q\ & !\lcd|lcd_instance|state.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|lcd_instance|state.S2~q\,
	datad => \lcd|lcd_instance|state.S1~q\,
	combout => \lcd|lcd_instance|Selector6~0_combout\);

-- Location: LCCOMB_X22_Y12_N24
\lcd|lcd_instance|Selector6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector6~2_combout\ = (\lcd|lcd_instance|Selector8~2_combout\ & (((\lcd|lcd_instance|Selector6~1_combout\ & \lcd|lcd_instance|Selector6~0_combout\)))) # (!\lcd|lcd_instance|Selector8~2_combout\ & (\lcd|lcd_instance|cmd_position\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|cmd_position\(1),
	datab => \lcd|lcd_instance|Selector8~2_combout\,
	datac => \lcd|lcd_instance|Selector6~1_combout\,
	datad => \lcd|lcd_instance|Selector6~0_combout\,
	combout => \lcd|lcd_instance|Selector6~2_combout\);

-- Location: LCCOMB_X22_Y12_N28
\lcd|lcd_instance|lcd[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|lcd[1]~2_combout\ = (!\lcd_rst~input_o\ & (!\lcd|lcd_instance|state.S9~q\ & ((\lcd|lcd_instance|state.S0~q\) # (\lcd|lcd_instance|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S0~q\,
	datab => \lcd_rst~input_o\,
	datac => \lcd|lcd_instance|state.S9~q\,
	datad => \lcd|lcd_instance|LessThan0~0_combout\,
	combout => \lcd|lcd_instance|lcd[1]~2_combout\);

-- Location: FF_X22_Y12_N25
\lcd|lcd_instance|lcd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|Selector6~2_combout\,
	ena => \lcd|lcd_instance|lcd[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|lcd\(1));

-- Location: LCCOMB_X22_Y12_N10
\lcd|lcd_instance|Selector5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector5~2_combout\ = (!\lcd|lcd_instance|count_cmd\(0) & (\lcd|lcd_instance|Selector5~0_combout\ & (\lcd|lcd_instance|count_cmd\(1) $ (\lcd|lcd_instance|count_cmd\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|count_cmd\(0),
	datab => \lcd|lcd_instance|count_cmd\(1),
	datac => \lcd|lcd_instance|count_cmd\(2),
	datad => \lcd|lcd_instance|Selector5~0_combout\,
	combout => \lcd|lcd_instance|Selector5~2_combout\);

-- Location: LCCOMB_X24_Y11_N10
\lcd|write_column~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~12_combout\ = (!\lcd|i\(3) & (\lcd|i\(2) & (\lcd|Equal4~4_combout\ & \lcd|Equal4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(3),
	datab => \lcd|i\(2),
	datac => \lcd|Equal4~4_combout\,
	datad => \lcd|Equal4~8_combout\,
	combout => \lcd|write_column~12_combout\);

-- Location: LCCOMB_X25_Y12_N10
\lcd|write_column~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~9_combout\ = (\lcd|write_column~12_combout\ & (\lcd|lcd_instance|ack~q\ & (\lcd|write_data[4]~8_combout\ & !\lcd|write_column~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_column~12_combout\,
	datab => \lcd|lcd_instance|ack~q\,
	datac => \lcd|write_data[4]~8_combout\,
	datad => \lcd|write_column~3_combout\,
	combout => \lcd|write_column~9_combout\);

-- Location: FF_X25_Y12_N11
\lcd|write_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|write_column~9_combout\,
	ena => \lcd|write_data[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|write_column\(2));

-- Location: FF_X25_Y12_N13
\lcd|lcd_instance|cmd_position[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	asdata => \lcd|write_column\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|cmd_position\(2));

-- Location: LCCOMB_X24_Y12_N18
\lcd|lcd_instance|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector5~1_combout\ = (\lcd|lcd_instance|lcd\(2) & (((\lcd|lcd_instance|cmd_position\(2) & !\lcd|lcd_instance|Selector8~2_combout\)) # (!\lcd|lcd_instance|lcd[1]~0_combout\))) # (!\lcd|lcd_instance|lcd\(2) & 
-- (\lcd|lcd_instance|cmd_position\(2) & (!\lcd|lcd_instance|Selector8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|lcd\(2),
	datab => \lcd|lcd_instance|cmd_position\(2),
	datac => \lcd|lcd_instance|Selector8~2_combout\,
	datad => \lcd|lcd_instance|lcd[1]~0_combout\,
	combout => \lcd|lcd_instance|Selector5~1_combout\);

-- Location: LCCOMB_X24_Y12_N8
\lcd|lcd_instance|Selector5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector5~3_combout\ = (\lcd|lcd_instance|Selector5~2_combout\) # ((\lcd|lcd_instance|Selector5~1_combout\) # ((\lcd|lcd_instance|lcd[7]~1_combout\ & \lcd|lcd_instance|data_dis\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|lcd[7]~1_combout\,
	datab => \lcd|lcd_instance|data_dis\(1),
	datac => \lcd|lcd_instance|Selector5~2_combout\,
	datad => \lcd|lcd_instance|Selector5~1_combout\,
	combout => \lcd|lcd_instance|Selector5~3_combout\);

-- Location: FF_X24_Y12_N9
\lcd|lcd_instance|lcd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|Selector5~3_combout\,
	ena => \ALT_INV_lcd_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|lcd\(2));

-- Location: LCCOMB_X21_Y12_N10
\lcd|lcd_instance|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector4~1_combout\ = (!\lcd|lcd_instance|count_cmd\(0) & (!\lcd|lcd_instance|count_cmd\(2) & ((!\lcd|lcd_instance|Selector6~0_combout\) # (!\lcd|lcd_instance|state.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|count_cmd\(0),
	datab => \lcd|lcd_instance|state.S0~q\,
	datac => \lcd|lcd_instance|count_cmd\(2),
	datad => \lcd|lcd_instance|Selector6~0_combout\,
	combout => \lcd|lcd_instance|Selector4~1_combout\);

-- Location: LCCOMB_X25_Y12_N6
\lcd|write_column~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~10_combout\ = ((!\lcd|i\(2) & ((!\lcd|i\(0)) # (!\lcd|i\(1))))) # (!\lcd|Equal4~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(2),
	datab => \lcd|i\(1),
	datac => \lcd|i\(0),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|write_column~10_combout\);

-- Location: LCCOMB_X25_Y12_N20
\lcd|write_column~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~11_combout\ = (\lcd|write_column~10_combout\ & (\lcd|lcd_instance|ack~q\ & (\lcd|write_data[4]~8_combout\ & !\lcd|write_column~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_column~10_combout\,
	datab => \lcd|lcd_instance|ack~q\,
	datac => \lcd|write_data[4]~8_combout\,
	datad => \lcd|write_column~3_combout\,
	combout => \lcd|write_column~11_combout\);

-- Location: FF_X25_Y12_N21
\lcd|write_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|write_column~11_combout\,
	ena => \lcd|write_data[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|write_column\(3));

-- Location: LCCOMB_X25_Y12_N30
\lcd|lcd_instance|cmd_position[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|cmd_position[3]~feeder_combout\ = \lcd|write_column\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|write_column\(3),
	combout => \lcd|lcd_instance|cmd_position[3]~feeder_combout\);

-- Location: FF_X25_Y12_N31
\lcd|lcd_instance|cmd_position[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|cmd_position[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|cmd_position\(3));

-- Location: LCCOMB_X24_Y12_N12
\lcd|lcd_instance|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector4~0_combout\ = (\lcd|lcd_instance|cmd_position\(3) & (((\lcd|lcd_instance|lcd\(3) & !\lcd|lcd_instance|lcd[1]~0_combout\)) # (!\lcd|lcd_instance|Selector8~2_combout\))) # (!\lcd|lcd_instance|cmd_position\(3) & 
-- (\lcd|lcd_instance|lcd\(3) & ((!\lcd|lcd_instance|lcd[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|cmd_position\(3),
	datab => \lcd|lcd_instance|lcd\(3),
	datac => \lcd|lcd_instance|Selector8~2_combout\,
	datad => \lcd|lcd_instance|lcd[1]~0_combout\,
	combout => \lcd|lcd_instance|Selector4~0_combout\);

-- Location: LCCOMB_X24_Y12_N2
\lcd|lcd_instance|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector4~2_combout\ = (\lcd|lcd_instance|Selector4~1_combout\) # ((\lcd|lcd_instance|Selector4~0_combout\) # ((\lcd|lcd_instance|lcd[7]~1_combout\ & \lcd|lcd_instance|data_dis\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|lcd[7]~1_combout\,
	datab => \lcd|lcd_instance|data_dis\(1),
	datac => \lcd|lcd_instance|Selector4~1_combout\,
	datad => \lcd|lcd_instance|Selector4~0_combout\,
	combout => \lcd|lcd_instance|Selector4~2_combout\);

-- Location: FF_X24_Y12_N3
\lcd|lcd_instance|lcd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|Selector4~2_combout\,
	ena => \ALT_INV_lcd_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|lcd\(3));

-- Location: LCCOMB_X24_Y11_N4
\lcd|write_data[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \lcd|write_data[4]~feeder_combout\);

-- Location: FF_X24_Y11_N5
\lcd|write_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|write_data[4]~feeder_combout\,
	ena => \lcd|write_data[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|write_data\(4));

-- Location: LCCOMB_X24_Y12_N6
\lcd|lcd_instance|data_dis[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|data_dis[4]~feeder_combout\ = \lcd|write_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_data\(4),
	combout => \lcd|lcd_instance|data_dis[4]~feeder_combout\);

-- Location: FF_X24_Y12_N7
\lcd|lcd_instance|data_dis[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|data_dis[4]~feeder_combout\,
	ena => \lcd|lcd_instance|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|data_dis\(4));

-- Location: LCCOMB_X22_Y12_N16
\lcd|lcd_instance|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector3~0_combout\ = (!\lcd|lcd_instance|count_cmd\(2) & (!\lcd|lcd_instance|lcd[7]~1_combout\ & (!\lcd|lcd_instance|count_cmd\(1) & !\lcd|lcd_instance|count_cmd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|count_cmd\(2),
	datab => \lcd|lcd_instance|lcd[7]~1_combout\,
	datac => \lcd|lcd_instance|count_cmd\(1),
	datad => \lcd|lcd_instance|count_cmd\(0),
	combout => \lcd|lcd_instance|Selector3~0_combout\);

-- Location: LCCOMB_X22_Y12_N2
\lcd|lcd_instance|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector3~1_combout\ = (\lcd|lcd_instance|Selector8~2_combout\ & ((\lcd|lcd_instance|Selector3~0_combout\) # ((\lcd|lcd_instance|lcd[7]~1_combout\ & \lcd|lcd_instance|data_dis\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|lcd[7]~1_combout\,
	datab => \lcd|lcd_instance|Selector8~2_combout\,
	datac => \lcd|lcd_instance|data_dis\(4),
	datad => \lcd|lcd_instance|Selector3~0_combout\,
	combout => \lcd|lcd_instance|Selector3~1_combout\);

-- Location: FF_X22_Y12_N3
\lcd|lcd_instance|lcd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|Selector3~1_combout\,
	ena => \lcd|lcd_instance|lcd[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|lcd\(4));

-- Location: LCCOMB_X24_Y11_N22
\lcd|write_data[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \lcd|write_data[5]~feeder_combout\);

-- Location: FF_X24_Y11_N23
\lcd|write_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|write_data[5]~feeder_combout\,
	ena => \lcd|write_data[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|write_data\(5));

-- Location: LCCOMB_X24_Y12_N20
\lcd|lcd_instance|data_dis[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|data_dis[5]~feeder_combout\ = \lcd|write_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_data\(5),
	combout => \lcd|lcd_instance|data_dis[5]~feeder_combout\);

-- Location: FF_X24_Y12_N21
\lcd|lcd_instance|data_dis[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|data_dis[5]~feeder_combout\,
	ena => \lcd|lcd_instance|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|data_dis\(5));

-- Location: LCCOMB_X22_Y12_N0
\lcd|lcd_instance|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector2~0_combout\ = (\lcd|lcd_instance|Selector8~2_combout\ & ((\lcd|lcd_instance|Selector3~0_combout\) # ((\lcd|lcd_instance|lcd[7]~1_combout\ & \lcd|lcd_instance|data_dis\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|lcd[7]~1_combout\,
	datab => \lcd|lcd_instance|Selector8~2_combout\,
	datac => \lcd|lcd_instance|data_dis\(5),
	datad => \lcd|lcd_instance|Selector3~0_combout\,
	combout => \lcd|lcd_instance|Selector2~0_combout\);

-- Location: FF_X22_Y12_N1
\lcd|lcd_instance|lcd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|Selector2~0_combout\,
	ena => \lcd|lcd_instance|lcd[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|lcd\(5));

-- Location: LCCOMB_X22_Y12_N26
\lcd|lcd_instance|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector0~0_combout\ = ((\lcd|lcd_instance|count_cmd\(1) & (!\lcd|lcd_instance|lcd[7]~1_combout\ & \lcd|lcd_instance|count_cmd\(0)))) # (!\lcd|lcd_instance|Selector8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|count_cmd\(1),
	datab => \lcd|lcd_instance|Selector8~2_combout\,
	datac => \lcd|lcd_instance|lcd[7]~1_combout\,
	datad => \lcd|lcd_instance|count_cmd\(0),
	combout => \lcd|lcd_instance|Selector0~0_combout\);

-- Location: FF_X22_Y12_N27
\lcd|lcd_instance|lcd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|Selector0~0_combout\,
	ena => \lcd|lcd_instance|lcd[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|lcd\(7));

-- Location: UNVM_X0_Y22_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y34_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X25_Y33_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_mosi_adc <= \mosi_adc~output_o\;

ww_mosi_dac <= \mosi_dac~output_o\;

ww_sclk1 <= \sclk1~output_o\;

ww_sclk2 <= \sclk2~output_o\;

ww_cs_a <= \cs_a~output_o\;

ww_cs_b <= \cs_b~output_o\;

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_en <= \lcd_en~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

ww_detect <= \detect~output_o\;

ww_lcd1(0) <= \lcd1[0]~output_o\;

ww_lcd1(1) <= \lcd1[1]~output_o\;

ww_lcd1(2) <= \lcd1[2]~output_o\;

ww_lcd1(3) <= \lcd1[3]~output_o\;

ww_lcd1(4) <= \lcd1[4]~output_o\;

ww_lcd1(5) <= \lcd1[5]~output_o\;

ww_lcd1(6) <= \lcd1[6]~output_o\;

ww_lcd1(7) <= \lcd1[7]~output_o\;
END structure;


