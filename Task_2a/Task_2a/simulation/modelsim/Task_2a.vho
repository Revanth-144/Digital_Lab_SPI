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

-- DATE "11/04/2024 15:03:57"

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

ENTITY 	top_level IS
    PORT (
	rst : IN std_logic;
	clk_in : IN std_logic;
	miso : IN std_logic;
	mosi : BUFFER std_logic;
	sclk : BUFFER std_logic;
	cs_b : BUFFER std_logic;
	lcd_rst : IN std_logic;
	lcd_rw : BUFFER std_logic;
	lcd_en : BUFFER std_logic;
	lcd_rs : BUFFER std_logic;
	detect : BUFFER std_logic;
	led_output : BUFFER std_logic_vector(7 DOWNTO 0);
	lcd1 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- mosi	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclk	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cs_b	=>  Location: PIN_78,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rw	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_en	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rs	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- detect	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_output[0]	=>  Location: PIN_61,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_output[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_output[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_output[3]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_output[4]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_output[5]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_output[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_output[7]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd1[0]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd1[1]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd1[2]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd1[3]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd1[4]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd1[5]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd1[6]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd1[7]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rst	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- miso	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
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
SIGNAL ww_mosi : std_logic;
SIGNAL ww_sclk : std_logic;
SIGNAL ww_cs_b : std_logic;
SIGNAL ww_lcd_rst : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_en : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_detect : std_logic;
SIGNAL ww_led_output : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lcd1 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \lcd|lcd_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi|clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd|clk_slow~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \mosi~output_o\ : std_logic;
SIGNAL \sclk~output_o\ : std_logic;
SIGNAL \cs_b~output_o\ : std_logic;
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_en~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \detect~output_o\ : std_logic;
SIGNAL \led_output[0]~output_o\ : std_logic;
SIGNAL \led_output[1]~output_o\ : std_logic;
SIGNAL \led_output[2]~output_o\ : std_logic;
SIGNAL \led_output[3]~output_o\ : std_logic;
SIGNAL \led_output[4]~output_o\ : std_logic;
SIGNAL \led_output[5]~output_o\ : std_logic;
SIGNAL \led_output[6]~output_o\ : std_logic;
SIGNAL \led_output[7]~output_o\ : std_logic;
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
SIGNAL \spi|Add0~0_combout\ : std_logic;
SIGNAL \spi|counter~2_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \spi|Add0~1\ : std_logic;
SIGNAL \spi|Add0~2_combout\ : std_logic;
SIGNAL \spi|counter~1_combout\ : std_logic;
SIGNAL \spi|Add0~3\ : std_logic;
SIGNAL \spi|Add0~4_combout\ : std_logic;
SIGNAL \spi|counter~0_combout\ : std_logic;
SIGNAL \spi|Add0~5\ : std_logic;
SIGNAL \spi|Add0~6_combout\ : std_logic;
SIGNAL \spi|Add0~7\ : std_logic;
SIGNAL \spi|Add0~8_combout\ : std_logic;
SIGNAL \spi|Add0~9\ : std_logic;
SIGNAL \spi|Add0~10_combout\ : std_logic;
SIGNAL \spi|Add0~11\ : std_logic;
SIGNAL \spi|Add0~12_combout\ : std_logic;
SIGNAL \spi|Add0~13\ : std_logic;
SIGNAL \spi|Add0~14_combout\ : std_logic;
SIGNAL \spi|Add0~15\ : std_logic;
SIGNAL \spi|Add0~16_combout\ : std_logic;
SIGNAL \spi|Add0~17\ : std_logic;
SIGNAL \spi|Add0~18_combout\ : std_logic;
SIGNAL \spi|Add0~19\ : std_logic;
SIGNAL \spi|Add0~20_combout\ : std_logic;
SIGNAL \spi|Add0~21\ : std_logic;
SIGNAL \spi|Add0~22_combout\ : std_logic;
SIGNAL \spi|Add0~23\ : std_logic;
SIGNAL \spi|Add0~24_combout\ : std_logic;
SIGNAL \spi|Add0~25\ : std_logic;
SIGNAL \spi|Add0~26_combout\ : std_logic;
SIGNAL \spi|Equal0~6_combout\ : std_logic;
SIGNAL \spi|Add0~27\ : std_logic;
SIGNAL \spi|Add0~28_combout\ : std_logic;
SIGNAL \spi|Add0~29\ : std_logic;
SIGNAL \spi|Add0~30_combout\ : std_logic;
SIGNAL \spi|Equal0~5_combout\ : std_logic;
SIGNAL \spi|Equal0~7_combout\ : std_logic;
SIGNAL \spi|Equal0~8_combout\ : std_logic;
SIGNAL \spi|Equal0~9_combout\ : std_logic;
SIGNAL \spi|Add0~31\ : std_logic;
SIGNAL \spi|Add0~32_combout\ : std_logic;
SIGNAL \spi|Add0~33\ : std_logic;
SIGNAL \spi|Add0~34_combout\ : std_logic;
SIGNAL \spi|Add0~35\ : std_logic;
SIGNAL \spi|Add0~36_combout\ : std_logic;
SIGNAL \spi|Add0~37\ : std_logic;
SIGNAL \spi|Add0~38_combout\ : std_logic;
SIGNAL \spi|Add0~39\ : std_logic;
SIGNAL \spi|Add0~40_combout\ : std_logic;
SIGNAL \spi|Add0~41\ : std_logic;
SIGNAL \spi|Add0~42_combout\ : std_logic;
SIGNAL \spi|Add0~43\ : std_logic;
SIGNAL \spi|Add0~44_combout\ : std_logic;
SIGNAL \spi|Add0~45\ : std_logic;
SIGNAL \spi|Add0~46_combout\ : std_logic;
SIGNAL \spi|Add0~47\ : std_logic;
SIGNAL \spi|Add0~48_combout\ : std_logic;
SIGNAL \spi|Add0~49\ : std_logic;
SIGNAL \spi|Add0~50_combout\ : std_logic;
SIGNAL \spi|Add0~51\ : std_logic;
SIGNAL \spi|Add0~52_combout\ : std_logic;
SIGNAL \spi|Add0~53\ : std_logic;
SIGNAL \spi|Add0~54_combout\ : std_logic;
SIGNAL \spi|Equal0~1_combout\ : std_logic;
SIGNAL \spi|Add0~55\ : std_logic;
SIGNAL \spi|Add0~56_combout\ : std_logic;
SIGNAL \spi|Add0~57\ : std_logic;
SIGNAL \spi|Add0~58_combout\ : std_logic;
SIGNAL \spi|Add0~59\ : std_logic;
SIGNAL \spi|Add0~60_combout\ : std_logic;
SIGNAL \spi|Add0~61\ : std_logic;
SIGNAL \spi|Add0~62_combout\ : std_logic;
SIGNAL \spi|Equal0~0_combout\ : std_logic;
SIGNAL \spi|Equal0~2_combout\ : std_logic;
SIGNAL \spi|Equal0~3_combout\ : std_logic;
SIGNAL \spi|Equal0~4_combout\ : std_logic;
SIGNAL \spi|Equal0~10_combout\ : std_logic;
SIGNAL \spi|clk~0_combout\ : std_logic;
SIGNAL \spi|clk~feeder_combout\ : std_logic;
SIGNAL \spi|clk~q\ : std_logic;
SIGNAL \spi|clk~clkctrl_outclk\ : std_logic;
SIGNAL \spi|Add2~0_combout\ : std_logic;
SIGNAL \spi|counter2[0]~32_combout\ : std_logic;
SIGNAL \spi|Add2~1\ : std_logic;
SIGNAL \spi|Add2~2_combout\ : std_logic;
SIGNAL \spi|counter2[1]~30_combout\ : std_logic;
SIGNAL \spi|Add2~3\ : std_logic;
SIGNAL \spi|Add2~4_combout\ : std_logic;
SIGNAL \spi|counter2[2]~33_combout\ : std_logic;
SIGNAL \spi|Add2~5\ : std_logic;
SIGNAL \spi|Add2~6_combout\ : std_logic;
SIGNAL \spi|counter2[3]~29_combout\ : std_logic;
SIGNAL \spi|LessThan0~9_combout\ : std_logic;
SIGNAL \spi|Add2~7\ : std_logic;
SIGNAL \spi|Add2~8_combout\ : std_logic;
SIGNAL \spi|counter2[4]~28_combout\ : std_logic;
SIGNAL \spi|Add2~9\ : std_logic;
SIGNAL \spi|Add2~10_combout\ : std_logic;
SIGNAL \spi|counter2[5]~27_combout\ : std_logic;
SIGNAL \spi|Add2~11\ : std_logic;
SIGNAL \spi|Add2~12_combout\ : std_logic;
SIGNAL \spi|counter2[6]~26_combout\ : std_logic;
SIGNAL \spi|Add2~13\ : std_logic;
SIGNAL \spi|Add2~14_combout\ : std_logic;
SIGNAL \spi|counter2[7]~25_combout\ : std_logic;
SIGNAL \spi|Add2~15\ : std_logic;
SIGNAL \spi|Add2~16_combout\ : std_logic;
SIGNAL \spi|counter2[8]~24_combout\ : std_logic;
SIGNAL \spi|Add2~17\ : std_logic;
SIGNAL \spi|Add2~18_combout\ : std_logic;
SIGNAL \spi|counter2[9]~23_combout\ : std_logic;
SIGNAL \spi|Add2~19\ : std_logic;
SIGNAL \spi|Add2~20_combout\ : std_logic;
SIGNAL \spi|counter2[10]~22_combout\ : std_logic;
SIGNAL \spi|LessThan0~6_combout\ : std_logic;
SIGNAL \spi|Add2~21\ : std_logic;
SIGNAL \spi|Add2~22_combout\ : std_logic;
SIGNAL \spi|counter2[11]~21_combout\ : std_logic;
SIGNAL \spi|Add2~23\ : std_logic;
SIGNAL \spi|Add2~24_combout\ : std_logic;
SIGNAL \spi|counter2[12]~20_combout\ : std_logic;
SIGNAL \spi|Add2~25\ : std_logic;
SIGNAL \spi|Add2~26_combout\ : std_logic;
SIGNAL \spi|counter2[13]~19_combout\ : std_logic;
SIGNAL \spi|Add2~27\ : std_logic;
SIGNAL \spi|Add2~28_combout\ : std_logic;
SIGNAL \spi|counter2[14]~18_combout\ : std_logic;
SIGNAL \spi|LessThan0~5_combout\ : std_logic;
SIGNAL \spi|LessThan0~7_combout\ : std_logic;
SIGNAL \spi|Add2~29\ : std_logic;
SIGNAL \spi|Add2~30_combout\ : std_logic;
SIGNAL \spi|counter2[15]~17_combout\ : std_logic;
SIGNAL \spi|Add2~31\ : std_logic;
SIGNAL \spi|Add2~32_combout\ : std_logic;
SIGNAL \spi|counter2[16]~16_combout\ : std_logic;
SIGNAL \spi|Add2~33\ : std_logic;
SIGNAL \spi|Add2~34_combout\ : std_logic;
SIGNAL \spi|counter2[17]~15_combout\ : std_logic;
SIGNAL \spi|Add2~35\ : std_logic;
SIGNAL \spi|Add2~36_combout\ : std_logic;
SIGNAL \spi|counter2[18]~14_combout\ : std_logic;
SIGNAL \spi|Add2~37\ : std_logic;
SIGNAL \spi|Add2~38_combout\ : std_logic;
SIGNAL \spi|counter2[19]~13_combout\ : std_logic;
SIGNAL \spi|Add2~39\ : std_logic;
SIGNAL \spi|Add2~40_combout\ : std_logic;
SIGNAL \spi|counter2[20]~12_combout\ : std_logic;
SIGNAL \spi|Add2~41\ : std_logic;
SIGNAL \spi|Add2~42_combout\ : std_logic;
SIGNAL \spi|counter2[21]~11_combout\ : std_logic;
SIGNAL \spi|Add2~43\ : std_logic;
SIGNAL \spi|Add2~44_combout\ : std_logic;
SIGNAL \spi|counter2[22]~10_combout\ : std_logic;
SIGNAL \spi|LessThan0~2_combout\ : std_logic;
SIGNAL \spi|Add2~45\ : std_logic;
SIGNAL \spi|Add2~46_combout\ : std_logic;
SIGNAL \spi|counter2[23]~9_combout\ : std_logic;
SIGNAL \spi|Add2~47\ : std_logic;
SIGNAL \spi|Add2~48_combout\ : std_logic;
SIGNAL \spi|counter2[24]~8_combout\ : std_logic;
SIGNAL \spi|Add2~49\ : std_logic;
SIGNAL \spi|Add2~50_combout\ : std_logic;
SIGNAL \spi|counter2[25]~7_combout\ : std_logic;
SIGNAL \spi|LessThan0~1_combout\ : std_logic;
SIGNAL \spi|LessThan0~3_combout\ : std_logic;
SIGNAL \spi|LessThan0~0_combout\ : std_logic;
SIGNAL \spi|LessThan0~4_combout\ : std_logic;
SIGNAL \spi|LessThan0~8_combout\ : std_logic;
SIGNAL \spi|CS_in~0_combout\ : std_logic;
SIGNAL \spi|CS_in~q\ : std_logic;
SIGNAL \spi|Add4~0_combout\ : std_logic;
SIGNAL \spi|counter1[0]~30_combout\ : std_logic;
SIGNAL \spi|Add4~1\ : std_logic;
SIGNAL \spi|Add4~2_combout\ : std_logic;
SIGNAL \spi|counter1[1]~1_combout\ : std_logic;
SIGNAL \spi|Add4~3\ : std_logic;
SIGNAL \spi|Add4~4_combout\ : std_logic;
SIGNAL \spi|counter1[2]~0_combout\ : std_logic;
SIGNAL \spi|Add4~5\ : std_logic;
SIGNAL \spi|Add4~6_combout\ : std_logic;
SIGNAL \spi|counter1[3]~29_combout\ : std_logic;
SIGNAL \spi|Add4~7\ : std_logic;
SIGNAL \spi|Add4~8_combout\ : std_logic;
SIGNAL \spi|counter1[4]~28_combout\ : std_logic;
SIGNAL \spi|Add4~9\ : std_logic;
SIGNAL \spi|Add4~10_combout\ : std_logic;
SIGNAL \spi|counter1[5]~27_combout\ : std_logic;
SIGNAL \spi|Add4~11\ : std_logic;
SIGNAL \spi|Add4~12_combout\ : std_logic;
SIGNAL \spi|counter1[6]~26_combout\ : std_logic;
SIGNAL \spi|Equal1~7_combout\ : std_logic;
SIGNAL \spi|Add4~13\ : std_logic;
SIGNAL \spi|Add4~14_combout\ : std_logic;
SIGNAL \spi|counter1[7]~25_combout\ : std_logic;
SIGNAL \spi|Add4~15\ : std_logic;
SIGNAL \spi|Add4~16_combout\ : std_logic;
SIGNAL \spi|counter1[8]~24_combout\ : std_logic;
SIGNAL \spi|Add4~17\ : std_logic;
SIGNAL \spi|Add4~18_combout\ : std_logic;
SIGNAL \spi|counter1[9]~23_combout\ : std_logic;
SIGNAL \spi|Add4~19\ : std_logic;
SIGNAL \spi|Add4~20_combout\ : std_logic;
SIGNAL \spi|counter1[10]~22_combout\ : std_logic;
SIGNAL \spi|Add4~21\ : std_logic;
SIGNAL \spi|Add4~22_combout\ : std_logic;
SIGNAL \spi|counter1[11]~21_combout\ : std_logic;
SIGNAL \spi|Add4~23\ : std_logic;
SIGNAL \spi|Add4~24_combout\ : std_logic;
SIGNAL \spi|counter1[12]~20_combout\ : std_logic;
SIGNAL \spi|Add4~25\ : std_logic;
SIGNAL \spi|Add4~26_combout\ : std_logic;
SIGNAL \spi|counter1[13]~19_combout\ : std_logic;
SIGNAL \spi|Add4~27\ : std_logic;
SIGNAL \spi|Add4~28_combout\ : std_logic;
SIGNAL \spi|counter1[14]~18_combout\ : std_logic;
SIGNAL \spi|Equal1~5_combout\ : std_logic;
SIGNAL \spi|Equal1~6_combout\ : std_logic;
SIGNAL \spi|Equal1~8_combout\ : std_logic;
SIGNAL \spi|Equal1~10_combout\ : std_logic;
SIGNAL \spi|Add4~29\ : std_logic;
SIGNAL \spi|Add4~30_combout\ : std_logic;
SIGNAL \spi|counter1[15]~17_combout\ : std_logic;
SIGNAL \spi|Add4~31\ : std_logic;
SIGNAL \spi|Add4~32_combout\ : std_logic;
SIGNAL \spi|counter1[16]~16_combout\ : std_logic;
SIGNAL \spi|Add4~33\ : std_logic;
SIGNAL \spi|Add4~34_combout\ : std_logic;
SIGNAL \spi|counter1[17]~15_combout\ : std_logic;
SIGNAL \spi|Add4~35\ : std_logic;
SIGNAL \spi|Add4~36_combout\ : std_logic;
SIGNAL \spi|counter1[18]~14_combout\ : std_logic;
SIGNAL \spi|Add4~37\ : std_logic;
SIGNAL \spi|Add4~38_combout\ : std_logic;
SIGNAL \spi|counter1[19]~13_combout\ : std_logic;
SIGNAL \spi|Add4~39\ : std_logic;
SIGNAL \spi|Add4~40_combout\ : std_logic;
SIGNAL \spi|counter1[20]~12_combout\ : std_logic;
SIGNAL \spi|Add4~41\ : std_logic;
SIGNAL \spi|Add4~42_combout\ : std_logic;
SIGNAL \spi|counter1[21]~11_combout\ : std_logic;
SIGNAL \spi|Add4~43\ : std_logic;
SIGNAL \spi|Add4~44_combout\ : std_logic;
SIGNAL \spi|counter1[22]~10_combout\ : std_logic;
SIGNAL \spi|Add4~45\ : std_logic;
SIGNAL \spi|Add4~46_combout\ : std_logic;
SIGNAL \spi|counter1[23]~9_combout\ : std_logic;
SIGNAL \spi|Add4~47\ : std_logic;
SIGNAL \spi|Add4~48_combout\ : std_logic;
SIGNAL \spi|counter1[24]~8_combout\ : std_logic;
SIGNAL \spi|Add4~49\ : std_logic;
SIGNAL \spi|Add4~50_combout\ : std_logic;
SIGNAL \spi|counter1[25]~7_combout\ : std_logic;
SIGNAL \spi|Add4~51\ : std_logic;
SIGNAL \spi|Add4~52_combout\ : std_logic;
SIGNAL \spi|counter1[26]~6_combout\ : std_logic;
SIGNAL \spi|Equal1~1_combout\ : std_logic;
SIGNAL \spi|Equal1~3_combout\ : std_logic;
SIGNAL \spi|Equal1~2_combout\ : std_logic;
SIGNAL \spi|Add4~53\ : std_logic;
SIGNAL \spi|Add4~54_combout\ : std_logic;
SIGNAL \spi|counter1[27]~5_combout\ : std_logic;
SIGNAL \spi|Add4~55\ : std_logic;
SIGNAL \spi|Add4~56_combout\ : std_logic;
SIGNAL \spi|counter1[28]~4_combout\ : std_logic;
SIGNAL \spi|Equal1~0_combout\ : std_logic;
SIGNAL \spi|Equal1~4_combout\ : std_logic;
SIGNAL \spi|counter2~0_combout\ : std_logic;
SIGNAL \spi|counter2~1_combout\ : std_logic;
SIGNAL \spi|Add2~51\ : std_logic;
SIGNAL \spi|Add2~52_combout\ : std_logic;
SIGNAL \spi|counter2[26]~6_combout\ : std_logic;
SIGNAL \spi|Add2~53\ : std_logic;
SIGNAL \spi|Add2~54_combout\ : std_logic;
SIGNAL \spi|counter2[27]~5_combout\ : std_logic;
SIGNAL \spi|Add2~55\ : std_logic;
SIGNAL \spi|Add2~56_combout\ : std_logic;
SIGNAL \spi|counter2[28]~4_combout\ : std_logic;
SIGNAL \spi|Add2~57\ : std_logic;
SIGNAL \spi|Add2~58_combout\ : std_logic;
SIGNAL \spi|counter2[29]~3_combout\ : std_logic;
SIGNAL \spi|Add2~59\ : std_logic;
SIGNAL \spi|Add2~60_combout\ : std_logic;
SIGNAL \spi|counter2[30]~2_combout\ : std_logic;
SIGNAL \spi|Add2~61\ : std_logic;
SIGNAL \spi|Add2~62_combout\ : std_logic;
SIGNAL \spi|counter2[31]~31_combout\ : std_logic;
SIGNAL \spi|process_1~0_combout\ : std_logic;
SIGNAL \spi|Equal1~11_combout\ : std_logic;
SIGNAL \spi|process_1~1_combout\ : std_logic;
SIGNAL \spi|Add4~57\ : std_logic;
SIGNAL \spi|Add4~58_combout\ : std_logic;
SIGNAL \spi|counter1[29]~3_combout\ : std_logic;
SIGNAL \spi|Add4~59\ : std_logic;
SIGNAL \spi|Add4~60_combout\ : std_logic;
SIGNAL \spi|counter1[30]~2_combout\ : std_logic;
SIGNAL \spi|Add4~61\ : std_logic;
SIGNAL \spi|Add4~62_combout\ : std_logic;
SIGNAL \spi|Add4~64_combout\ : std_logic;
SIGNAL \spi|Equal1~9_combout\ : std_logic;
SIGNAL \spi|LessThan1~0_combout\ : std_logic;
SIGNAL \spi|MOSI~0_combout\ : std_logic;
SIGNAL \spi|MOSI~1_combout\ : std_logic;
SIGNAL \spi|MOSI~q\ : std_logic;
SIGNAL \lcd|Add1~0_combout\ : std_logic;
SIGNAL \lcd|Add1~1\ : std_logic;
SIGNAL \lcd|Add1~2_combout\ : std_logic;
SIGNAL \lcd|Add1~3\ : std_logic;
SIGNAL \lcd|Add1~4_combout\ : std_logic;
SIGNAL \lcd|Add1~5\ : std_logic;
SIGNAL \lcd|Add1~6_combout\ : std_logic;
SIGNAL \lcd|Add1~7\ : std_logic;
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
SIGNAL \lcd|Add1~61\ : std_logic;
SIGNAL \lcd|Add1~62_combout\ : std_logic;
SIGNAL \lcd|Equal2~5_combout\ : std_logic;
SIGNAL \lcd|Equal3~3_combout\ : std_logic;
SIGNAL \lcd|Equal3~0_combout\ : std_logic;
SIGNAL \lcd|Equal3~1_combout\ : std_logic;
SIGNAL \lcd|Equal2~0_combout\ : std_logic;
SIGNAL \lcd|Equal2~2_combout\ : std_logic;
SIGNAL \lcd|Equal2~1_combout\ : std_logic;
SIGNAL \lcd|Equal2~3_combout\ : std_logic;
SIGNAL \lcd|Equal2~4_combout\ : std_logic;
SIGNAL \lcd|Equal3~2_combout\ : std_logic;
SIGNAL \lcd|Equal3~4_combout\ : std_logic;
SIGNAL \lcd|div_clk_new~2_combout\ : std_logic;
SIGNAL \lcd|Add1~8_combout\ : std_logic;
SIGNAL \lcd|Equal2~7_combout\ : std_logic;
SIGNAL \lcd|clk_slow~0_combout\ : std_logic;
SIGNAL \lcd|Equal2~6_combout\ : std_logic;
SIGNAL \lcd|clk_slow~1_combout\ : std_logic;
SIGNAL \lcd|clk_slow~2_combout\ : std_logic;
SIGNAL \lcd|clk_slow~feeder_combout\ : std_logic;
SIGNAL \lcd|clk_slow~q\ : std_logic;
SIGNAL \lcd|clk_slow~clkctrl_outclk\ : std_logic;
SIGNAL \lcd_rst~input_o\ : std_logic;
SIGNAL \lcd|lcd_instance|state~29_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S0~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S0~q\ : std_logic;
SIGNAL \lcd|lcd_instance|state~26_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S1~q\ : std_logic;
SIGNAL \lcd|lcd_instance|state~31_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S2~q\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector23~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Add0~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Add0~1_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|LessThan0~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state~33_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S5~q\ : std_logic;
SIGNAL \lcd|lcd_instance|state~34_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S6~q\ : std_logic;
SIGNAL \lcd|lcd_instance|state~28_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S7~feeder_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S7~q\ : std_logic;
SIGNAL \lcd|lcd_instance|state~35_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S8~q\ : std_logic;
SIGNAL \lcd|lcd_instance|state~30_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|state.S9~q\ : std_logic;
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
SIGNAL \lcd|covid_det_instance|bit_index[1]~1_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|bit_index[1]~feeder_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|bit_index[0]~3_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|bit_index[3]~2_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|bit_index[2]~0_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|bit_index[2]~feeder_combout\ : std_logic;
SIGNAL \miso~input_o\ : std_logic;
SIGNAL \spi|Decoder0~3_combout\ : std_logic;
SIGNAL \spi|temp_data[5]~4_combout\ : std_logic;
SIGNAL \spi|Decoder0~2_combout\ : std_logic;
SIGNAL \spi|temp_data[4]~5_combout\ : std_logic;
SIGNAL \spi|temp_data[6]~7_combout\ : std_logic;
SIGNAL \spi|temp_data[6]~8_combout\ : std_logic;
SIGNAL \spi|process_1~2_combout\ : std_logic;
SIGNAL \spi|Decoder0~4_combout\ : std_logic;
SIGNAL \spi|temp_data[7]~6_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Mux0~3_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Mux0~4_combout\ : std_logic;
SIGNAL \spi|temp_data[8]~10_combout\ : std_logic;
SIGNAL \spi|temp_data[8]~11_combout\ : std_logic;
SIGNAL \spi|Decoder0~5_combout\ : std_logic;
SIGNAL \spi|temp_data[9]~9_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Mux0~5_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Mux0~6_combout\ : std_logic;
SIGNAL \spi|Decoder0~6_combout\ : std_logic;
SIGNAL \spi|temp_data[1]~0_combout\ : std_logic;
SIGNAL \spi|temp_data[0]~1_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Mux0~0_combout\ : std_logic;
SIGNAL \spi|temp_data[3]~3_combout\ : std_logic;
SIGNAL \spi|temp_data[2]~2_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Mux0~1_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Mux0~2_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Mux0~7_combout\ : std_logic;
SIGNAL \lcd|Add0~1\ : std_logic;
SIGNAL \lcd|Add0~2_combout\ : std_logic;
SIGNAL \lcd|Add0~0_combout\ : std_logic;
SIGNAL \lcd|Add0~3\ : std_logic;
SIGNAL \lcd|Add0~4_combout\ : std_logic;
SIGNAL \lcd|Add0~5\ : std_logic;
SIGNAL \lcd|Add0~6_combout\ : std_logic;
SIGNAL \lcd|Equal0~0_combout\ : std_logic;
SIGNAL \lcd|Add0~19\ : std_logic;
SIGNAL \lcd|Add0~20_combout\ : std_logic;
SIGNAL \lcd|div_clk~2_combout\ : std_logic;
SIGNAL \lcd|Add0~21\ : std_logic;
SIGNAL \lcd|Add0~22_combout\ : std_logic;
SIGNAL \lcd|div_clk~3_combout\ : std_logic;
SIGNAL \lcd|Add0~23\ : std_logic;
SIGNAL \lcd|Add0~24_combout\ : std_logic;
SIGNAL \lcd|Add0~25\ : std_logic;
SIGNAL \lcd|Add0~26_combout\ : std_logic;
SIGNAL \lcd|Add0~7\ : std_logic;
SIGNAL \lcd|Add0~8_combout\ : std_logic;
SIGNAL \lcd|Equal0~1_combout\ : std_logic;
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
SIGNAL \lcd|Equal0~2_combout\ : std_logic;
SIGNAL \lcd|Add0~39\ : std_logic;
SIGNAL \lcd|Add0~40_combout\ : std_logic;
SIGNAL \lcd|Add0~41\ : std_logic;
SIGNAL \lcd|Add0~42_combout\ : std_logic;
SIGNAL \lcd|Add0~43\ : std_logic;
SIGNAL \lcd|Add0~44_combout\ : std_logic;
SIGNAL \lcd|Add0~45\ : std_logic;
SIGNAL \lcd|Add0~46_combout\ : std_logic;
SIGNAL \lcd|Equal0~3_combout\ : std_logic;
SIGNAL \lcd|Equal0~4_combout\ : std_logic;
SIGNAL \lcd|Add0~47\ : std_logic;
SIGNAL \lcd|Add0~48_combout\ : std_logic;
SIGNAL \lcd|Add0~49\ : std_logic;
SIGNAL \lcd|Add0~50_combout\ : std_logic;
SIGNAL \lcd|Add0~51\ : std_logic;
SIGNAL \lcd|Add0~52_combout\ : std_logic;
SIGNAL \lcd|Add0~53\ : std_logic;
SIGNAL \lcd|Add0~54_combout\ : std_logic;
SIGNAL \lcd|Equal0~5_combout\ : std_logic;
SIGNAL \lcd|Add0~9\ : std_logic;
SIGNAL \lcd|Add0~10_combout\ : std_logic;
SIGNAL \lcd|Add0~11\ : std_logic;
SIGNAL \lcd|Add0~12_combout\ : std_logic;
SIGNAL \lcd|div_clk~1_combout\ : std_logic;
SIGNAL \lcd|Add0~13\ : std_logic;
SIGNAL \lcd|Add0~14_combout\ : std_logic;
SIGNAL \lcd|Add0~15\ : std_logic;
SIGNAL \lcd|Add0~16_combout\ : std_logic;
SIGNAL \lcd|Equal1~0_combout\ : std_logic;
SIGNAL \lcd|Equal1~1_combout\ : std_logic;
SIGNAL \lcd|Equal1~2_combout\ : std_logic;
SIGNAL \lcd|Add0~55\ : std_logic;
SIGNAL \lcd|Add0~56_combout\ : std_logic;
SIGNAL \lcd|Add0~57\ : std_logic;
SIGNAL \lcd|Add0~58_combout\ : std_logic;
SIGNAL \lcd|Add0~59\ : std_logic;
SIGNAL \lcd|Add0~60_combout\ : std_logic;
SIGNAL \lcd|Add0~61\ : std_logic;
SIGNAL \lcd|Add0~62_combout\ : std_logic;
SIGNAL \lcd|Equal0~6_combout\ : std_logic;
SIGNAL \lcd|Equal1~3_combout\ : std_logic;
SIGNAL \lcd|div_clk~0_combout\ : std_logic;
SIGNAL \lcd|Add0~17\ : std_logic;
SIGNAL \lcd|Add0~18_combout\ : std_logic;
SIGNAL \lcd|Equal0~7_combout\ : std_logic;
SIGNAL \lcd|lcd_clk~0_combout\ : std_logic;
SIGNAL \lcd|lcd_clk~1_combout\ : std_logic;
SIGNAL \lcd|lcd_clk~2_combout\ : std_logic;
SIGNAL \lcd|lcd_clk~feeder_combout\ : std_logic;
SIGNAL \lcd|lcd_clk~q\ : std_logic;
SIGNAL \lcd|lcd_clk~clkctrl_outclk\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~0_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~0_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~9_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~9_combout\ : std_logic;
SIGNAL \lcd|i[0]~32_combout\ : std_logic;
SIGNAL \lcd|i[1]~35\ : std_logic;
SIGNAL \lcd|i[2]~36_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~10_combout\ : std_logic;
SIGNAL \lcd|Equal12~0_combout\ : std_logic;
SIGNAL \lcd|Equal4~1_combout\ : std_logic;
SIGNAL \lcd|Equal4~0_combout\ : std_logic;
SIGNAL \lcd|Equal4~2_combout\ : std_logic;
SIGNAL \lcd|Equal4~3_combout\ : std_logic;
SIGNAL \lcd|Equal4~4_combout\ : std_logic;
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
SIGNAL \lcd|Equal4~6_combout\ : std_logic;
SIGNAL \lcd|Equal4~8_combout\ : std_logic;
SIGNAL \lcd|Equal12~1_combout\ : std_logic;
SIGNAL \lcd|Equal13~0_combout\ : std_logic;
SIGNAL \lcd|Equal10~0_combout\ : std_logic;
SIGNAL \lcd|Equal8~0_combout\ : std_logic;
SIGNAL \lcd|write_column~7_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~29_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector11~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|ack~q\ : std_logic;
SIGNAL \lcd|write_data[4]~27_combout\ : std_logic;
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
SIGNAL \lcd|i[19]~71\ : std_logic;
SIGNAL \lcd|i[20]~72_combout\ : std_logic;
SIGNAL \lcd|i[20]~73\ : std_logic;
SIGNAL \lcd|i[21]~74_combout\ : std_logic;
SIGNAL \lcd|i[21]~75\ : std_logic;
SIGNAL \lcd|i[22]~76_combout\ : std_logic;
SIGNAL \lcd|Equal4~5_combout\ : std_logic;
SIGNAL \lcd|Equal4~9_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~30_combout\ : std_logic;
SIGNAL \lcd|i[0]~33\ : std_logic;
SIGNAL \lcd|i[1]~34_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~12_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~13_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~1_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~1_combout\ : std_logic;
SIGNAL \lcd|write_data~16_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~14_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~4_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~4_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~3_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~3_combout\ : std_logic;
SIGNAL \lcd|write_data~18_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~5_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~5_combout\ : std_logic;
SIGNAL \lcd|write_data~15_combout\ : std_logic;
SIGNAL \lcd|write_data~19_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~7_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~7_combout\ : std_logic;
SIGNAL \lcd|write_data~20_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~8_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~8_combout\ : std_logic;
SIGNAL \lcd|write_data~21_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~6_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~6_combout\ : std_logic;
SIGNAL \lcd|write_data~22_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|Equal0~2_combout\ : std_logic;
SIGNAL \lcd|covid_det_instance|out_ascii_new2~2_combout\ : std_logic;
SIGNAL \lcd|write_data~17_combout\ : std_logic;
SIGNAL \lcd|write_data~23_combout\ : std_logic;
SIGNAL \lcd|write_data~24_combout\ : std_logic;
SIGNAL \lcd|write_data~25_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~8_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~9_combout\ : std_logic;
SIGNAL \lcd|write_data~26_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~11_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|lcd[5]~1_combout\ : std_logic;
SIGNAL \lcd|write_column~6_combout\ : std_logic;
SIGNAL \lcd|Equal7~0_combout\ : std_logic;
SIGNAL \lcd|Equal6~0_combout\ : std_logic;
SIGNAL \lcd|write_column~8_combout\ : std_logic;
SIGNAL \lcd|write_column~9_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector7~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector5~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector7~1_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector7~2_combout\ : std_logic;
SIGNAL \lcd|write_column~10_combout\ : std_logic;
SIGNAL \lcd|write_column~13_combout\ : std_logic;
SIGNAL \lcd|write_column~11_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|cmd_position[1]~feeder_combout\ : std_logic;
SIGNAL \lcd|write_data[4]~28_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector6~1_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector6~0_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector6~2_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|lcd[1]~2_combout\ : std_logic;
SIGNAL \lcd|write_column~12_combout\ : std_logic;
SIGNAL \lcd|write_column~14_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector5~1_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector5~2_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector5~3_combout\ : std_logic;
SIGNAL \lcd|lcd_instance|Selector4~1_combout\ : std_logic;
SIGNAL \lcd|write_column~15_combout\ : std_logic;
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
SIGNAL \lcd|covid_det_instance|bit_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd|lcd_instance|count_cmd\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \spi|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lcd|lcd_instance|lcd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \lcd|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \spi|reg_a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \spi|counter1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \spi|counter2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \spi|temp_data\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \lcd|lcd_instance|cmd_position\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \lcd|lcd_instance|data_dis\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \lcd|div_clk_new\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lcd|write_column\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd|write_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \lcd|div_clk\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \spi|ALT_INV_clk~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_lcd_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \spi|ALT_INV_CS_in~q\ : std_logic;

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
mosi <= ww_mosi;
sclk <= ww_sclk;
cs_b <= ww_cs_b;
ww_lcd_rst <= lcd_rst;
lcd_rw <= ww_lcd_rw;
lcd_en <= ww_lcd_en;
lcd_rs <= ww_lcd_rs;
detect <= ww_detect;
led_output <= ww_led_output;
lcd1 <= ww_lcd1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\lcd|lcd_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \lcd|lcd_clk~q\);

\clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_in~input_o\);

\spi|clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \spi|clk~q\);

\lcd|clk_slow~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \lcd|clk_slow~q\);
\spi|ALT_INV_clk~clkctrl_outclk\ <= NOT \spi|clk~clkctrl_outclk\;
\ALT_INV_lcd_rst~input_o\ <= NOT \lcd_rst~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\spi|ALT_INV_CS_in~q\ <= NOT \spi|CS_in~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y28_N16
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
\mosi~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|MOSI~q\,
	devoe => ww_devoe,
	o => \mosi~output_o\);

-- Location: IOOBUF_X60_Y2_N23
\sclk~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|clk~q\,
	devoe => ww_devoe,
	o => \sclk~output_o\);

-- Location: IOOBUF_X60_Y8_N9
\cs_b~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|ALT_INV_CS_in~q\,
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

-- Location: IOOBUF_X36_Y0_N9
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

-- Location: IOOBUF_X36_Y0_N30
\led_output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|reg_a\(2),
	devoe => ww_devoe,
	o => \led_output[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\led_output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|reg_a\(3),
	devoe => ww_devoe,
	o => \led_output[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\led_output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|reg_a\(4),
	devoe => ww_devoe,
	o => \led_output[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\led_output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|reg_a\(5),
	devoe => ww_devoe,
	o => \led_output[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\led_output[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|reg_a\(6),
	devoe => ww_devoe,
	o => \led_output[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\led_output[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|reg_a\(7),
	devoe => ww_devoe,
	o => \led_output[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\led_output[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|reg_a\(8),
	devoe => ww_devoe,
	o => \led_output[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\led_output[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|reg_a\(9),
	devoe => ww_devoe,
	o => \led_output[7]~output_o\);

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

-- Location: IOIBUF_X0_Y11_N22
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

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X41_Y2_N0
\spi|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~0_combout\ = \spi|counter\(0) $ (GND)
-- \spi|Add0~1\ = CARRY(!\spi|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(0),
	datad => VCC,
	combout => \spi|Add0~0_combout\,
	cout => \spi|Add0~1\);

-- Location: LCCOMB_X42_Y2_N20
\spi|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter~2_combout\ = (!\spi|Equal0~10_combout\ & !\spi|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal0~10_combout\,
	datac => \spi|Add0~0_combout\,
	combout => \spi|counter~2_combout\);

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

-- Location: FF_X42_Y2_N21
\spi|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|counter~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(0));

-- Location: LCCOMB_X41_Y2_N2
\spi|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~2_combout\ = (\spi|counter\(1) & (!\spi|Add0~1\)) # (!\spi|counter\(1) & ((\spi|Add0~1\) # (GND)))
-- \spi|Add0~3\ = CARRY((!\spi|Add0~1\) # (!\spi|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(1),
	datad => VCC,
	cin => \spi|Add0~1\,
	combout => \spi|Add0~2_combout\,
	cout => \spi|Add0~3\);

-- Location: LCCOMB_X42_Y2_N4
\spi|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter~1_combout\ = (\spi|Add0~2_combout\ & !\spi|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add0~2_combout\,
	datac => \spi|Equal0~10_combout\,
	combout => \spi|counter~1_combout\);

-- Location: FF_X42_Y2_N5
\spi|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|counter~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(1));

-- Location: LCCOMB_X41_Y2_N4
\spi|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~4_combout\ = (\spi|counter\(2) & (\spi|Add0~3\ $ (GND))) # (!\spi|counter\(2) & (!\spi|Add0~3\ & VCC))
-- \spi|Add0~5\ = CARRY((\spi|counter\(2) & !\spi|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter\(2),
	datad => VCC,
	cin => \spi|Add0~3\,
	combout => \spi|Add0~4_combout\,
	cout => \spi|Add0~5\);

-- Location: LCCOMB_X42_Y2_N22
\spi|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter~0_combout\ = (!\spi|Equal0~10_combout\ & \spi|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal0~10_combout\,
	datac => \spi|Add0~4_combout\,
	combout => \spi|counter~0_combout\);

-- Location: FF_X42_Y2_N23
\spi|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|counter~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(2));

-- Location: LCCOMB_X41_Y2_N6
\spi|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~6_combout\ = (\spi|counter\(3) & (!\spi|Add0~5\)) # (!\spi|counter\(3) & ((\spi|Add0~5\) # (GND)))
-- \spi|Add0~7\ = CARRY((!\spi|Add0~5\) # (!\spi|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(3),
	datad => VCC,
	cin => \spi|Add0~5\,
	combout => \spi|Add0~6_combout\,
	cout => \spi|Add0~7\);

-- Location: FF_X41_Y2_N7
\spi|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(3));

-- Location: LCCOMB_X41_Y2_N8
\spi|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~8_combout\ = (\spi|counter\(4) & (\spi|Add0~7\ $ (GND))) # (!\spi|counter\(4) & (!\spi|Add0~7\ & VCC))
-- \spi|Add0~9\ = CARRY((\spi|counter\(4) & !\spi|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter\(4),
	datad => VCC,
	cin => \spi|Add0~7\,
	combout => \spi|Add0~8_combout\,
	cout => \spi|Add0~9\);

-- Location: FF_X41_Y2_N9
\spi|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(4));

-- Location: LCCOMB_X41_Y2_N10
\spi|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~10_combout\ = (\spi|counter\(5) & (!\spi|Add0~9\)) # (!\spi|counter\(5) & ((\spi|Add0~9\) # (GND)))
-- \spi|Add0~11\ = CARRY((!\spi|Add0~9\) # (!\spi|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(5),
	datad => VCC,
	cin => \spi|Add0~9\,
	combout => \spi|Add0~10_combout\,
	cout => \spi|Add0~11\);

-- Location: FF_X41_Y2_N11
\spi|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(5));

-- Location: LCCOMB_X41_Y2_N12
\spi|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~12_combout\ = (\spi|counter\(6) & (\spi|Add0~11\ $ (GND))) # (!\spi|counter\(6) & (!\spi|Add0~11\ & VCC))
-- \spi|Add0~13\ = CARRY((\spi|counter\(6) & !\spi|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(6),
	datad => VCC,
	cin => \spi|Add0~11\,
	combout => \spi|Add0~12_combout\,
	cout => \spi|Add0~13\);

-- Location: FF_X41_Y2_N13
\spi|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(6));

-- Location: LCCOMB_X41_Y2_N14
\spi|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~14_combout\ = (\spi|counter\(7) & (!\spi|Add0~13\)) # (!\spi|counter\(7) & ((\spi|Add0~13\) # (GND)))
-- \spi|Add0~15\ = CARRY((!\spi|Add0~13\) # (!\spi|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter\(7),
	datad => VCC,
	cin => \spi|Add0~13\,
	combout => \spi|Add0~14_combout\,
	cout => \spi|Add0~15\);

-- Location: FF_X41_Y2_N15
\spi|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(7));

-- Location: LCCOMB_X41_Y2_N16
\spi|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~16_combout\ = (\spi|counter\(8) & (\spi|Add0~15\ $ (GND))) # (!\spi|counter\(8) & (!\spi|Add0~15\ & VCC))
-- \spi|Add0~17\ = CARRY((\spi|counter\(8) & !\spi|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter\(8),
	datad => VCC,
	cin => \spi|Add0~15\,
	combout => \spi|Add0~16_combout\,
	cout => \spi|Add0~17\);

-- Location: FF_X41_Y2_N17
\spi|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(8));

-- Location: LCCOMB_X41_Y2_N18
\spi|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~18_combout\ = (\spi|counter\(9) & (!\spi|Add0~17\)) # (!\spi|counter\(9) & ((\spi|Add0~17\) # (GND)))
-- \spi|Add0~19\ = CARRY((!\spi|Add0~17\) # (!\spi|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter\(9),
	datad => VCC,
	cin => \spi|Add0~17\,
	combout => \spi|Add0~18_combout\,
	cout => \spi|Add0~19\);

-- Location: FF_X41_Y2_N19
\spi|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(9));

-- Location: LCCOMB_X41_Y2_N20
\spi|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~20_combout\ = (\spi|counter\(10) & (\spi|Add0~19\ $ (GND))) # (!\spi|counter\(10) & (!\spi|Add0~19\ & VCC))
-- \spi|Add0~21\ = CARRY((\spi|counter\(10) & !\spi|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter\(10),
	datad => VCC,
	cin => \spi|Add0~19\,
	combout => \spi|Add0~20_combout\,
	cout => \spi|Add0~21\);

-- Location: FF_X41_Y2_N21
\spi|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(10));

-- Location: LCCOMB_X41_Y2_N22
\spi|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~22_combout\ = (\spi|counter\(11) & (!\spi|Add0~21\)) # (!\spi|counter\(11) & ((\spi|Add0~21\) # (GND)))
-- \spi|Add0~23\ = CARRY((!\spi|Add0~21\) # (!\spi|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(11),
	datad => VCC,
	cin => \spi|Add0~21\,
	combout => \spi|Add0~22_combout\,
	cout => \spi|Add0~23\);

-- Location: FF_X41_Y2_N23
\spi|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(11));

-- Location: LCCOMB_X41_Y2_N24
\spi|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~24_combout\ = (\spi|counter\(12) & (\spi|Add0~23\ $ (GND))) # (!\spi|counter\(12) & (!\spi|Add0~23\ & VCC))
-- \spi|Add0~25\ = CARRY((\spi|counter\(12) & !\spi|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter\(12),
	datad => VCC,
	cin => \spi|Add0~23\,
	combout => \spi|Add0~24_combout\,
	cout => \spi|Add0~25\);

-- Location: FF_X41_Y2_N25
\spi|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(12));

-- Location: LCCOMB_X41_Y2_N26
\spi|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~26_combout\ = (\spi|counter\(13) & (!\spi|Add0~25\)) # (!\spi|counter\(13) & ((\spi|Add0~25\) # (GND)))
-- \spi|Add0~27\ = CARRY((!\spi|Add0~25\) # (!\spi|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(13),
	datad => VCC,
	cin => \spi|Add0~25\,
	combout => \spi|Add0~26_combout\,
	cout => \spi|Add0~27\);

-- Location: FF_X41_Y2_N27
\spi|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(13));

-- Location: LCCOMB_X42_Y2_N14
\spi|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal0~6_combout\ = (!\spi|counter\(8) & (!\spi|counter\(11) & (!\spi|counter\(10) & !\spi|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(8),
	datab => \spi|counter\(11),
	datac => \spi|counter\(10),
	datad => \spi|counter\(9),
	combout => \spi|Equal0~6_combout\);

-- Location: LCCOMB_X41_Y2_N28
\spi|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~28_combout\ = (\spi|counter\(14) & (\spi|Add0~27\ $ (GND))) # (!\spi|counter\(14) & (!\spi|Add0~27\ & VCC))
-- \spi|Add0~29\ = CARRY((\spi|counter\(14) & !\spi|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter\(14),
	datad => VCC,
	cin => \spi|Add0~27\,
	combout => \spi|Add0~28_combout\,
	cout => \spi|Add0~29\);

-- Location: FF_X41_Y2_N29
\spi|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(14));

-- Location: LCCOMB_X41_Y2_N30
\spi|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~30_combout\ = (\spi|counter\(15) & (!\spi|Add0~29\)) # (!\spi|counter\(15) & ((\spi|Add0~29\) # (GND)))
-- \spi|Add0~31\ = CARRY((!\spi|Add0~29\) # (!\spi|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(15),
	datad => VCC,
	cin => \spi|Add0~29\,
	combout => \spi|Add0~30_combout\,
	cout => \spi|Add0~31\);

-- Location: FF_X41_Y2_N31
\spi|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(15));

-- Location: LCCOMB_X42_Y2_N24
\spi|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal0~5_combout\ = (!\spi|counter\(15) & !\spi|counter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|counter\(15),
	datad => \spi|counter\(14),
	combout => \spi|Equal0~5_combout\);

-- Location: LCCOMB_X42_Y2_N12
\spi|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal0~7_combout\ = (!\spi|counter\(13) & (!\spi|counter\(12) & (\spi|Equal0~6_combout\ & \spi|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(13),
	datab => \spi|counter\(12),
	datac => \spi|Equal0~6_combout\,
	datad => \spi|Equal0~5_combout\,
	combout => \spi|Equal0~7_combout\);

-- Location: LCCOMB_X42_Y2_N26
\spi|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal0~8_combout\ = (!\spi|counter\(7) & (!\spi|counter\(5) & (!\spi|counter\(6) & !\spi|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(7),
	datab => \spi|counter\(5),
	datac => \spi|counter\(6),
	datad => \spi|counter\(4),
	combout => \spi|Equal0~8_combout\);

-- Location: LCCOMB_X42_Y2_N8
\spi|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal0~9_combout\ = (!\spi|counter\(1) & (!\spi|counter\(0) & (\spi|counter\(2) & !\spi|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(1),
	datab => \spi|counter\(0),
	datac => \spi|counter\(2),
	datad => \spi|counter\(3),
	combout => \spi|Equal0~9_combout\);

-- Location: LCCOMB_X41_Y1_N0
\spi|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~32_combout\ = (\spi|counter\(16) & (\spi|Add0~31\ $ (GND))) # (!\spi|counter\(16) & (!\spi|Add0~31\ & VCC))
-- \spi|Add0~33\ = CARRY((\spi|counter\(16) & !\spi|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter\(16),
	datad => VCC,
	cin => \spi|Add0~31\,
	combout => \spi|Add0~32_combout\,
	cout => \spi|Add0~33\);

-- Location: FF_X41_Y1_N1
\spi|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(16));

-- Location: LCCOMB_X41_Y1_N2
\spi|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~34_combout\ = (\spi|counter\(17) & (!\spi|Add0~33\)) # (!\spi|counter\(17) & ((\spi|Add0~33\) # (GND)))
-- \spi|Add0~35\ = CARRY((!\spi|Add0~33\) # (!\spi|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter\(17),
	datad => VCC,
	cin => \spi|Add0~33\,
	combout => \spi|Add0~34_combout\,
	cout => \spi|Add0~35\);

-- Location: FF_X41_Y1_N3
\spi|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(17));

-- Location: LCCOMB_X41_Y1_N4
\spi|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~36_combout\ = (\spi|counter\(18) & (\spi|Add0~35\ $ (GND))) # (!\spi|counter\(18) & (!\spi|Add0~35\ & VCC))
-- \spi|Add0~37\ = CARRY((\spi|counter\(18) & !\spi|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter\(18),
	datad => VCC,
	cin => \spi|Add0~35\,
	combout => \spi|Add0~36_combout\,
	cout => \spi|Add0~37\);

-- Location: FF_X41_Y1_N5
\spi|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(18));

-- Location: LCCOMB_X41_Y1_N6
\spi|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~38_combout\ = (\spi|counter\(19) & (!\spi|Add0~37\)) # (!\spi|counter\(19) & ((\spi|Add0~37\) # (GND)))
-- \spi|Add0~39\ = CARRY((!\spi|Add0~37\) # (!\spi|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(19),
	datad => VCC,
	cin => \spi|Add0~37\,
	combout => \spi|Add0~38_combout\,
	cout => \spi|Add0~39\);

-- Location: FF_X41_Y1_N7
\spi|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(19));

-- Location: LCCOMB_X41_Y1_N8
\spi|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~40_combout\ = (\spi|counter\(20) & (\spi|Add0~39\ $ (GND))) # (!\spi|counter\(20) & (!\spi|Add0~39\ & VCC))
-- \spi|Add0~41\ = CARRY((\spi|counter\(20) & !\spi|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter\(20),
	datad => VCC,
	cin => \spi|Add0~39\,
	combout => \spi|Add0~40_combout\,
	cout => \spi|Add0~41\);

-- Location: FF_X41_Y1_N9
\spi|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(20));

-- Location: LCCOMB_X41_Y1_N10
\spi|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~42_combout\ = (\spi|counter\(21) & (!\spi|Add0~41\)) # (!\spi|counter\(21) & ((\spi|Add0~41\) # (GND)))
-- \spi|Add0~43\ = CARRY((!\spi|Add0~41\) # (!\spi|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(21),
	datad => VCC,
	cin => \spi|Add0~41\,
	combout => \spi|Add0~42_combout\,
	cout => \spi|Add0~43\);

-- Location: FF_X41_Y1_N11
\spi|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(21));

-- Location: LCCOMB_X41_Y1_N12
\spi|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~44_combout\ = (\spi|counter\(22) & (\spi|Add0~43\ $ (GND))) # (!\spi|counter\(22) & (!\spi|Add0~43\ & VCC))
-- \spi|Add0~45\ = CARRY((\spi|counter\(22) & !\spi|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(22),
	datad => VCC,
	cin => \spi|Add0~43\,
	combout => \spi|Add0~44_combout\,
	cout => \spi|Add0~45\);

-- Location: FF_X41_Y1_N13
\spi|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(22));

-- Location: LCCOMB_X41_Y1_N14
\spi|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~46_combout\ = (\spi|counter\(23) & (!\spi|Add0~45\)) # (!\spi|counter\(23) & ((\spi|Add0~45\) # (GND)))
-- \spi|Add0~47\ = CARRY((!\spi|Add0~45\) # (!\spi|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter\(23),
	datad => VCC,
	cin => \spi|Add0~45\,
	combout => \spi|Add0~46_combout\,
	cout => \spi|Add0~47\);

-- Location: FF_X41_Y1_N15
\spi|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(23));

-- Location: LCCOMB_X41_Y1_N16
\spi|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~48_combout\ = (\spi|counter\(24) & (\spi|Add0~47\ $ (GND))) # (!\spi|counter\(24) & (!\spi|Add0~47\ & VCC))
-- \spi|Add0~49\ = CARRY((\spi|counter\(24) & !\spi|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter\(24),
	datad => VCC,
	cin => \spi|Add0~47\,
	combout => \spi|Add0~48_combout\,
	cout => \spi|Add0~49\);

-- Location: FF_X41_Y1_N17
\spi|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(24));

-- Location: LCCOMB_X41_Y1_N18
\spi|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~50_combout\ = (\spi|counter\(25) & (!\spi|Add0~49\)) # (!\spi|counter\(25) & ((\spi|Add0~49\) # (GND)))
-- \spi|Add0~51\ = CARRY((!\spi|Add0~49\) # (!\spi|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter\(25),
	datad => VCC,
	cin => \spi|Add0~49\,
	combout => \spi|Add0~50_combout\,
	cout => \spi|Add0~51\);

-- Location: FF_X41_Y1_N19
\spi|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~50_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(25));

-- Location: LCCOMB_X41_Y1_N20
\spi|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~52_combout\ = (\spi|counter\(26) & (\spi|Add0~51\ $ (GND))) # (!\spi|counter\(26) & (!\spi|Add0~51\ & VCC))
-- \spi|Add0~53\ = CARRY((\spi|counter\(26) & !\spi|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter\(26),
	datad => VCC,
	cin => \spi|Add0~51\,
	combout => \spi|Add0~52_combout\,
	cout => \spi|Add0~53\);

-- Location: FF_X41_Y1_N21
\spi|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~52_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(26));

-- Location: LCCOMB_X41_Y1_N22
\spi|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~54_combout\ = (\spi|counter\(27) & (!\spi|Add0~53\)) # (!\spi|counter\(27) & ((\spi|Add0~53\) # (GND)))
-- \spi|Add0~55\ = CARRY((!\spi|Add0~53\) # (!\spi|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(27),
	datad => VCC,
	cin => \spi|Add0~53\,
	combout => \spi|Add0~54_combout\,
	cout => \spi|Add0~55\);

-- Location: FF_X41_Y1_N23
\spi|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~54_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(27));

-- Location: LCCOMB_X42_Y1_N26
\spi|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal0~1_combout\ = (!\spi|counter\(27) & (!\spi|counter\(26) & (!\spi|counter\(24) & !\spi|counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(27),
	datab => \spi|counter\(26),
	datac => \spi|counter\(24),
	datad => \spi|counter\(25),
	combout => \spi|Equal0~1_combout\);

-- Location: LCCOMB_X41_Y1_N24
\spi|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~56_combout\ = (\spi|counter\(28) & (\spi|Add0~55\ $ (GND))) # (!\spi|counter\(28) & (!\spi|Add0~55\ & VCC))
-- \spi|Add0~57\ = CARRY((\spi|counter\(28) & !\spi|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter\(28),
	datad => VCC,
	cin => \spi|Add0~55\,
	combout => \spi|Add0~56_combout\,
	cout => \spi|Add0~57\);

-- Location: FF_X41_Y1_N25
\spi|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~56_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(28));

-- Location: LCCOMB_X41_Y1_N26
\spi|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~58_combout\ = (\spi|counter\(29) & (!\spi|Add0~57\)) # (!\spi|counter\(29) & ((\spi|Add0~57\) # (GND)))
-- \spi|Add0~59\ = CARRY((!\spi|Add0~57\) # (!\spi|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(29),
	datad => VCC,
	cin => \spi|Add0~57\,
	combout => \spi|Add0~58_combout\,
	cout => \spi|Add0~59\);

-- Location: FF_X41_Y1_N27
\spi|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~58_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(29));

-- Location: LCCOMB_X41_Y1_N28
\spi|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~60_combout\ = (\spi|counter\(30) & (\spi|Add0~59\ $ (GND))) # (!\spi|counter\(30) & (!\spi|Add0~59\ & VCC))
-- \spi|Add0~61\ = CARRY((\spi|counter\(30) & !\spi|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter\(30),
	datad => VCC,
	cin => \spi|Add0~59\,
	combout => \spi|Add0~60_combout\,
	cout => \spi|Add0~61\);

-- Location: FF_X41_Y1_N29
\spi|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~60_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(30));

-- Location: LCCOMB_X41_Y1_N30
\spi|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add0~62_combout\ = \spi|counter\(31) $ (\spi|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(31),
	cin => \spi|Add0~61\,
	combout => \spi|Add0~62_combout\);

-- Location: FF_X41_Y1_N31
\spi|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|Add0~62_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter\(31));

-- Location: LCCOMB_X42_Y1_N0
\spi|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal0~0_combout\ = (!\spi|counter\(29) & (!\spi|counter\(30) & (!\spi|counter\(31) & !\spi|counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(29),
	datab => \spi|counter\(30),
	datac => \spi|counter\(31),
	datad => \spi|counter\(28),
	combout => \spi|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y1_N16
\spi|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal0~2_combout\ = (!\spi|counter\(21) & (!\spi|counter\(23) & (!\spi|counter\(20) & !\spi|counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(21),
	datab => \spi|counter\(23),
	datac => \spi|counter\(20),
	datad => \spi|counter\(22),
	combout => \spi|Equal0~2_combout\);

-- Location: LCCOMB_X42_Y1_N22
\spi|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal0~3_combout\ = (!\spi|counter\(16) & (!\spi|counter\(19) & (!\spi|counter\(18) & !\spi|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter\(16),
	datab => \spi|counter\(19),
	datac => \spi|counter\(18),
	datad => \spi|counter\(17),
	combout => \spi|Equal0~3_combout\);

-- Location: LCCOMB_X42_Y2_N28
\spi|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal0~4_combout\ = (\spi|Equal0~1_combout\ & (\spi|Equal0~0_combout\ & (\spi|Equal0~2_combout\ & \spi|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal0~1_combout\,
	datab => \spi|Equal0~0_combout\,
	datac => \spi|Equal0~2_combout\,
	datad => \spi|Equal0~3_combout\,
	combout => \spi|Equal0~4_combout\);

-- Location: LCCOMB_X42_Y2_N30
\spi|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal0~10_combout\ = (\spi|Equal0~7_combout\ & (\spi|Equal0~8_combout\ & (\spi|Equal0~9_combout\ & \spi|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal0~7_combout\,
	datab => \spi|Equal0~8_combout\,
	datac => \spi|Equal0~9_combout\,
	datad => \spi|Equal0~4_combout\,
	combout => \spi|Equal0~10_combout\);

-- Location: LCCOMB_X42_Y2_N18
\spi|clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk~0_combout\ = \spi|Equal0~10_combout\ $ (\spi|clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|Equal0~10_combout\,
	datad => \spi|clk~q\,
	combout => \spi|clk~0_combout\);

-- Location: LCCOMB_X42_Y2_N16
\spi|clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|clk~feeder_combout\ = \spi|clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk~0_combout\,
	combout => \spi|clk~feeder_combout\);

-- Location: FF_X42_Y2_N17
\spi|clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \spi|clk~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk~q\);

-- Location: CLKCTRL_G17
\spi|clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \spi|clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \spi|clk~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y4_N0
\spi|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~0_combout\ = \spi|counter2\(0) $ (VCC)
-- \spi|Add2~1\ = CARRY(\spi|counter2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter2\(0),
	datad => VCC,
	combout => \spi|Add2~0_combout\,
	cout => \spi|Add2~1\);

-- Location: LCCOMB_X37_Y4_N20
\spi|counter2[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[0]~32_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(0)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~0_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(0),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[0]~32_combout\);

-- Location: FF_X37_Y4_N21
\spi|counter2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[0]~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(0));

-- Location: LCCOMB_X38_Y4_N2
\spi|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~2_combout\ = (\spi|counter2\(1) & (!\spi|Add2~1\)) # (!\spi|counter2\(1) & ((\spi|Add2~1\) # (GND)))
-- \spi|Add2~3\ = CARRY((!\spi|Add2~1\) # (!\spi|counter2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter2\(1),
	datad => VCC,
	cin => \spi|Add2~1\,
	combout => \spi|Add2~2_combout\,
	cout => \spi|Add2~3\);

-- Location: LCCOMB_X37_Y4_N24
\spi|counter2[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[1]~30_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(1)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~2_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(1),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[1]~30_combout\);

-- Location: FF_X37_Y4_N25
\spi|counter2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[1]~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(1));

-- Location: LCCOMB_X38_Y4_N4
\spi|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~4_combout\ = (\spi|counter2\(2) & (\spi|Add2~3\ $ (GND))) # (!\spi|counter2\(2) & (!\spi|Add2~3\ & VCC))
-- \spi|Add2~5\ = CARRY((\spi|counter2\(2) & !\spi|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(2),
	datad => VCC,
	cin => \spi|Add2~3\,
	combout => \spi|Add2~4_combout\,
	cout => \spi|Add2~5\);

-- Location: LCCOMB_X37_Y4_N26
\spi|counter2[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[2]~33_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(2)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~4_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(2),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[2]~33_combout\);

-- Location: FF_X37_Y4_N27
\spi|counter2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[2]~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(2));

-- Location: LCCOMB_X38_Y4_N6
\spi|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~6_combout\ = (\spi|counter2\(3) & (!\spi|Add2~5\)) # (!\spi|counter2\(3) & ((\spi|Add2~5\) # (GND)))
-- \spi|Add2~7\ = CARRY((!\spi|Add2~5\) # (!\spi|counter2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter2\(3),
	datad => VCC,
	cin => \spi|Add2~5\,
	combout => \spi|Add2~6_combout\,
	cout => \spi|Add2~7\);

-- Location: LCCOMB_X39_Y3_N2
\spi|counter2[3]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[3]~29_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(3)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~6_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(3),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[3]~29_combout\);

-- Location: FF_X39_Y3_N3
\spi|counter2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[3]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(3));

-- Location: LCCOMB_X36_Y4_N8
\spi|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|LessThan0~9_combout\ = ((!\spi|counter2\(1) & !\spi|counter2\(2))) # (!\spi|counter2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter2\(1),
	datac => \spi|counter2\(3),
	datad => \spi|counter2\(2),
	combout => \spi|LessThan0~9_combout\);

-- Location: LCCOMB_X38_Y4_N8
\spi|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~8_combout\ = (\spi|counter2\(4) & (\spi|Add2~7\ $ (GND))) # (!\spi|counter2\(4) & (!\spi|Add2~7\ & VCC))
-- \spi|Add2~9\ = CARRY((\spi|counter2\(4) & !\spi|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(4),
	datad => VCC,
	cin => \spi|Add2~7\,
	combout => \spi|Add2~8_combout\,
	cout => \spi|Add2~9\);

-- Location: LCCOMB_X37_Y4_N8
\spi|counter2[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[4]~28_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(4)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~8_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(4),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[4]~28_combout\);

-- Location: FF_X37_Y4_N9
\spi|counter2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[4]~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(4));

-- Location: LCCOMB_X38_Y4_N10
\spi|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~10_combout\ = (\spi|counter2\(5) & (!\spi|Add2~9\)) # (!\spi|counter2\(5) & ((\spi|Add2~9\) # (GND)))
-- \spi|Add2~11\ = CARRY((!\spi|Add2~9\) # (!\spi|counter2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(5),
	datad => VCC,
	cin => \spi|Add2~9\,
	combout => \spi|Add2~10_combout\,
	cout => \spi|Add2~11\);

-- Location: LCCOMB_X37_Y4_N10
\spi|counter2[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[5]~27_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(5)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~10_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(5),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[5]~27_combout\);

-- Location: FF_X37_Y4_N11
\spi|counter2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[5]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(5));

-- Location: LCCOMB_X38_Y4_N12
\spi|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~12_combout\ = (\spi|counter2\(6) & (\spi|Add2~11\ $ (GND))) # (!\spi|counter2\(6) & (!\spi|Add2~11\ & VCC))
-- \spi|Add2~13\ = CARRY((\spi|counter2\(6) & !\spi|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter2\(6),
	datad => VCC,
	cin => \spi|Add2~11\,
	combout => \spi|Add2~12_combout\,
	cout => \spi|Add2~13\);

-- Location: LCCOMB_X37_Y4_N4
\spi|counter2[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[6]~26_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(6)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~12_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(6),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[6]~26_combout\);

-- Location: FF_X37_Y4_N5
\spi|counter2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[6]~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(6));

-- Location: LCCOMB_X38_Y4_N14
\spi|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~14_combout\ = (\spi|counter2\(7) & (!\spi|Add2~13\)) # (!\spi|counter2\(7) & ((\spi|Add2~13\) # (GND)))
-- \spi|Add2~15\ = CARRY((!\spi|Add2~13\) # (!\spi|counter2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(7),
	datad => VCC,
	cin => \spi|Add2~13\,
	combout => \spi|Add2~14_combout\,
	cout => \spi|Add2~15\);

-- Location: LCCOMB_X39_Y3_N10
\spi|counter2[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[7]~25_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(7)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~14_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(7),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[7]~25_combout\);

-- Location: FF_X39_Y3_N11
\spi|counter2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[7]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(7));

-- Location: LCCOMB_X38_Y4_N16
\spi|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~16_combout\ = (\spi|counter2\(8) & (\spi|Add2~15\ $ (GND))) # (!\spi|counter2\(8) & (!\spi|Add2~15\ & VCC))
-- \spi|Add2~17\ = CARRY((\spi|counter2\(8) & !\spi|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter2\(8),
	datad => VCC,
	cin => \spi|Add2~15\,
	combout => \spi|Add2~16_combout\,
	cout => \spi|Add2~17\);

-- Location: LCCOMB_X39_Y3_N8
\spi|counter2[8]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[8]~24_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(8)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~16_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(8),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[8]~24_combout\);

-- Location: FF_X39_Y3_N9
\spi|counter2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[8]~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(8));

-- Location: LCCOMB_X38_Y4_N18
\spi|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~18_combout\ = (\spi|counter2\(9) & (!\spi|Add2~17\)) # (!\spi|counter2\(9) & ((\spi|Add2~17\) # (GND)))
-- \spi|Add2~19\ = CARRY((!\spi|Add2~17\) # (!\spi|counter2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter2\(9),
	datad => VCC,
	cin => \spi|Add2~17\,
	combout => \spi|Add2~18_combout\,
	cout => \spi|Add2~19\);

-- Location: LCCOMB_X39_Y3_N26
\spi|counter2[9]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[9]~23_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(9)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~18_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(9),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[9]~23_combout\);

-- Location: FF_X39_Y3_N27
\spi|counter2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[9]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(9));

-- Location: LCCOMB_X38_Y4_N20
\spi|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~20_combout\ = (\spi|counter2\(10) & (\spi|Add2~19\ $ (GND))) # (!\spi|counter2\(10) & (!\spi|Add2~19\ & VCC))
-- \spi|Add2~21\ = CARRY((\spi|counter2\(10) & !\spi|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(10),
	datad => VCC,
	cin => \spi|Add2~19\,
	combout => \spi|Add2~20_combout\,
	cout => \spi|Add2~21\);

-- Location: LCCOMB_X39_Y3_N12
\spi|counter2[10]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[10]~22_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(10)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~20_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(10),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[10]~22_combout\);

-- Location: FF_X39_Y3_N13
\spi|counter2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[10]~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(10));

-- Location: LCCOMB_X39_Y3_N16
\spi|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|LessThan0~6_combout\ = (!\spi|counter2\(10) & (!\spi|counter2\(8) & (!\spi|counter2\(9) & !\spi|counter2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(10),
	datab => \spi|counter2\(8),
	datac => \spi|counter2\(9),
	datad => \spi|counter2\(7),
	combout => \spi|LessThan0~6_combout\);

-- Location: LCCOMB_X38_Y4_N22
\spi|Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~22_combout\ = (\spi|counter2\(11) & (!\spi|Add2~21\)) # (!\spi|counter2\(11) & ((\spi|Add2~21\) # (GND)))
-- \spi|Add2~23\ = CARRY((!\spi|Add2~21\) # (!\spi|counter2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter2\(11),
	datad => VCC,
	cin => \spi|Add2~21\,
	combout => \spi|Add2~22_combout\,
	cout => \spi|Add2~23\);

-- Location: LCCOMB_X39_Y3_N24
\spi|counter2[11]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[11]~21_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(11)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~22_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(11),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[11]~21_combout\);

-- Location: FF_X39_Y3_N25
\spi|counter2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[11]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(11));

-- Location: LCCOMB_X38_Y4_N24
\spi|Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~24_combout\ = (\spi|counter2\(12) & (\spi|Add2~23\ $ (GND))) # (!\spi|counter2\(12) & (!\spi|Add2~23\ & VCC))
-- \spi|Add2~25\ = CARRY((\spi|counter2\(12) & !\spi|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(12),
	datad => VCC,
	cin => \spi|Add2~23\,
	combout => \spi|Add2~24_combout\,
	cout => \spi|Add2~25\);

-- Location: LCCOMB_X39_Y3_N14
\spi|counter2[12]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[12]~20_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(12)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~24_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(12),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[12]~20_combout\);

-- Location: FF_X39_Y3_N15
\spi|counter2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[12]~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(12));

-- Location: LCCOMB_X38_Y4_N26
\spi|Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~26_combout\ = (\spi|counter2\(13) & (!\spi|Add2~25\)) # (!\spi|counter2\(13) & ((\spi|Add2~25\) # (GND)))
-- \spi|Add2~27\ = CARRY((!\spi|Add2~25\) # (!\spi|counter2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(13),
	datad => VCC,
	cin => \spi|Add2~25\,
	combout => \spi|Add2~26_combout\,
	cout => \spi|Add2~27\);

-- Location: LCCOMB_X39_Y3_N0
\spi|counter2[13]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[13]~19_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(13)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~26_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(13),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[13]~19_combout\);

-- Location: FF_X39_Y3_N1
\spi|counter2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[13]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(13));

-- Location: LCCOMB_X38_Y4_N28
\spi|Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~28_combout\ = (\spi|counter2\(14) & (\spi|Add2~27\ $ (GND))) # (!\spi|counter2\(14) & (!\spi|Add2~27\ & VCC))
-- \spi|Add2~29\ = CARRY((\spi|counter2\(14) & !\spi|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(14),
	datad => VCC,
	cin => \spi|Add2~27\,
	combout => \spi|Add2~28_combout\,
	cout => \spi|Add2~29\);

-- Location: LCCOMB_X39_Y3_N30
\spi|counter2[14]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[14]~18_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(14)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~28_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(14),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[14]~18_combout\);

-- Location: FF_X39_Y3_N31
\spi|counter2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[14]~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(14));

-- Location: LCCOMB_X39_Y3_N18
\spi|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|LessThan0~5_combout\ = (!\spi|counter2\(14) & (!\spi|counter2\(13) & (!\spi|counter2\(12) & !\spi|counter2\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(14),
	datab => \spi|counter2\(13),
	datac => \spi|counter2\(12),
	datad => \spi|counter2\(11),
	combout => \spi|LessThan0~5_combout\);

-- Location: LCCOMB_X37_Y4_N18
\spi|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|LessThan0~7_combout\ = (!\spi|counter2\(6) & (!\spi|counter2\(4) & !\spi|counter2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter2\(6),
	datac => \spi|counter2\(4),
	datad => \spi|counter2\(5),
	combout => \spi|LessThan0~7_combout\);

-- Location: LCCOMB_X38_Y4_N30
\spi|Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~30_combout\ = (\spi|counter2\(15) & (!\spi|Add2~29\)) # (!\spi|counter2\(15) & ((\spi|Add2~29\) # (GND)))
-- \spi|Add2~31\ = CARRY((!\spi|Add2~29\) # (!\spi|counter2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter2\(15),
	datad => VCC,
	cin => \spi|Add2~29\,
	combout => \spi|Add2~30_combout\,
	cout => \spi|Add2~31\);

-- Location: LCCOMB_X37_Y3_N30
\spi|counter2[15]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[15]~17_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(15)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|process_1~1_combout\,
	datab => \spi|Add2~30_combout\,
	datac => \spi|counter2\(15),
	datad => \spi|counter2~1_combout\,
	combout => \spi|counter2[15]~17_combout\);

-- Location: FF_X37_Y3_N31
\spi|counter2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[15]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(15));

-- Location: LCCOMB_X38_Y3_N0
\spi|Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~32_combout\ = (\spi|counter2\(16) & (\spi|Add2~31\ $ (GND))) # (!\spi|counter2\(16) & (!\spi|Add2~31\ & VCC))
-- \spi|Add2~33\ = CARRY((\spi|counter2\(16) & !\spi|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter2\(16),
	datad => VCC,
	cin => \spi|Add2~31\,
	combout => \spi|Add2~32_combout\,
	cout => \spi|Add2~33\);

-- Location: LCCOMB_X37_Y3_N20
\spi|counter2[16]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[16]~16_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(16)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|process_1~1_combout\,
	datab => \spi|Add2~32_combout\,
	datac => \spi|counter2\(16),
	datad => \spi|counter2~1_combout\,
	combout => \spi|counter2[16]~16_combout\);

-- Location: FF_X37_Y3_N21
\spi|counter2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[16]~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(16));

-- Location: LCCOMB_X38_Y3_N2
\spi|Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~34_combout\ = (\spi|counter2\(17) & (!\spi|Add2~33\)) # (!\spi|counter2\(17) & ((\spi|Add2~33\) # (GND)))
-- \spi|Add2~35\ = CARRY((!\spi|Add2~33\) # (!\spi|counter2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(17),
	datad => VCC,
	cin => \spi|Add2~33\,
	combout => \spi|Add2~34_combout\,
	cout => \spi|Add2~35\);

-- Location: LCCOMB_X37_Y3_N14
\spi|counter2[17]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[17]~15_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(17)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2~1_combout\,
	datab => \spi|Add2~34_combout\,
	datac => \spi|counter2\(17),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[17]~15_combout\);

-- Location: FF_X37_Y3_N15
\spi|counter2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[17]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(17));

-- Location: LCCOMB_X38_Y3_N4
\spi|Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~36_combout\ = (\spi|counter2\(18) & (\spi|Add2~35\ $ (GND))) # (!\spi|counter2\(18) & (!\spi|Add2~35\ & VCC))
-- \spi|Add2~37\ = CARRY((\spi|counter2\(18) & !\spi|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(18),
	datad => VCC,
	cin => \spi|Add2~35\,
	combout => \spi|Add2~36_combout\,
	cout => \spi|Add2~37\);

-- Location: LCCOMB_X37_Y3_N12
\spi|counter2[18]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[18]~14_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(18)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2~1_combout\,
	datab => \spi|Add2~36_combout\,
	datac => \spi|counter2\(18),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[18]~14_combout\);

-- Location: FF_X37_Y3_N13
\spi|counter2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[18]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(18));

-- Location: LCCOMB_X38_Y3_N6
\spi|Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~38_combout\ = (\spi|counter2\(19) & (!\spi|Add2~37\)) # (!\spi|counter2\(19) & ((\spi|Add2~37\) # (GND)))
-- \spi|Add2~39\ = CARRY((!\spi|Add2~37\) # (!\spi|counter2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(19),
	datad => VCC,
	cin => \spi|Add2~37\,
	combout => \spi|Add2~38_combout\,
	cout => \spi|Add2~39\);

-- Location: LCCOMB_X37_Y3_N8
\spi|counter2[19]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[19]~13_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(19)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2~1_combout\,
	datab => \spi|Add2~38_combout\,
	datac => \spi|counter2\(19),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[19]~13_combout\);

-- Location: FF_X37_Y3_N9
\spi|counter2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[19]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(19));

-- Location: LCCOMB_X38_Y3_N8
\spi|Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~40_combout\ = (\spi|counter2\(20) & (\spi|Add2~39\ $ (GND))) # (!\spi|counter2\(20) & (!\spi|Add2~39\ & VCC))
-- \spi|Add2~41\ = CARRY((\spi|counter2\(20) & !\spi|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(20),
	datad => VCC,
	cin => \spi|Add2~39\,
	combout => \spi|Add2~40_combout\,
	cout => \spi|Add2~41\);

-- Location: LCCOMB_X37_Y3_N26
\spi|counter2[20]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[20]~12_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(20)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|process_1~1_combout\,
	datab => \spi|Add2~40_combout\,
	datac => \spi|counter2\(20),
	datad => \spi|counter2~1_combout\,
	combout => \spi|counter2[20]~12_combout\);

-- Location: FF_X37_Y3_N27
\spi|counter2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[20]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(20));

-- Location: LCCOMB_X38_Y3_N10
\spi|Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~42_combout\ = (\spi|counter2\(21) & (!\spi|Add2~41\)) # (!\spi|counter2\(21) & ((\spi|Add2~41\) # (GND)))
-- \spi|Add2~43\ = CARRY((!\spi|Add2~41\) # (!\spi|counter2\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(21),
	datad => VCC,
	cin => \spi|Add2~41\,
	combout => \spi|Add2~42_combout\,
	cout => \spi|Add2~43\);

-- Location: LCCOMB_X37_Y3_N0
\spi|counter2[21]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[21]~11_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(21)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|process_1~1_combout\,
	datab => \spi|Add2~42_combout\,
	datac => \spi|counter2\(21),
	datad => \spi|counter2~1_combout\,
	combout => \spi|counter2[21]~11_combout\);

-- Location: FF_X37_Y3_N1
\spi|counter2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[21]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(21));

-- Location: LCCOMB_X38_Y3_N12
\spi|Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~44_combout\ = (\spi|counter2\(22) & (\spi|Add2~43\ $ (GND))) # (!\spi|counter2\(22) & (!\spi|Add2~43\ & VCC))
-- \spi|Add2~45\ = CARRY((\spi|counter2\(22) & !\spi|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter2\(22),
	datad => VCC,
	cin => \spi|Add2~43\,
	combout => \spi|Add2~44_combout\,
	cout => \spi|Add2~45\);

-- Location: LCCOMB_X37_Y3_N18
\spi|counter2[22]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[22]~10_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(22)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|process_1~1_combout\,
	datab => \spi|Add2~44_combout\,
	datac => \spi|counter2\(22),
	datad => \spi|counter2~1_combout\,
	combout => \spi|counter2[22]~10_combout\);

-- Location: FF_X37_Y3_N19
\spi|counter2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[22]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(22));

-- Location: LCCOMB_X37_Y3_N10
\spi|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|LessThan0~2_combout\ = (!\spi|counter2\(20) & (!\spi|counter2\(21) & (!\spi|counter2\(19) & !\spi|counter2\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(20),
	datab => \spi|counter2\(21),
	datac => \spi|counter2\(19),
	datad => \spi|counter2\(22),
	combout => \spi|LessThan0~2_combout\);

-- Location: LCCOMB_X38_Y3_N14
\spi|Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~46_combout\ = (\spi|counter2\(23) & (!\spi|Add2~45\)) # (!\spi|counter2\(23) & ((\spi|Add2~45\) # (GND)))
-- \spi|Add2~47\ = CARRY((!\spi|Add2~45\) # (!\spi|counter2\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter2\(23),
	datad => VCC,
	cin => \spi|Add2~45\,
	combout => \spi|Add2~46_combout\,
	cout => \spi|Add2~47\);

-- Location: LCCOMB_X37_Y3_N22
\spi|counter2[23]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[23]~9_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(23)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|process_1~1_combout\,
	datab => \spi|Add2~46_combout\,
	datac => \spi|counter2\(23),
	datad => \spi|counter2~1_combout\,
	combout => \spi|counter2[23]~9_combout\);

-- Location: FF_X37_Y3_N23
\spi|counter2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[23]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(23));

-- Location: LCCOMB_X38_Y3_N16
\spi|Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~48_combout\ = (\spi|counter2\(24) & (\spi|Add2~47\ $ (GND))) # (!\spi|counter2\(24) & (!\spi|Add2~47\ & VCC))
-- \spi|Add2~49\ = CARRY((\spi|counter2\(24) & !\spi|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter2\(24),
	datad => VCC,
	cin => \spi|Add2~47\,
	combout => \spi|Add2~48_combout\,
	cout => \spi|Add2~49\);

-- Location: LCCOMB_X37_Y3_N28
\spi|counter2[24]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[24]~8_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(24)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2~1_combout\,
	datab => \spi|Add2~48_combout\,
	datac => \spi|counter2\(24),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[24]~8_combout\);

-- Location: FF_X37_Y3_N29
\spi|counter2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[24]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(24));

-- Location: LCCOMB_X38_Y3_N18
\spi|Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~50_combout\ = (\spi|counter2\(25) & (!\spi|Add2~49\)) # (!\spi|counter2\(25) & ((\spi|Add2~49\) # (GND)))
-- \spi|Add2~51\ = CARRY((!\spi|Add2~49\) # (!\spi|counter2\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(25),
	datad => VCC,
	cin => \spi|Add2~49\,
	combout => \spi|Add2~50_combout\,
	cout => \spi|Add2~51\);

-- Location: LCCOMB_X37_Y3_N2
\spi|counter2[25]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[25]~7_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(25)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|process_1~1_combout\,
	datab => \spi|Add2~50_combout\,
	datac => \spi|counter2\(25),
	datad => \spi|counter2~1_combout\,
	combout => \spi|counter2[25]~7_combout\);

-- Location: FF_X37_Y3_N3
\spi|counter2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[25]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(25));

-- Location: LCCOMB_X37_Y3_N24
\spi|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|LessThan0~1_combout\ = (!\spi|counter2\(23) & (!\spi|counter2\(26) & (!\spi|counter2\(24) & !\spi|counter2\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(23),
	datab => \spi|counter2\(26),
	datac => \spi|counter2\(24),
	datad => \spi|counter2\(25),
	combout => \spi|LessThan0~1_combout\);

-- Location: LCCOMB_X37_Y3_N4
\spi|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|LessThan0~3_combout\ = (!\spi|counter2\(18) & (!\spi|counter2\(17) & (!\spi|counter2\(15) & !\spi|counter2\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(18),
	datab => \spi|counter2\(17),
	datac => \spi|counter2\(15),
	datad => \spi|counter2\(16),
	combout => \spi|LessThan0~3_combout\);

-- Location: LCCOMB_X39_Y3_N20
\spi|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|LessThan0~0_combout\ = (!\spi|counter2\(29) & (!\spi|counter2\(28) & (!\spi|counter2\(30) & !\spi|counter2\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(29),
	datab => \spi|counter2\(28),
	datac => \spi|counter2\(30),
	datad => \spi|counter2\(27),
	combout => \spi|LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y3_N6
\spi|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|LessThan0~4_combout\ = (\spi|LessThan0~2_combout\ & (\spi|LessThan0~1_combout\ & (\spi|LessThan0~3_combout\ & \spi|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan0~2_combout\,
	datab => \spi|LessThan0~1_combout\,
	datac => \spi|LessThan0~3_combout\,
	datad => \spi|LessThan0~0_combout\,
	combout => \spi|LessThan0~4_combout\);

-- Location: LCCOMB_X36_Y3_N18
\spi|LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|LessThan0~8_combout\ = (\spi|LessThan0~6_combout\ & (\spi|LessThan0~5_combout\ & (\spi|LessThan0~7_combout\ & \spi|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan0~6_combout\,
	datab => \spi|LessThan0~5_combout\,
	datac => \spi|LessThan0~7_combout\,
	datad => \spi|LessThan0~4_combout\,
	combout => \spi|LessThan0~8_combout\);

-- Location: LCCOMB_X35_Y3_N16
\spi|CS_in~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|CS_in~0_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\) # (\spi|CS_in~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|LessThan1~0_combout\,
	datac => \spi|CS_in~q\,
	datad => \spi|process_1~1_combout\,
	combout => \spi|CS_in~0_combout\);

-- Location: FF_X35_Y3_N17
\spi|CS_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|CS_in~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|CS_in~q\);

-- Location: LCCOMB_X35_Y2_N0
\spi|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~0_combout\ = \spi|counter1\(0) $ (VCC)
-- \spi|Add4~1\ = CARRY(\spi|counter1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter1\(0),
	datad => VCC,
	combout => \spi|Add4~0_combout\,
	cout => \spi|Add4~1\);

-- Location: LCCOMB_X36_Y2_N10
\spi|counter1[0]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[0]~30_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~0_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan1~0_combout\,
	datab => \spi|Add4~0_combout\,
	datac => \spi|counter1\(0),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[0]~30_combout\);

-- Location: FF_X36_Y2_N11
\spi|counter1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[0]~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(0));

-- Location: LCCOMB_X35_Y2_N2
\spi|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~2_combout\ = (\spi|counter1\(1) & (!\spi|Add4~1\)) # (!\spi|counter1\(1) & ((\spi|Add4~1\) # (GND)))
-- \spi|Add4~3\ = CARRY((!\spi|Add4~1\) # (!\spi|counter1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter1\(1),
	datad => VCC,
	cin => \spi|Add4~1\,
	combout => \spi|Add4~2_combout\,
	cout => \spi|Add4~3\);

-- Location: LCCOMB_X36_Y2_N16
\spi|counter1[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[1]~1_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~2_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add4~2_combout\,
	datab => \spi|LessThan1~0_combout\,
	datac => \spi|counter1\(1),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[1]~1_combout\);

-- Location: FF_X36_Y2_N17
\spi|counter1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(1));

-- Location: LCCOMB_X35_Y2_N4
\spi|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~4_combout\ = (\spi|counter1\(2) & (\spi|Add4~3\ $ (GND))) # (!\spi|counter1\(2) & (!\spi|Add4~3\ & VCC))
-- \spi|Add4~5\ = CARRY((\spi|counter1\(2) & !\spi|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter1\(2),
	datad => VCC,
	cin => \spi|Add4~3\,
	combout => \spi|Add4~4_combout\,
	cout => \spi|Add4~5\);

-- Location: LCCOMB_X36_Y2_N22
\spi|counter1[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[2]~0_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~4_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan1~0_combout\,
	datab => \spi|Add4~4_combout\,
	datac => \spi|counter1\(2),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[2]~0_combout\);

-- Location: FF_X36_Y2_N23
\spi|counter1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[2]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(2));

-- Location: LCCOMB_X35_Y2_N6
\spi|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~6_combout\ = (\spi|counter1\(3) & (!\spi|Add4~5\)) # (!\spi|counter1\(3) & ((\spi|Add4~5\) # (GND)))
-- \spi|Add4~7\ = CARRY((!\spi|Add4~5\) # (!\spi|counter1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter1\(3),
	datad => VCC,
	cin => \spi|Add4~5\,
	combout => \spi|Add4~6_combout\,
	cout => \spi|Add4~7\);

-- Location: LCCOMB_X36_Y3_N24
\spi|counter1[3]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[3]~29_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~6_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan1~0_combout\,
	datab => \spi|Add4~6_combout\,
	datac => \spi|counter1\(3),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[3]~29_combout\);

-- Location: FF_X36_Y3_N25
\spi|counter1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[3]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(3));

-- Location: LCCOMB_X35_Y2_N8
\spi|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~8_combout\ = (\spi|counter1\(4) & (\spi|Add4~7\ $ (GND))) # (!\spi|counter1\(4) & (!\spi|Add4~7\ & VCC))
-- \spi|Add4~9\ = CARRY((\spi|counter1\(4) & !\spi|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(4),
	datad => VCC,
	cin => \spi|Add4~7\,
	combout => \spi|Add4~8_combout\,
	cout => \spi|Add4~9\);

-- Location: LCCOMB_X36_Y3_N26
\spi|counter1[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[4]~28_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~8_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan1~0_combout\,
	datab => \spi|Add4~8_combout\,
	datac => \spi|counter1\(4),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[4]~28_combout\);

-- Location: FF_X36_Y3_N27
\spi|counter1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[4]~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(4));

-- Location: LCCOMB_X35_Y2_N10
\spi|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~10_combout\ = (\spi|counter1\(5) & (!\spi|Add4~9\)) # (!\spi|counter1\(5) & ((\spi|Add4~9\) # (GND)))
-- \spi|Add4~11\ = CARRY((!\spi|Add4~9\) # (!\spi|counter1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(5),
	datad => VCC,
	cin => \spi|Add4~9\,
	combout => \spi|Add4~10_combout\,
	cout => \spi|Add4~11\);

-- Location: LCCOMB_X36_Y3_N28
\spi|counter1[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[5]~27_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~10_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan1~0_combout\,
	datab => \spi|Add4~10_combout\,
	datac => \spi|counter1\(5),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[5]~27_combout\);

-- Location: FF_X36_Y3_N29
\spi|counter1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[5]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(5));

-- Location: LCCOMB_X35_Y2_N12
\spi|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~12_combout\ = (\spi|counter1\(6) & (\spi|Add4~11\ $ (GND))) # (!\spi|counter1\(6) & (!\spi|Add4~11\ & VCC))
-- \spi|Add4~13\ = CARRY((\spi|counter1\(6) & !\spi|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(6),
	datad => VCC,
	cin => \spi|Add4~11\,
	combout => \spi|Add4~12_combout\,
	cout => \spi|Add4~13\);

-- Location: LCCOMB_X36_Y3_N14
\spi|counter1[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[6]~26_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~12_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan1~0_combout\,
	datab => \spi|Add4~12_combout\,
	datac => \spi|counter1\(6),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[6]~26_combout\);

-- Location: FF_X36_Y3_N15
\spi|counter1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[6]~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(6));

-- Location: LCCOMB_X36_Y3_N2
\spi|Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal1~7_combout\ = (!\spi|counter1\(4) & (!\spi|counter1\(5) & (!\spi|counter1\(6) & !\spi|counter1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(4),
	datab => \spi|counter1\(5),
	datac => \spi|counter1\(6),
	datad => \spi|counter1\(3),
	combout => \spi|Equal1~7_combout\);

-- Location: LCCOMB_X35_Y2_N14
\spi|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~14_combout\ = (\spi|counter1\(7) & (!\spi|Add4~13\)) # (!\spi|counter1\(7) & ((\spi|Add4~13\) # (GND)))
-- \spi|Add4~15\ = CARRY((!\spi|Add4~13\) # (!\spi|counter1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(7),
	datad => VCC,
	cin => \spi|Add4~13\,
	combout => \spi|Add4~14_combout\,
	cout => \spi|Add4~15\);

-- Location: LCCOMB_X35_Y3_N4
\spi|counter1[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[7]~25_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~14_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add4~14_combout\,
	datab => \spi|LessThan1~0_combout\,
	datac => \spi|counter1\(7),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[7]~25_combout\);

-- Location: FF_X35_Y3_N5
\spi|counter1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[7]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(7));

-- Location: LCCOMB_X35_Y2_N16
\spi|Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~16_combout\ = (\spi|counter1\(8) & (\spi|Add4~15\ $ (GND))) # (!\spi|counter1\(8) & (!\spi|Add4~15\ & VCC))
-- \spi|Add4~17\ = CARRY((\spi|counter1\(8) & !\spi|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(8),
	datad => VCC,
	cin => \spi|Add4~15\,
	combout => \spi|Add4~16_combout\,
	cout => \spi|Add4~17\);

-- Location: LCCOMB_X35_Y3_N14
\spi|counter1[8]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[8]~24_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~16_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add4~16_combout\,
	datab => \spi|LessThan1~0_combout\,
	datac => \spi|counter1\(8),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[8]~24_combout\);

-- Location: FF_X35_Y3_N15
\spi|counter1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[8]~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(8));

-- Location: LCCOMB_X35_Y2_N18
\spi|Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~18_combout\ = (\spi|counter1\(9) & (!\spi|Add4~17\)) # (!\spi|counter1\(9) & ((\spi|Add4~17\) # (GND)))
-- \spi|Add4~19\ = CARRY((!\spi|Add4~17\) # (!\spi|counter1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(9),
	datad => VCC,
	cin => \spi|Add4~17\,
	combout => \spi|Add4~18_combout\,
	cout => \spi|Add4~19\);

-- Location: LCCOMB_X35_Y3_N12
\spi|counter1[9]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[9]~23_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~18_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add4~18_combout\,
	datab => \spi|LessThan1~0_combout\,
	datac => \spi|counter1\(9),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[9]~23_combout\);

-- Location: FF_X35_Y3_N13
\spi|counter1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[9]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(9));

-- Location: LCCOMB_X35_Y2_N20
\spi|Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~20_combout\ = (\spi|counter1\(10) & (\spi|Add4~19\ $ (GND))) # (!\spi|counter1\(10) & (!\spi|Add4~19\ & VCC))
-- \spi|Add4~21\ = CARRY((\spi|counter1\(10) & !\spi|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter1\(10),
	datad => VCC,
	cin => \spi|Add4~19\,
	combout => \spi|Add4~20_combout\,
	cout => \spi|Add4~21\);

-- Location: LCCOMB_X35_Y3_N2
\spi|counter1[10]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[10]~22_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~20_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add4~20_combout\,
	datab => \spi|LessThan1~0_combout\,
	datac => \spi|counter1\(10),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[10]~22_combout\);

-- Location: FF_X35_Y3_N3
\spi|counter1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[10]~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(10));

-- Location: LCCOMB_X35_Y2_N22
\spi|Add4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~22_combout\ = (\spi|counter1\(11) & (!\spi|Add4~21\)) # (!\spi|counter1\(11) & ((\spi|Add4~21\) # (GND)))
-- \spi|Add4~23\ = CARRY((!\spi|Add4~21\) # (!\spi|counter1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter1\(11),
	datad => VCC,
	cin => \spi|Add4~21\,
	combout => \spi|Add4~22_combout\,
	cout => \spi|Add4~23\);

-- Location: LCCOMB_X35_Y3_N28
\spi|counter1[11]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[11]~21_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~22_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add4~22_combout\,
	datab => \spi|LessThan1~0_combout\,
	datac => \spi|counter1\(11),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[11]~21_combout\);

-- Location: FF_X35_Y3_N29
\spi|counter1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[11]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(11));

-- Location: LCCOMB_X35_Y2_N24
\spi|Add4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~24_combout\ = (\spi|counter1\(12) & (\spi|Add4~23\ $ (GND))) # (!\spi|counter1\(12) & (!\spi|Add4~23\ & VCC))
-- \spi|Add4~25\ = CARRY((\spi|counter1\(12) & !\spi|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter1\(12),
	datad => VCC,
	cin => \spi|Add4~23\,
	combout => \spi|Add4~24_combout\,
	cout => \spi|Add4~25\);

-- Location: LCCOMB_X35_Y3_N6
\spi|counter1[12]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[12]~20_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~24_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add4~24_combout\,
	datab => \spi|LessThan1~0_combout\,
	datac => \spi|counter1\(12),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[12]~20_combout\);

-- Location: FF_X35_Y3_N7
\spi|counter1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[12]~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(12));

-- Location: LCCOMB_X35_Y2_N26
\spi|Add4~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~26_combout\ = (\spi|counter1\(13) & (!\spi|Add4~25\)) # (!\spi|counter1\(13) & ((\spi|Add4~25\) # (GND)))
-- \spi|Add4~27\ = CARRY((!\spi|Add4~25\) # (!\spi|counter1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter1\(13),
	datad => VCC,
	cin => \spi|Add4~25\,
	combout => \spi|Add4~26_combout\,
	cout => \spi|Add4~27\);

-- Location: LCCOMB_X36_Y3_N30
\spi|counter1[13]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[13]~19_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~26_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan1~0_combout\,
	datab => \spi|Add4~26_combout\,
	datac => \spi|counter1\(13),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[13]~19_combout\);

-- Location: FF_X36_Y3_N31
\spi|counter1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[13]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(13));

-- Location: LCCOMB_X35_Y2_N28
\spi|Add4~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~28_combout\ = (\spi|counter1\(14) & (\spi|Add4~27\ $ (GND))) # (!\spi|counter1\(14) & (!\spi|Add4~27\ & VCC))
-- \spi|Add4~29\ = CARRY((\spi|counter1\(14) & !\spi|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter1\(14),
	datad => VCC,
	cin => \spi|Add4~27\,
	combout => \spi|Add4~28_combout\,
	cout => \spi|Add4~29\);

-- Location: LCCOMB_X36_Y3_N0
\spi|counter1[14]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[14]~18_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~28_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan1~0_combout\,
	datab => \spi|Add4~28_combout\,
	datac => \spi|counter1\(14),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[14]~18_combout\);

-- Location: FF_X36_Y3_N1
\spi|counter1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[14]~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(14));

-- Location: LCCOMB_X36_Y3_N8
\spi|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal1~5_combout\ = (!\spi|counter1\(13) & (!\spi|counter1\(14) & (!\spi|counter1\(12) & !\spi|counter1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(13),
	datab => \spi|counter1\(14),
	datac => \spi|counter1\(12),
	datad => \spi|counter1\(11),
	combout => \spi|Equal1~5_combout\);

-- Location: LCCOMB_X35_Y3_N10
\spi|Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal1~6_combout\ = (!\spi|counter1\(9) & (!\spi|counter1\(7) & (!\spi|counter1\(8) & !\spi|counter1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(9),
	datab => \spi|counter1\(7),
	datac => \spi|counter1\(8),
	datad => \spi|counter1\(10),
	combout => \spi|Equal1~6_combout\);

-- Location: LCCOMB_X36_Y3_N20
\spi|Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal1~8_combout\ = (\spi|Equal1~7_combout\ & (\spi|Equal1~5_combout\ & \spi|Equal1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Equal1~7_combout\,
	datac => \spi|Equal1~5_combout\,
	datad => \spi|Equal1~6_combout\,
	combout => \spi|Equal1~8_combout\);

-- Location: LCCOMB_X36_Y2_N0
\spi|Equal1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal1~10_combout\ = (!\spi|counter1\(31) & (\spi|counter1\(1) & (\spi|counter1\(2) & \spi|counter1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(31),
	datab => \spi|counter1\(1),
	datac => \spi|counter1\(2),
	datad => \spi|counter1\(0),
	combout => \spi|Equal1~10_combout\);

-- Location: LCCOMB_X35_Y2_N30
\spi|Add4~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~30_combout\ = (\spi|counter1\(15) & (!\spi|Add4~29\)) # (!\spi|counter1\(15) & ((\spi|Add4~29\) # (GND)))
-- \spi|Add4~31\ = CARRY((!\spi|Add4~29\) # (!\spi|counter1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter1\(15),
	datad => VCC,
	cin => \spi|Add4~29\,
	combout => \spi|Add4~30_combout\,
	cout => \spi|Add4~31\);

-- Location: LCCOMB_X34_Y3_N16
\spi|counter1[15]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[15]~17_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~30_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add4~30_combout\,
	datab => \spi|LessThan1~0_combout\,
	datac => \spi|counter1\(15),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[15]~17_combout\);

-- Location: FF_X34_Y3_N17
\spi|counter1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[15]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(15));

-- Location: LCCOMB_X35_Y1_N0
\spi|Add4~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~32_combout\ = (\spi|counter1\(16) & (\spi|Add4~31\ $ (GND))) # (!\spi|counter1\(16) & (!\spi|Add4~31\ & VCC))
-- \spi|Add4~33\ = CARRY((\spi|counter1\(16) & !\spi|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter1\(16),
	datad => VCC,
	cin => \spi|Add4~31\,
	combout => \spi|Add4~32_combout\,
	cout => \spi|Add4~33\);

-- Location: LCCOMB_X34_Y3_N14
\spi|counter1[16]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[16]~16_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~32_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan1~0_combout\,
	datab => \spi|Add4~32_combout\,
	datac => \spi|counter1\(16),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[16]~16_combout\);

-- Location: FF_X34_Y3_N15
\spi|counter1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[16]~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(16));

-- Location: LCCOMB_X35_Y1_N2
\spi|Add4~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~34_combout\ = (\spi|counter1\(17) & (!\spi|Add4~33\)) # (!\spi|counter1\(17) & ((\spi|Add4~33\) # (GND)))
-- \spi|Add4~35\ = CARRY((!\spi|Add4~33\) # (!\spi|counter1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter1\(17),
	datad => VCC,
	cin => \spi|Add4~33\,
	combout => \spi|Add4~34_combout\,
	cout => \spi|Add4~35\);

-- Location: LCCOMB_X34_Y3_N8
\spi|counter1[17]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[17]~15_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~34_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan1~0_combout\,
	datab => \spi|Add4~34_combout\,
	datac => \spi|counter1\(17),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[17]~15_combout\);

-- Location: FF_X34_Y3_N9
\spi|counter1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[17]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(17));

-- Location: LCCOMB_X35_Y1_N4
\spi|Add4~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~36_combout\ = (\spi|counter1\(18) & (\spi|Add4~35\ $ (GND))) # (!\spi|counter1\(18) & (!\spi|Add4~35\ & VCC))
-- \spi|Add4~37\ = CARRY((\spi|counter1\(18) & !\spi|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(18),
	datad => VCC,
	cin => \spi|Add4~35\,
	combout => \spi|Add4~36_combout\,
	cout => \spi|Add4~37\);

-- Location: LCCOMB_X34_Y3_N6
\spi|counter1[18]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[18]~14_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~36_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan1~0_combout\,
	datab => \spi|Add4~36_combout\,
	datac => \spi|counter1\(18),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[18]~14_combout\);

-- Location: FF_X34_Y3_N7
\spi|counter1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[18]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(18));

-- Location: LCCOMB_X35_Y1_N6
\spi|Add4~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~38_combout\ = (\spi|counter1\(19) & (!\spi|Add4~37\)) # (!\spi|counter1\(19) & ((\spi|Add4~37\) # (GND)))
-- \spi|Add4~39\ = CARRY((!\spi|Add4~37\) # (!\spi|counter1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(19),
	datad => VCC,
	cin => \spi|Add4~37\,
	combout => \spi|Add4~38_combout\,
	cout => \spi|Add4~39\);

-- Location: LCCOMB_X34_Y3_N18
\spi|counter1[19]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[19]~13_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~38_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add4~38_combout\,
	datab => \spi|LessThan1~0_combout\,
	datac => \spi|counter1\(19),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[19]~13_combout\);

-- Location: FF_X34_Y3_N19
\spi|counter1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[19]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(19));

-- Location: LCCOMB_X35_Y1_N8
\spi|Add4~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~40_combout\ = (\spi|counter1\(20) & (\spi|Add4~39\ $ (GND))) # (!\spi|counter1\(20) & (!\spi|Add4~39\ & VCC))
-- \spi|Add4~41\ = CARRY((\spi|counter1\(20) & !\spi|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter1\(20),
	datad => VCC,
	cin => \spi|Add4~39\,
	combout => \spi|Add4~40_combout\,
	cout => \spi|Add4~41\);

-- Location: LCCOMB_X34_Y3_N28
\spi|counter1[20]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[20]~12_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~40_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan1~0_combout\,
	datab => \spi|Add4~40_combout\,
	datac => \spi|counter1\(20),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[20]~12_combout\);

-- Location: FF_X34_Y3_N29
\spi|counter1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[20]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(20));

-- Location: LCCOMB_X35_Y1_N10
\spi|Add4~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~42_combout\ = (\spi|counter1\(21) & (!\spi|Add4~41\)) # (!\spi|counter1\(21) & ((\spi|Add4~41\) # (GND)))
-- \spi|Add4~43\ = CARRY((!\spi|Add4~41\) # (!\spi|counter1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(21),
	datad => VCC,
	cin => \spi|Add4~41\,
	combout => \spi|Add4~42_combout\,
	cout => \spi|Add4~43\);

-- Location: LCCOMB_X34_Y3_N22
\spi|counter1[21]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[21]~11_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~42_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add4~42_combout\,
	datab => \spi|LessThan1~0_combout\,
	datac => \spi|counter1\(21),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[21]~11_combout\);

-- Location: FF_X34_Y3_N23
\spi|counter1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[21]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(21));

-- Location: LCCOMB_X35_Y1_N12
\spi|Add4~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~44_combout\ = (\spi|counter1\(22) & (\spi|Add4~43\ $ (GND))) # (!\spi|counter1\(22) & (!\spi|Add4~43\ & VCC))
-- \spi|Add4~45\ = CARRY((\spi|counter1\(22) & !\spi|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter1\(22),
	datad => VCC,
	cin => \spi|Add4~43\,
	combout => \spi|Add4~44_combout\,
	cout => \spi|Add4~45\);

-- Location: LCCOMB_X34_Y3_N4
\spi|counter1[22]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[22]~10_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~44_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add4~44_combout\,
	datab => \spi|LessThan1~0_combout\,
	datac => \spi|counter1\(22),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[22]~10_combout\);

-- Location: FF_X34_Y3_N5
\spi|counter1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[22]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(22));

-- Location: LCCOMB_X35_Y1_N14
\spi|Add4~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~46_combout\ = (\spi|counter1\(23) & (!\spi|Add4~45\)) # (!\spi|counter1\(23) & ((\spi|Add4~45\) # (GND)))
-- \spi|Add4~47\ = CARRY((!\spi|Add4~45\) # (!\spi|counter1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(23),
	datad => VCC,
	cin => \spi|Add4~45\,
	combout => \spi|Add4~46_combout\,
	cout => \spi|Add4~47\);

-- Location: LCCOMB_X35_Y3_N30
\spi|counter1[23]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[23]~9_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~46_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add4~46_combout\,
	datab => \spi|LessThan1~0_combout\,
	datac => \spi|counter1\(23),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[23]~9_combout\);

-- Location: FF_X35_Y3_N31
\spi|counter1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[23]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(23));

-- Location: LCCOMB_X35_Y1_N16
\spi|Add4~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~48_combout\ = (\spi|counter1\(24) & (\spi|Add4~47\ $ (GND))) # (!\spi|counter1\(24) & (!\spi|Add4~47\ & VCC))
-- \spi|Add4~49\ = CARRY((\spi|counter1\(24) & !\spi|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter1\(24),
	datad => VCC,
	cin => \spi|Add4~47\,
	combout => \spi|Add4~48_combout\,
	cout => \spi|Add4~49\);

-- Location: LCCOMB_X35_Y3_N8
\spi|counter1[24]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[24]~8_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~48_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add4~48_combout\,
	datab => \spi|LessThan1~0_combout\,
	datac => \spi|counter1\(24),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[24]~8_combout\);

-- Location: FF_X35_Y3_N9
\spi|counter1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[24]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(24));

-- Location: LCCOMB_X35_Y1_N18
\spi|Add4~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~50_combout\ = (\spi|counter1\(25) & (!\spi|Add4~49\)) # (!\spi|counter1\(25) & ((\spi|Add4~49\) # (GND)))
-- \spi|Add4~51\ = CARRY((!\spi|Add4~49\) # (!\spi|counter1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter1\(25),
	datad => VCC,
	cin => \spi|Add4~49\,
	combout => \spi|Add4~50_combout\,
	cout => \spi|Add4~51\);

-- Location: LCCOMB_X35_Y3_N18
\spi|counter1[25]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[25]~7_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~50_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add4~50_combout\,
	datab => \spi|LessThan1~0_combout\,
	datac => \spi|counter1\(25),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[25]~7_combout\);

-- Location: FF_X35_Y3_N19
\spi|counter1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[25]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(25));

-- Location: LCCOMB_X35_Y1_N20
\spi|Add4~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~52_combout\ = (\spi|counter1\(26) & (\spi|Add4~51\ $ (GND))) # (!\spi|counter1\(26) & (!\spi|Add4~51\ & VCC))
-- \spi|Add4~53\ = CARRY((\spi|counter1\(26) & !\spi|Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(26),
	datad => VCC,
	cin => \spi|Add4~51\,
	combout => \spi|Add4~52_combout\,
	cout => \spi|Add4~53\);

-- Location: LCCOMB_X35_Y3_N20
\spi|counter1[26]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[26]~6_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~52_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan1~0_combout\,
	datab => \spi|Add4~52_combout\,
	datac => \spi|counter1\(26),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[26]~6_combout\);

-- Location: FF_X35_Y3_N21
\spi|counter1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[26]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(26));

-- Location: LCCOMB_X35_Y3_N0
\spi|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal1~1_combout\ = (!\spi|counter1\(23) & (!\spi|counter1\(25) & (!\spi|counter1\(24) & !\spi|counter1\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(23),
	datab => \spi|counter1\(25),
	datac => \spi|counter1\(24),
	datad => \spi|counter1\(26),
	combout => \spi|Equal1~1_combout\);

-- Location: LCCOMB_X34_Y3_N26
\spi|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal1~3_combout\ = (!\spi|counter1\(18) & (!\spi|counter1\(17) & (!\spi|counter1\(16) & !\spi|counter1\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(18),
	datab => \spi|counter1\(17),
	datac => \spi|counter1\(16),
	datad => \spi|counter1\(15),
	combout => \spi|Equal1~3_combout\);

-- Location: LCCOMB_X34_Y3_N20
\spi|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal1~2_combout\ = (!\spi|counter1\(21) & (!\spi|counter1\(20) & (!\spi|counter1\(22) & !\spi|counter1\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(21),
	datab => \spi|counter1\(20),
	datac => \spi|counter1\(22),
	datad => \spi|counter1\(19),
	combout => \spi|Equal1~2_combout\);

-- Location: LCCOMB_X35_Y1_N22
\spi|Add4~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~54_combout\ = (\spi|counter1\(27) & (!\spi|Add4~53\)) # (!\spi|counter1\(27) & ((\spi|Add4~53\) # (GND)))
-- \spi|Add4~55\ = CARRY((!\spi|Add4~53\) # (!\spi|counter1\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter1\(27),
	datad => VCC,
	cin => \spi|Add4~53\,
	combout => \spi|Add4~54_combout\,
	cout => \spi|Add4~55\);

-- Location: LCCOMB_X34_Y3_N24
\spi|counter1[27]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[27]~5_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~54_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add4~54_combout\,
	datab => \spi|LessThan1~0_combout\,
	datac => \spi|counter1\(27),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[27]~5_combout\);

-- Location: FF_X34_Y3_N25
\spi|counter1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[27]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(27));

-- Location: LCCOMB_X35_Y1_N24
\spi|Add4~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~56_combout\ = (\spi|counter1\(28) & (\spi|Add4~55\ $ (GND))) # (!\spi|counter1\(28) & (!\spi|Add4~55\ & VCC))
-- \spi|Add4~57\ = CARRY((\spi|counter1\(28) & !\spi|Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(28),
	datad => VCC,
	cin => \spi|Add4~55\,
	combout => \spi|Add4~56_combout\,
	cout => \spi|Add4~57\);

-- Location: LCCOMB_X34_Y3_N30
\spi|counter1[28]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[28]~4_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~56_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add4~56_combout\,
	datab => \spi|LessThan1~0_combout\,
	datac => \spi|counter1\(28),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[28]~4_combout\);

-- Location: FF_X34_Y3_N31
\spi|counter1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[28]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(28));

-- Location: LCCOMB_X34_Y3_N10
\spi|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal1~0_combout\ = (!\spi|counter1\(29) & (!\spi|counter1\(27) & (!\spi|counter1\(28) & !\spi|counter1\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(29),
	datab => \spi|counter1\(27),
	datac => \spi|counter1\(28),
	datad => \spi|counter1\(30),
	combout => \spi|Equal1~0_combout\);

-- Location: LCCOMB_X36_Y3_N6
\spi|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal1~4_combout\ = (\spi|Equal1~1_combout\ & (\spi|Equal1~3_combout\ & (\spi|Equal1~2_combout\ & \spi|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal1~1_combout\,
	datab => \spi|Equal1~3_combout\,
	datac => \spi|Equal1~2_combout\,
	datad => \spi|Equal1~0_combout\,
	combout => \spi|Equal1~4_combout\);

-- Location: LCCOMB_X36_Y3_N12
\spi|counter2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2~0_combout\ = (((!\spi|Equal1~4_combout\) # (!\spi|Equal1~10_combout\)) # (!\spi|Equal1~8_combout\)) # (!\spi|CS_in~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|CS_in~q\,
	datab => \spi|Equal1~8_combout\,
	datac => \spi|Equal1~10_combout\,
	datad => \spi|Equal1~4_combout\,
	combout => \spi|counter2~0_combout\);

-- Location: LCCOMB_X36_Y3_N22
\spi|counter2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2~1_combout\ = (\spi|counter2~0_combout\) # ((!\spi|counter2\(31) & ((!\spi|LessThan0~8_combout\) # (!\spi|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(31),
	datab => \spi|LessThan0~9_combout\,
	datac => \spi|LessThan0~8_combout\,
	datad => \spi|counter2~0_combout\,
	combout => \spi|counter2~1_combout\);

-- Location: LCCOMB_X38_Y3_N20
\spi|Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~52_combout\ = (\spi|counter2\(26) & (\spi|Add2~51\ $ (GND))) # (!\spi|counter2\(26) & (!\spi|Add2~51\ & VCC))
-- \spi|Add2~53\ = CARRY((\spi|counter2\(26) & !\spi|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(26),
	datad => VCC,
	cin => \spi|Add2~51\,
	combout => \spi|Add2~52_combout\,
	cout => \spi|Add2~53\);

-- Location: LCCOMB_X37_Y3_N16
\spi|counter2[26]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[26]~6_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(26)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2~1_combout\,
	datab => \spi|Add2~52_combout\,
	datac => \spi|counter2\(26),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[26]~6_combout\);

-- Location: FF_X37_Y3_N17
\spi|counter2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[26]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(26));

-- Location: LCCOMB_X38_Y3_N22
\spi|Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~54_combout\ = (\spi|counter2\(27) & (!\spi|Add2~53\)) # (!\spi|counter2\(27) & ((\spi|Add2~53\) # (GND)))
-- \spi|Add2~55\ = CARRY((!\spi|Add2~53\) # (!\spi|counter2\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(27),
	datad => VCC,
	cin => \spi|Add2~53\,
	combout => \spi|Add2~54_combout\,
	cout => \spi|Add2~55\);

-- Location: LCCOMB_X39_Y3_N6
\spi|counter2[27]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[27]~5_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(27)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~54_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(27),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[27]~5_combout\);

-- Location: FF_X39_Y3_N7
\spi|counter2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[27]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(27));

-- Location: LCCOMB_X38_Y3_N24
\spi|Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~56_combout\ = (\spi|counter2\(28) & (\spi|Add2~55\ $ (GND))) # (!\spi|counter2\(28) & (!\spi|Add2~55\ & VCC))
-- \spi|Add2~57\ = CARRY((\spi|counter2\(28) & !\spi|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(28),
	datad => VCC,
	cin => \spi|Add2~55\,
	combout => \spi|Add2~56_combout\,
	cout => \spi|Add2~57\);

-- Location: LCCOMB_X39_Y3_N28
\spi|counter2[28]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[28]~4_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(28)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~56_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(28),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[28]~4_combout\);

-- Location: FF_X39_Y3_N29
\spi|counter2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[28]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(28));

-- Location: LCCOMB_X38_Y3_N26
\spi|Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~58_combout\ = (\spi|counter2\(29) & (!\spi|Add2~57\)) # (!\spi|counter2\(29) & ((\spi|Add2~57\) # (GND)))
-- \spi|Add2~59\ = CARRY((!\spi|Add2~57\) # (!\spi|counter2\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter2\(29),
	datad => VCC,
	cin => \spi|Add2~57\,
	combout => \spi|Add2~58_combout\,
	cout => \spi|Add2~59\);

-- Location: LCCOMB_X39_Y3_N22
\spi|counter2[29]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[29]~3_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(29)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~58_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(29),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[29]~3_combout\);

-- Location: FF_X39_Y3_N23
\spi|counter2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[29]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(29));

-- Location: LCCOMB_X38_Y3_N28
\spi|Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~60_combout\ = (\spi|counter2\(30) & (\spi|Add2~59\ $ (GND))) # (!\spi|counter2\(30) & (!\spi|Add2~59\ & VCC))
-- \spi|Add2~61\ = CARRY((\spi|counter2\(30) & !\spi|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(30),
	datad => VCC,
	cin => \spi|Add2~59\,
	combout => \spi|Add2~60_combout\,
	cout => \spi|Add2~61\);

-- Location: LCCOMB_X39_Y3_N4
\spi|counter2[30]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[30]~2_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(30)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~60_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(30),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[30]~2_combout\);

-- Location: FF_X39_Y3_N5
\spi|counter2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[30]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(30));

-- Location: LCCOMB_X38_Y3_N30
\spi|Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add2~62_combout\ = \spi|counter2\(31) $ (\spi|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter2\(31),
	cin => \spi|Add2~61\,
	combout => \spi|Add2~62_combout\);

-- Location: LCCOMB_X37_Y4_N22
\spi|counter2[31]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter2[31]~31_combout\ = (!\spi|process_1~1_combout\ & ((\spi|counter2~1_combout\ & ((\spi|counter2\(31)))) # (!\spi|counter2~1_combout\ & (\spi|Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add2~62_combout\,
	datab => \spi|counter2~1_combout\,
	datac => \spi|counter2\(31),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter2[31]~31_combout\);

-- Location: FF_X37_Y4_N23
\spi|counter2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|counter2[31]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter2\(31));

-- Location: LCCOMB_X37_Y4_N28
\spi|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|process_1~0_combout\ = (!\spi|counter2\(31) & (!\spi|counter2\(0) & (!\spi|counter2\(2) & \spi|counter2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(31),
	datab => \spi|counter2\(0),
	datac => \spi|counter2\(2),
	datad => \spi|counter2\(1),
	combout => \spi|process_1~0_combout\);

-- Location: LCCOMB_X36_Y3_N4
\spi|Equal1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal1~11_combout\ = (\spi|Equal1~8_combout\ & (\spi|Equal1~10_combout\ & \spi|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|Equal1~8_combout\,
	datac => \spi|Equal1~10_combout\,
	datad => \spi|Equal1~4_combout\,
	combout => \spi|Equal1~11_combout\);

-- Location: LCCOMB_X36_Y3_N10
\spi|process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|process_1~1_combout\ = (\spi|process_1~0_combout\ & (\spi|counter2\(3) & (\spi|Equal1~11_combout\ & \spi|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|process_1~0_combout\,
	datab => \spi|counter2\(3),
	datac => \spi|Equal1~11_combout\,
	datad => \spi|LessThan0~8_combout\,
	combout => \spi|process_1~1_combout\);

-- Location: LCCOMB_X35_Y1_N26
\spi|Add4~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~58_combout\ = (\spi|counter1\(29) & (!\spi|Add4~57\)) # (!\spi|counter1\(29) & ((\spi|Add4~57\) # (GND)))
-- \spi|Add4~59\ = CARRY((!\spi|Add4~57\) # (!\spi|counter1\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter1\(29),
	datad => VCC,
	cin => \spi|Add4~57\,
	combout => \spi|Add4~58_combout\,
	cout => \spi|Add4~59\);

-- Location: LCCOMB_X34_Y3_N12
\spi|counter1[29]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[29]~3_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & ((\spi|Add4~58_combout\))) # (!\spi|LessThan1~0_combout\ & (\spi|counter1\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan1~0_combout\,
	datab => \spi|process_1~1_combout\,
	datac => \spi|counter1\(29),
	datad => \spi|Add4~58_combout\,
	combout => \spi|counter1[29]~3_combout\);

-- Location: FF_X34_Y3_N13
\spi|counter1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[29]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(29));

-- Location: LCCOMB_X35_Y1_N28
\spi|Add4~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~60_combout\ = (\spi|counter1\(30) & (\spi|Add4~59\ $ (GND))) # (!\spi|counter1\(30) & (!\spi|Add4~59\ & VCC))
-- \spi|Add4~61\ = CARRY((\spi|counter1\(30) & !\spi|Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter1\(30),
	datad => VCC,
	cin => \spi|Add4~59\,
	combout => \spi|Add4~60_combout\,
	cout => \spi|Add4~61\);

-- Location: LCCOMB_X35_Y3_N22
\spi|counter1[30]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|counter1[30]~2_combout\ = (!\spi|process_1~1_combout\ & ((\spi|LessThan1~0_combout\ & (\spi|Add4~60_combout\)) # (!\spi|LessThan1~0_combout\ & ((\spi|counter1\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Add4~60_combout\,
	datab => \spi|LessThan1~0_combout\,
	datac => \spi|counter1\(30),
	datad => \spi|process_1~1_combout\,
	combout => \spi|counter1[30]~2_combout\);

-- Location: FF_X35_Y3_N23
\spi|counter1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|counter1[30]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(30));

-- Location: LCCOMB_X35_Y1_N30
\spi|Add4~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~62_combout\ = \spi|Add4~61\ $ (\spi|counter1\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \spi|counter1\(31),
	cin => \spi|Add4~61\,
	combout => \spi|Add4~62_combout\);

-- Location: LCCOMB_X36_Y2_N12
\spi|Add4~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Add4~64_combout\ = (\spi|LessThan1~0_combout\ & (\spi|Add4~62_combout\ & !\spi|process_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan1~0_combout\,
	datac => \spi|Add4~62_combout\,
	datad => \spi|process_1~1_combout\,
	combout => \spi|Add4~64_combout\);

-- Location: FF_X36_Y2_N13
\spi|counter1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|Add4~64_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|counter1\(31));

-- Location: LCCOMB_X36_Y2_N24
\spi|Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Equal1~9_combout\ = (\spi|counter1\(0) & (\spi|counter1\(2) & \spi|counter1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(0),
	datac => \spi|counter1\(2),
	datad => \spi|counter1\(1),
	combout => \spi|Equal1~9_combout\);

-- Location: LCCOMB_X36_Y2_N26
\spi|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|LessThan1~0_combout\ = (\spi|counter1\(31)) # ((!\spi|Equal1~9_combout\ & (\spi|Equal1~4_combout\ & \spi|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter1\(31),
	datab => \spi|Equal1~9_combout\,
	datac => \spi|Equal1~4_combout\,
	datad => \spi|Equal1~8_combout\,
	combout => \spi|LessThan1~0_combout\);

-- Location: LCCOMB_X36_Y2_N18
\spi|MOSI~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|MOSI~0_combout\ = (!\spi|counter1\(2) & !\spi|counter1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|counter1\(2),
	datad => \spi|counter1\(1),
	combout => \spi|MOSI~0_combout\);

-- Location: LCCOMB_X36_Y2_N28
\spi|MOSI~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|MOSI~1_combout\ = (\spi|LessThan1~0_combout\ & ((\rst~input_o\ & ((\spi|MOSI~q\))) # (!\rst~input_o\ & (\spi|MOSI~0_combout\)))) # (!\spi|LessThan1~0_combout\ & (((\spi|MOSI~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan1~0_combout\,
	datab => \spi|MOSI~0_combout\,
	datac => \spi|MOSI~q\,
	datad => \rst~input_o\,
	combout => \spi|MOSI~1_combout\);

-- Location: FF_X36_Y2_N29
\spi|MOSI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	d => \spi|MOSI~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|MOSI~q\);

-- Location: FF_X28_Y33_N7
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

-- Location: LCCOMB_X28_Y33_N0
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

-- Location: FF_X28_Y33_N1
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

-- Location: LCCOMB_X28_Y33_N2
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

-- Location: FF_X28_Y33_N3
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

-- Location: LCCOMB_X28_Y33_N4
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

-- Location: FF_X28_Y33_N5
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

-- Location: LCCOMB_X28_Y33_N6
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

-- Location: FF_X28_Y32_N29
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

-- Location: LCCOMB_X28_Y33_N8
\lcd|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~8_combout\ = (\lcd|div_clk_new\(4) & (\lcd|Add1~7\ $ (GND))) # (!\lcd|div_clk_new\(4) & (!\lcd|Add1~7\ & VCC))
-- \lcd|Add1~9\ = CARRY((\lcd|div_clk_new\(4) & !\lcd|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(4),
	datad => VCC,
	cin => \lcd|Add1~7\,
	combout => \lcd|Add1~8_combout\,
	cout => \lcd|Add1~9\);

-- Location: LCCOMB_X28_Y33_N10
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

-- Location: FF_X28_Y33_N11
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

-- Location: LCCOMB_X28_Y33_N12
\lcd|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~12_combout\ = (\lcd|div_clk_new\(6) & (\lcd|Add1~11\ $ (GND))) # (!\lcd|div_clk_new\(6) & (!\lcd|Add1~11\ & VCC))
-- \lcd|Add1~13\ = CARRY((\lcd|div_clk_new\(6) & !\lcd|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(6),
	datad => VCC,
	cin => \lcd|Add1~11\,
	combout => \lcd|Add1~12_combout\,
	cout => \lcd|Add1~13\);

-- Location: LCCOMB_X27_Y32_N16
\lcd|div_clk_new~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk_new~1_combout\ = (\lcd|Add1~12_combout\ & !\lcd|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|Add1~12_combout\,
	datad => \lcd|Equal3~4_combout\,
	combout => \lcd|div_clk_new~1_combout\);

-- Location: FF_X27_Y32_N17
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

-- Location: LCCOMB_X28_Y33_N14
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

-- Location: FF_X28_Y33_N15
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

-- Location: LCCOMB_X28_Y33_N16
\lcd|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~16_combout\ = (\lcd|div_clk_new\(8) & (\lcd|Add1~15\ $ (GND))) # (!\lcd|div_clk_new\(8) & (!\lcd|Add1~15\ & VCC))
-- \lcd|Add1~17\ = CARRY((\lcd|div_clk_new\(8) & !\lcd|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk_new\(8),
	datad => VCC,
	cin => \lcd|Add1~15\,
	combout => \lcd|Add1~16_combout\,
	cout => \lcd|Add1~17\);

-- Location: LCCOMB_X27_Y32_N0
\lcd|div_clk_new~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk_new~0_combout\ = (\lcd|Add1~16_combout\ & !\lcd|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~16_combout\,
	datad => \lcd|Equal3~4_combout\,
	combout => \lcd|div_clk_new~0_combout\);

-- Location: FF_X27_Y32_N1
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

-- Location: LCCOMB_X28_Y33_N18
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

-- Location: LCCOMB_X27_Y32_N22
\lcd|div_clk_new~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk_new~4_combout\ = (\lcd|Add1~18_combout\ & !\lcd|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|Add1~18_combout\,
	datad => \lcd|Equal3~4_combout\,
	combout => \lcd|div_clk_new~4_combout\);

-- Location: FF_X27_Y32_N23
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

-- Location: LCCOMB_X28_Y33_N20
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

-- Location: FF_X28_Y33_N21
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

-- Location: LCCOMB_X28_Y33_N22
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

-- Location: FF_X28_Y33_N23
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

-- Location: LCCOMB_X28_Y33_N24
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

-- Location: FF_X28_Y33_N25
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

-- Location: LCCOMB_X28_Y33_N26
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

-- Location: FF_X28_Y33_N27
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

-- Location: LCCOMB_X28_Y33_N28
\lcd|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~28_combout\ = (\lcd|div_clk_new\(14) & (\lcd|Add1~27\ $ (GND))) # (!\lcd|div_clk_new\(14) & (!\lcd|Add1~27\ & VCC))
-- \lcd|Add1~29\ = CARRY((\lcd|div_clk_new\(14) & !\lcd|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk_new\(14),
	datad => VCC,
	cin => \lcd|Add1~27\,
	combout => \lcd|Add1~28_combout\,
	cout => \lcd|Add1~29\);

-- Location: LCCOMB_X26_Y32_N0
\lcd|div_clk_new~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk_new~3_combout\ = (\lcd|Add1~28_combout\ & !\lcd|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|Add1~28_combout\,
	datad => \lcd|Equal3~4_combout\,
	combout => \lcd|div_clk_new~3_combout\);

-- Location: FF_X26_Y32_N1
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

-- Location: LCCOMB_X28_Y33_N30
\lcd|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add1~30_combout\ = (\lcd|div_clk_new\(15) & (!\lcd|Add1~29\)) # (!\lcd|div_clk_new\(15) & ((\lcd|Add1~29\) # (GND)))
-- \lcd|Add1~31\ = CARRY((!\lcd|Add1~29\) # (!\lcd|div_clk_new\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk_new\(15),
	datad => VCC,
	cin => \lcd|Add1~29\,
	combout => \lcd|Add1~30_combout\,
	cout => \lcd|Add1~31\);

-- Location: LCCOMB_X27_Y32_N30
\lcd|div_clk_new~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk_new~5_combout\ = (\lcd|Add1~30_combout\ & !\lcd|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~30_combout\,
	datad => \lcd|Equal3~4_combout\,
	combout => \lcd|div_clk_new~5_combout\);

-- Location: FF_X27_Y32_N31
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

-- Location: LCCOMB_X28_Y32_N0
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

-- Location: FF_X28_Y32_N1
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

-- Location: LCCOMB_X28_Y32_N2
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

-- Location: FF_X28_Y32_N3
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

-- Location: LCCOMB_X28_Y32_N4
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

-- Location: FF_X28_Y32_N5
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

-- Location: LCCOMB_X28_Y32_N6
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

-- Location: FF_X28_Y32_N7
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

-- Location: LCCOMB_X28_Y32_N8
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

-- Location: FF_X28_Y32_N9
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

-- Location: LCCOMB_X28_Y32_N10
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

-- Location: FF_X28_Y32_N11
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

-- Location: LCCOMB_X28_Y32_N12
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

-- Location: FF_X28_Y32_N13
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

-- Location: LCCOMB_X28_Y32_N14
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

-- Location: FF_X28_Y32_N15
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

-- Location: LCCOMB_X28_Y32_N16
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

-- Location: FF_X28_Y32_N17
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

-- Location: LCCOMB_X28_Y32_N18
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

-- Location: FF_X28_Y32_N19
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

-- Location: LCCOMB_X28_Y32_N20
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

-- Location: FF_X28_Y32_N21
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

-- Location: LCCOMB_X28_Y32_N22
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

-- Location: FF_X28_Y32_N23
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

-- Location: LCCOMB_X28_Y32_N24
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

-- Location: FF_X28_Y32_N25
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

-- Location: LCCOMB_X28_Y32_N26
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

-- Location: FF_X28_Y32_N27
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

-- Location: LCCOMB_X28_Y32_N28
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

-- Location: FF_X28_Y32_N31
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

-- Location: LCCOMB_X28_Y32_N30
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

-- Location: LCCOMB_X27_Y32_N10
\lcd|Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal2~5_combout\ = (!\lcd|Add1~52_combout\ & (!\lcd|Add1~50_combout\ & (!\lcd|Add1~48_combout\ & !\lcd|Add1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~52_combout\,
	datab => \lcd|Add1~50_combout\,
	datac => \lcd|Add1~48_combout\,
	datad => \lcd|Add1~54_combout\,
	combout => \lcd|Equal2~5_combout\);

-- Location: LCCOMB_X27_Y32_N14
\lcd|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal3~3_combout\ = (!\lcd|Add1~58_combout\ & \lcd|Equal2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|Add1~58_combout\,
	datad => \lcd|Equal2~5_combout\,
	combout => \lcd|Equal3~3_combout\);

-- Location: LCCOMB_X27_Y33_N30
\lcd|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal3~0_combout\ = (!\lcd|Add1~6_combout\ & (\lcd|Add1~8_combout\ & (!\lcd|Add1~10_combout\ & \lcd|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~6_combout\,
	datab => \lcd|Add1~8_combout\,
	datac => \lcd|Add1~10_combout\,
	datad => \lcd|Add1~12_combout\,
	combout => \lcd|Equal3~0_combout\);

-- Location: LCCOMB_X27_Y32_N4
\lcd|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal3~1_combout\ = (!\lcd|Add1~14_combout\ & (\lcd|Add1~18_combout\ & (\lcd|Equal3~0_combout\ & !\lcd|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~14_combout\,
	datab => \lcd|Add1~18_combout\,
	datac => \lcd|Equal3~0_combout\,
	datad => \lcd|Add1~26_combout\,
	combout => \lcd|Equal3~1_combout\);

-- Location: LCCOMB_X27_Y33_N4
\lcd|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal2~0_combout\ = (!\lcd|Add1~4_combout\ & (!\lcd|Add1~2_combout\ & (!\lcd|Add1~0_combout\ & \lcd|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~4_combout\,
	datab => \lcd|Add1~2_combout\,
	datac => \lcd|Add1~0_combout\,
	datad => \lcd|Add1~16_combout\,
	combout => \lcd|Equal2~0_combout\);

-- Location: LCCOMB_X27_Y32_N8
\lcd|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal2~2_combout\ = (!\lcd|Add1~36_combout\ & (!\lcd|Add1~32_combout\ & (!\lcd|Add1~34_combout\ & !\lcd|Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~36_combout\,
	datab => \lcd|Add1~32_combout\,
	datac => \lcd|Add1~34_combout\,
	datad => \lcd|Add1~38_combout\,
	combout => \lcd|Equal2~2_combout\);

-- Location: LCCOMB_X27_Y32_N26
\lcd|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal2~1_combout\ = (\lcd|Add1~28_combout\ & (!\lcd|Add1~20_combout\ & (!\lcd|Add1~22_combout\ & !\lcd|Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~28_combout\,
	datab => \lcd|Add1~20_combout\,
	datac => \lcd|Add1~22_combout\,
	datad => \lcd|Add1~24_combout\,
	combout => \lcd|Equal2~1_combout\);

-- Location: LCCOMB_X27_Y32_N20
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

-- Location: LCCOMB_X27_Y32_N18
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

-- Location: LCCOMB_X27_Y32_N28
\lcd|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal3~2_combout\ = (\lcd|Add1~30_combout\ & (!\lcd|Add1~56_combout\ & (\lcd|Equal3~1_combout\ & \lcd|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~30_combout\,
	datab => \lcd|Add1~56_combout\,
	datac => \lcd|Equal3~1_combout\,
	datad => \lcd|Equal2~4_combout\,
	combout => \lcd|Equal3~2_combout\);

-- Location: LCCOMB_X27_Y32_N24
\lcd|Equal3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal3~4_combout\ = (!\lcd|Add1~60_combout\ & (!\lcd|Add1~62_combout\ & (\lcd|Equal3~3_combout\ & \lcd|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~60_combout\,
	datab => \lcd|Add1~62_combout\,
	datac => \lcd|Equal3~3_combout\,
	datad => \lcd|Equal3~2_combout\,
	combout => \lcd|Equal3~4_combout\);

-- Location: LCCOMB_X27_Y32_N12
\lcd|div_clk_new~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk_new~2_combout\ = (\lcd|Add1~8_combout\ & !\lcd|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|Add1~8_combout\,
	datad => \lcd|Equal3~4_combout\,
	combout => \lcd|div_clk_new~2_combout\);

-- Location: FF_X27_Y32_N13
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

-- Location: LCCOMB_X27_Y33_N0
\lcd|Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal2~7_combout\ = (\lcd|Add1~6_combout\ & (!\lcd|Add1~8_combout\ & (\lcd|Add1~10_combout\ & !\lcd|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~6_combout\,
	datab => \lcd|Add1~8_combout\,
	datac => \lcd|Add1~10_combout\,
	datad => \lcd|Add1~12_combout\,
	combout => \lcd|Equal2~7_combout\);

-- Location: LCCOMB_X27_Y33_N18
\lcd|clk_slow~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|clk_slow~0_combout\ = (!\lcd|Add1~18_combout\ & (\lcd|Add1~14_combout\ & (!\lcd|Add1~30_combout\ & \lcd|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~18_combout\,
	datab => \lcd|Add1~14_combout\,
	datac => \lcd|Add1~30_combout\,
	datad => \lcd|Add1~26_combout\,
	combout => \lcd|clk_slow~0_combout\);

-- Location: LCCOMB_X26_Y32_N18
\lcd|Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal2~6_combout\ = (!\lcd|Add1~56_combout\ & (!\lcd|Add1~58_combout\ & (!\lcd|Add1~62_combout\ & !\lcd|Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add1~56_combout\,
	datab => \lcd|Add1~58_combout\,
	datac => \lcd|Add1~62_combout\,
	datad => \lcd|Add1~60_combout\,
	combout => \lcd|Equal2~6_combout\);

-- Location: LCCOMB_X26_Y32_N16
\lcd|clk_slow~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|clk_slow~1_combout\ = (\lcd|Equal2~7_combout\ & (\lcd|clk_slow~0_combout\ & (\lcd|Equal2~5_combout\ & \lcd|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal2~7_combout\,
	datab => \lcd|clk_slow~0_combout\,
	datac => \lcd|Equal2~5_combout\,
	datad => \lcd|Equal2~6_combout\,
	combout => \lcd|clk_slow~1_combout\);

-- Location: LCCOMB_X27_Y32_N6
\lcd|clk_slow~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|clk_slow~2_combout\ = (\lcd|clk_slow~1_combout\ & ((\lcd|Equal2~4_combout\) # ((\lcd|clk_slow~q\ & !\lcd|Equal3~4_combout\)))) # (!\lcd|clk_slow~1_combout\ & (((\lcd|clk_slow~q\ & !\lcd|Equal3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|clk_slow~1_combout\,
	datab => \lcd|Equal2~4_combout\,
	datac => \lcd|clk_slow~q\,
	datad => \lcd|Equal3~4_combout\,
	combout => \lcd|clk_slow~2_combout\);

-- Location: LCCOMB_X27_Y32_N2
\lcd|clk_slow~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|clk_slow~feeder_combout\ = \lcd|clk_slow~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd|clk_slow~2_combout\,
	combout => \lcd|clk_slow~feeder_combout\);

-- Location: FF_X27_Y32_N3
\lcd|clk_slow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \lcd|clk_slow~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|clk_slow~q\);

-- Location: CLKCTRL_G11
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

-- Location: LCCOMB_X42_Y6_N20
\lcd|lcd_instance|state~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~29_combout\ = (\lcd|lcd_instance|state.S2~q\) # (\lcd_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S2~q\,
	datad => \lcd_rst~input_o\,
	combout => \lcd|lcd_instance|state~29_combout\);

-- Location: LCCOMB_X42_Y6_N30
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

-- Location: FF_X42_Y6_N31
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

-- Location: LCCOMB_X42_Y5_N12
\lcd|lcd_instance|state~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~26_combout\ = (!\lcd|lcd_instance|state.S0~q\ & (!\lcd_rst~input_o\ & \lcd|lcd_instance|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S0~q\,
	datab => \lcd_rst~input_o\,
	datad => \lcd|lcd_instance|LessThan0~0_combout\,
	combout => \lcd|lcd_instance|state~26_combout\);

-- Location: FF_X42_Y5_N13
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

-- Location: LCCOMB_X42_Y6_N8
\lcd|lcd_instance|state~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~31_combout\ = (!\lcd_rst~input_o\ & \lcd|lcd_instance|state.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_rst~input_o\,
	datad => \lcd|lcd_instance|state.S1~q\,
	combout => \lcd|lcd_instance|state~31_combout\);

-- Location: FF_X42_Y6_N9
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

-- Location: LCCOMB_X42_Y6_N24
\lcd|lcd_instance|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector23~0_combout\ = \lcd|lcd_instance|count_cmd\(0) $ (\lcd|lcd_instance|state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|lcd_instance|count_cmd\(0),
	datad => \lcd|lcd_instance|state.S2~q\,
	combout => \lcd|lcd_instance|Selector23~0_combout\);

-- Location: FF_X42_Y6_N25
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

-- Location: LCCOMB_X41_Y6_N4
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

-- Location: FF_X41_Y6_N5
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

-- Location: LCCOMB_X41_Y6_N30
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

-- Location: FF_X41_Y6_N31
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

-- Location: LCCOMB_X41_Y6_N20
\lcd|lcd_instance|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|LessThan0~0_combout\ = ((!\lcd|lcd_instance|count_cmd\(1) & !\lcd|lcd_instance|count_cmd\(0))) # (!\lcd|lcd_instance|count_cmd\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|count_cmd\(2),
	datac => \lcd|lcd_instance|count_cmd\(1),
	datad => \lcd|lcd_instance|count_cmd\(0),
	combout => \lcd|lcd_instance|LessThan0~0_combout\);

-- Location: LCCOMB_X42_Y6_N4
\lcd|lcd_instance|state~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~33_combout\ = (\lcd|lcd_instance|state.S4~q\ & !\lcd_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S4~q\,
	datad => \lcd_rst~input_o\,
	combout => \lcd|lcd_instance|state~33_combout\);

-- Location: FF_X42_Y6_N5
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

-- Location: LCCOMB_X42_Y6_N0
\lcd|lcd_instance|state~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~34_combout\ = (\lcd|lcd_instance|state.S5~q\ & !\lcd_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|lcd_instance|state.S5~q\,
	datad => \lcd_rst~input_o\,
	combout => \lcd|lcd_instance|state~34_combout\);

-- Location: FF_X42_Y6_N1
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

-- Location: LCCOMB_X42_Y6_N26
\lcd|lcd_instance|state~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~28_combout\ = (!\lcd_rst~input_o\ & \lcd|lcd_instance|state.S6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_rst~input_o\,
	datad => \lcd|lcd_instance|state.S6~q\,
	combout => \lcd|lcd_instance|state~28_combout\);

-- Location: LCCOMB_X42_Y6_N18
\lcd|lcd_instance|state.S7~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state.S7~feeder_combout\ = \lcd|lcd_instance|state~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|lcd_instance|state~28_combout\,
	combout => \lcd|lcd_instance|state.S7~feeder_combout\);

-- Location: FF_X42_Y6_N19
\lcd|lcd_instance|state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	d => \lcd|lcd_instance|state.S7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|state.S7~q\);

-- Location: LCCOMB_X42_Y6_N2
\lcd|lcd_instance|state~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~35_combout\ = (\lcd|lcd_instance|state.S7~q\ & !\lcd_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|lcd_instance|state.S7~q\,
	datad => \lcd_rst~input_o\,
	combout => \lcd|lcd_instance|state~35_combout\);

-- Location: FF_X42_Y6_N3
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

-- Location: LCCOMB_X42_Y5_N2
\lcd|lcd_instance|state~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~30_combout\ = (\lcd|lcd_instance|state.S8~q\ & !\lcd_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|lcd_instance|state.S8~q\,
	datad => \lcd_rst~input_o\,
	combout => \lcd|lcd_instance|state~30_combout\);

-- Location: FF_X42_Y5_N3
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

-- Location: LCCOMB_X42_Y6_N10
\lcd|lcd_instance|state~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~32_combout\ = (!\lcd_rst~input_o\ & ((\lcd|lcd_instance|state.S9~q\) # ((!\lcd|lcd_instance|LessThan0~0_combout\ & !\lcd|lcd_instance|state.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_rst~input_o\,
	datab => \lcd|lcd_instance|LessThan0~0_combout\,
	datac => \lcd|lcd_instance|state.S0~q\,
	datad => \lcd|lcd_instance|state.S9~q\,
	combout => \lcd|lcd_instance|state~32_combout\);

-- Location: FF_X42_Y6_N11
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

-- Location: LCCOMB_X42_Y6_N12
\lcd|lcd_instance|state~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|state~27_combout\ = (\lcd|lcd_instance|state.S3~q\ & !\lcd_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S3~q\,
	datad => \lcd_rst~input_o\,
	combout => \lcd|lcd_instance|state~27_combout\);

-- Location: FF_X42_Y6_N13
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

-- Location: LCCOMB_X42_Y6_N16
\lcd|lcd_instance|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector10~0_combout\ = (\lcd|lcd_instance|state.S4~q\) # ((\lcd|lcd_instance|state.S7~q\) # (\lcd|lcd_instance|state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S4~q\,
	datab => \lcd|lcd_instance|state.S7~q\,
	datad => \lcd|lcd_instance|state.S1~q\,
	combout => \lcd|lcd_instance|Selector10~0_combout\);

-- Location: LCCOMB_X42_Y5_N0
\lcd|lcd_instance|lcd[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|lcd[1]~0_combout\ = (!\lcd|lcd_instance|state.S9~q\ & ((\lcd|lcd_instance|state.S0~q\) # (\lcd|lcd_instance|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S0~q\,
	datab => \lcd|lcd_instance|state.S9~q\,
	datad => \lcd|lcd_instance|LessThan0~0_combout\,
	combout => \lcd|lcd_instance|lcd[1]~0_combout\);

-- Location: LCCOMB_X42_Y6_N22
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

-- Location: FF_X42_Y6_N23
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

-- Location: LCCOMB_X42_Y6_N14
\lcd|lcd_instance|Selector8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector8~2_combout\ = (!\lcd|lcd_instance|state.S3~q\ & (!\lcd|lcd_instance|state.S5~q\ & !\lcd|lcd_instance|state.S4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S3~q\,
	datac => \lcd|lcd_instance|state.S5~q\,
	datad => \lcd|lcd_instance|state.S4~q\,
	combout => \lcd|lcd_instance|Selector8~2_combout\);

-- Location: LCCOMB_X42_Y5_N28
\lcd|lcd_instance|Selector8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector8~3_combout\ = (\lcd|lcd_instance|state.S0~q\ & (((\lcd|lcd_instance|lcd_rs~q\)) # (!\lcd|lcd_instance|state.S9~q\))) # (!\lcd|lcd_instance|state.S0~q\ & (((\lcd|lcd_instance|lcd_rs~q\ & 
-- !\lcd|lcd_instance|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S0~q\,
	datab => \lcd|lcd_instance|state.S9~q\,
	datac => \lcd|lcd_instance|lcd_rs~q\,
	datad => \lcd|lcd_instance|LessThan0~0_combout\,
	combout => \lcd|lcd_instance|Selector8~3_combout\);

-- Location: LCCOMB_X42_Y5_N4
\lcd|lcd_instance|Selector8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector8~4_combout\ = (\lcd|lcd_instance|Selector8~2_combout\ & (!\lcd|lcd_instance|state.S2~q\ & (!\lcd|lcd_instance|state.S1~q\ & \lcd|lcd_instance|Selector8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|Selector8~2_combout\,
	datab => \lcd|lcd_instance|state.S2~q\,
	datac => \lcd|lcd_instance|state.S1~q\,
	datad => \lcd|lcd_instance|Selector8~3_combout\,
	combout => \lcd|lcd_instance|Selector8~4_combout\);

-- Location: FF_X42_Y5_N5
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

-- Location: LCCOMB_X37_Y6_N26
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

-- Location: LCCOMB_X37_Y6_N6
\lcd|covid_det_instance|bit_index[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|bit_index[1]~feeder_combout\ = \lcd|covid_det_instance|bit_index[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|covid_det_instance|bit_index[1]~1_combout\,
	combout => \lcd|covid_det_instance|bit_index[1]~feeder_combout\);

-- Location: FF_X37_Y6_N7
\lcd|covid_det_instance|bit_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \lcd|covid_det_instance|bit_index[1]~feeder_combout\,
	clrn => \ALT_INV_lcd_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|covid_det_instance|bit_index\(1));

-- Location: LCCOMB_X37_Y6_N0
\lcd|covid_det_instance|bit_index[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|bit_index[0]~3_combout\ = (\lcd|covid_det_instance|bit_index\(0) & (((\lcd|covid_det_instance|bit_index\(3))))) # (!\lcd|covid_det_instance|bit_index\(0) & (((!\lcd|covid_det_instance|bit_index\(2) & 
-- !\lcd|covid_det_instance|bit_index\(1))) # (!\lcd|covid_det_instance|bit_index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(0),
	datab => \lcd|covid_det_instance|bit_index\(2),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(1),
	combout => \lcd|covid_det_instance|bit_index[0]~3_combout\);

-- Location: FF_X36_Y6_N27
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

-- Location: LCCOMB_X37_Y6_N8
\lcd|covid_det_instance|bit_index[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|bit_index[3]~2_combout\ = (\lcd|covid_det_instance|bit_index\(3)) # ((\lcd|covid_det_instance|bit_index\(0) & (\lcd|covid_det_instance|bit_index\(1) & \lcd|covid_det_instance|bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(3),
	datab => \lcd|covid_det_instance|bit_index\(0),
	datac => \lcd|covid_det_instance|bit_index\(1),
	datad => \lcd|covid_det_instance|bit_index\(2),
	combout => \lcd|covid_det_instance|bit_index[3]~2_combout\);

-- Location: FF_X37_Y6_N27
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

-- Location: LCCOMB_X37_Y6_N2
\lcd|covid_det_instance|bit_index[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|bit_index[2]~0_combout\ = \lcd|covid_det_instance|bit_index\(2) $ (((!\lcd|covid_det_instance|bit_index\(3) & (\lcd|covid_det_instance|bit_index\(0) & \lcd|covid_det_instance|bit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(3),
	datab => \lcd|covid_det_instance|bit_index\(0),
	datac => \lcd|covid_det_instance|bit_index\(1),
	datad => \lcd|covid_det_instance|bit_index\(2),
	combout => \lcd|covid_det_instance|bit_index[2]~0_combout\);

-- Location: LCCOMB_X37_Y6_N20
\lcd|covid_det_instance|bit_index[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|bit_index[2]~feeder_combout\ = \lcd|covid_det_instance|bit_index[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|covid_det_instance|bit_index[2]~0_combout\,
	combout => \lcd|covid_det_instance|bit_index[2]~feeder_combout\);

-- Location: FF_X37_Y6_N21
\lcd|covid_det_instance|bit_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \lcd|covid_det_instance|bit_index[2]~feeder_combout\,
	clrn => \ALT_INV_lcd_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|covid_det_instance|bit_index\(2));

-- Location: IOIBUF_X60_Y2_N1
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

-- Location: LCCOMB_X36_Y4_N28
\spi|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Decoder0~3_combout\ = (!\spi|counter2\(0) & (\spi|counter2\(2) & (!\spi|counter2\(3) & !\spi|counter2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(0),
	datab => \spi|counter2\(2),
	datac => \spi|counter2\(3),
	datad => \spi|counter2~1_combout\,
	combout => \spi|Decoder0~3_combout\);

-- Location: LCCOMB_X36_Y4_N4
\spi|temp_data[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|temp_data[5]~4_combout\ = (\spi|counter2\(1) & (((\spi|temp_data\(5))))) # (!\spi|counter2\(1) & ((\spi|Decoder0~3_combout\ & (\miso~input_o\)) # (!\spi|Decoder0~3_combout\ & ((\spi|temp_data\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \spi|counter2\(1),
	datac => \spi|temp_data\(5),
	datad => \spi|Decoder0~3_combout\,
	combout => \spi|temp_data[5]~4_combout\);

-- Location: FF_X36_Y4_N5
\spi|temp_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|temp_data[5]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp_data\(5));

-- Location: FF_X36_Y6_N3
\spi|reg_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	asdata => \spi|temp_data\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \spi|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg_a\(5));

-- Location: LCCOMB_X36_Y4_N6
\spi|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Decoder0~2_combout\ = (\spi|counter2\(0) & (\spi|counter2\(2) & (!\spi|counter2\(3) & !\spi|counter2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(0),
	datab => \spi|counter2\(2),
	datac => \spi|counter2\(3),
	datad => \spi|counter2~1_combout\,
	combout => \spi|Decoder0~2_combout\);

-- Location: LCCOMB_X36_Y4_N14
\spi|temp_data[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|temp_data[4]~5_combout\ = (\spi|counter2\(1) & (((\spi|temp_data\(4))))) # (!\spi|counter2\(1) & ((\spi|Decoder0~2_combout\ & (\miso~input_o\)) # (!\spi|Decoder0~2_combout\ & ((\spi|temp_data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \spi|counter2\(1),
	datac => \spi|temp_data\(4),
	datad => \spi|Decoder0~2_combout\,
	combout => \spi|temp_data[4]~5_combout\);

-- Location: FF_X36_Y4_N15
\spi|temp_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|temp_data[4]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp_data\(4));

-- Location: FF_X36_Y6_N19
\spi|reg_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	asdata => \spi|temp_data\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \spi|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg_a\(4));

-- Location: LCCOMB_X36_Y4_N24
\spi|temp_data[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|temp_data[6]~7_combout\ = (\spi|counter2\(0) & (\spi|counter2\(1) & (!\spi|counter2\(3) & !\spi|counter2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(0),
	datab => \spi|counter2\(1),
	datac => \spi|counter2\(3),
	datad => \spi|counter2\(2),
	combout => \spi|temp_data[6]~7_combout\);

-- Location: LCCOMB_X36_Y4_N20
\spi|temp_data[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|temp_data[6]~8_combout\ = (\spi|temp_data[6]~7_combout\ & ((\spi|counter2~1_combout\ & ((\spi|temp_data\(6)))) # (!\spi|counter2~1_combout\ & (\miso~input_o\)))) # (!\spi|temp_data[6]~7_combout\ & (((\spi|temp_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \spi|temp_data[6]~7_combout\,
	datac => \spi|temp_data\(6),
	datad => \spi|counter2~1_combout\,
	combout => \spi|temp_data[6]~8_combout\);

-- Location: FF_X36_Y4_N21
\spi|temp_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|temp_data[6]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp_data\(6));

-- Location: FF_X36_Y6_N21
\spi|reg_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	asdata => \spi|temp_data\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \spi|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg_a\(6));

-- Location: LCCOMB_X36_Y4_N26
\spi|process_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|process_1~2_combout\ = (!\spi|counter2\(2) & (!\spi|counter2\(0) & \spi|counter2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter2\(2),
	datac => \spi|counter2\(0),
	datad => \spi|counter2\(1),
	combout => \spi|process_1~2_combout\);

-- Location: LCCOMB_X36_Y3_N16
\spi|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Decoder0~4_combout\ = (!\spi|counter2\(3) & !\spi|counter2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter2\(3),
	datad => \spi|counter2~1_combout\,
	combout => \spi|Decoder0~4_combout\);

-- Location: LCCOMB_X35_Y3_N24
\spi|temp_data[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|temp_data[7]~6_combout\ = (\spi|process_1~2_combout\ & ((\spi|Decoder0~4_combout\ & (\miso~input_o\)) # (!\spi|Decoder0~4_combout\ & ((\spi|temp_data\(7)))))) # (!\spi|process_1~2_combout\ & (((\spi|temp_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \spi|process_1~2_combout\,
	datac => \spi|temp_data\(7),
	datad => \spi|Decoder0~4_combout\,
	combout => \spi|temp_data[7]~6_combout\);

-- Location: FF_X35_Y3_N25
\spi|temp_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|temp_data[7]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp_data\(7));

-- Location: FF_X36_Y6_N1
\spi|reg_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	asdata => \spi|temp_data\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \spi|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg_a\(7));

-- Location: LCCOMB_X36_Y6_N28
\lcd|covid_det_instance|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Mux0~3_combout\ = (\lcd|covid_det_instance|bit_index\(0) & (((\spi|reg_a\(7)) # (!\lcd|covid_det_instance|bit_index\(1))))) # (!\lcd|covid_det_instance|bit_index\(0) & (\spi|reg_a\(6) & ((\lcd|covid_det_instance|bit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(0),
	datab => \spi|reg_a\(6),
	datac => \spi|reg_a\(7),
	datad => \lcd|covid_det_instance|bit_index\(1),
	combout => \lcd|covid_det_instance|Mux0~3_combout\);

-- Location: LCCOMB_X36_Y6_N18
\lcd|covid_det_instance|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Mux0~4_combout\ = (\lcd|covid_det_instance|bit_index\(1) & (((\lcd|covid_det_instance|Mux0~3_combout\)))) # (!\lcd|covid_det_instance|bit_index\(1) & ((\lcd|covid_det_instance|Mux0~3_combout\ & (\spi|reg_a\(5))) # 
-- (!\lcd|covid_det_instance|Mux0~3_combout\ & ((\spi|reg_a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(1),
	datab => \spi|reg_a\(5),
	datac => \spi|reg_a\(4),
	datad => \lcd|covid_det_instance|Mux0~3_combout\,
	combout => \lcd|covid_det_instance|Mux0~4_combout\);

-- Location: LCCOMB_X36_Y4_N10
\spi|temp_data[8]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|temp_data[8]~10_combout\ = ((\spi|counter2\(2)) # ((\spi|counter2\(3)) # (\spi|counter2~1_combout\))) # (!\spi|counter2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(0),
	datab => \spi|counter2\(2),
	datac => \spi|counter2\(3),
	datad => \spi|counter2~1_combout\,
	combout => \spi|temp_data[8]~10_combout\);

-- Location: LCCOMB_X36_Y4_N30
\spi|temp_data[8]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|temp_data[8]~11_combout\ = (\spi|counter2\(1) & (((\spi|temp_data\(8))))) # (!\spi|counter2\(1) & ((\spi|temp_data[8]~10_combout\ & ((\spi|temp_data\(8)))) # (!\spi|temp_data[8]~10_combout\ & (\miso~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \spi|counter2\(1),
	datac => \spi|temp_data\(8),
	datad => \spi|temp_data[8]~10_combout\,
	combout => \spi|temp_data[8]~11_combout\);

-- Location: FF_X36_Y4_N31
\spi|temp_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|temp_data[8]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp_data\(8));

-- Location: FF_X36_Y6_N11
\spi|reg_a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	asdata => \spi|temp_data\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \spi|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg_a\(8));

-- Location: LCCOMB_X36_Y4_N18
\spi|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Decoder0~5_combout\ = (!\spi|counter2\(2) & (!\spi|counter2\(0) & !\spi|counter2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|counter2\(2),
	datac => \spi|counter2\(0),
	datad => \spi|counter2\(1),
	combout => \spi|Decoder0~5_combout\);

-- Location: LCCOMB_X35_Y3_N26
\spi|temp_data[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|temp_data[9]~9_combout\ = (\spi|Decoder0~5_combout\ & ((\spi|Decoder0~4_combout\ & (\miso~input_o\)) # (!\spi|Decoder0~4_combout\ & ((\spi|temp_data\(9)))))) # (!\spi|Decoder0~5_combout\ & (((\spi|temp_data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \spi|Decoder0~5_combout\,
	datac => \spi|temp_data\(9),
	datad => \spi|Decoder0~4_combout\,
	combout => \spi|temp_data[9]~9_combout\);

-- Location: FF_X35_Y3_N27
\spi|temp_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|temp_data[9]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp_data\(9));

-- Location: FF_X36_Y3_N17
\spi|reg_a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	asdata => \spi|temp_data\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \spi|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg_a\(9));

-- Location: LCCOMB_X36_Y6_N8
\lcd|covid_det_instance|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Mux0~5_combout\ = (\lcd|covid_det_instance|bit_index\(0) & ((\spi|reg_a\(9)))) # (!\lcd|covid_det_instance|bit_index\(0) & (\spi|reg_a\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(0),
	datab => \spi|reg_a\(8),
	datad => \spi|reg_a\(9),
	combout => \lcd|covid_det_instance|Mux0~5_combout\);

-- Location: LCCOMB_X36_Y6_N22
\lcd|covid_det_instance|Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Mux0~6_combout\ = ((!\lcd|covid_det_instance|bit_index\(2) & \lcd|covid_det_instance|Mux0~5_combout\)) # (!\lcd|covid_det_instance|bit_index\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(2),
	datab => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|Mux0~5_combout\,
	combout => \lcd|covid_det_instance|Mux0~6_combout\);

-- Location: LCCOMB_X36_Y4_N12
\spi|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|Decoder0~6_combout\ = (!\spi|counter2\(1) & (!\spi|counter2\(2) & (\spi|counter2\(3) & !\spi|counter2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|counter2\(1),
	datab => \spi|counter2\(2),
	datac => \spi|counter2\(3),
	datad => \spi|counter2~1_combout\,
	combout => \spi|Decoder0~6_combout\);

-- Location: LCCOMB_X36_Y4_N0
\spi|temp_data[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|temp_data[1]~0_combout\ = (\spi|counter2\(0) & (((\spi|temp_data\(1))))) # (!\spi|counter2\(0) & ((\spi|Decoder0~6_combout\ & (\miso~input_o\)) # (!\spi|Decoder0~6_combout\ & ((\spi|temp_data\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \spi|counter2\(0),
	datac => \spi|temp_data\(1),
	datad => \spi|Decoder0~6_combout\,
	combout => \spi|temp_data[1]~0_combout\);

-- Location: FF_X36_Y4_N1
\spi|temp_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|temp_data[1]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp_data\(1));

-- Location: FF_X36_Y6_N9
\spi|reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	asdata => \spi|temp_data\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \spi|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg_a\(1));

-- Location: LCCOMB_X36_Y4_N22
\spi|temp_data[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|temp_data[0]~1_combout\ = (\spi|counter2\(0) & ((\spi|Decoder0~6_combout\ & (\miso~input_o\)) # (!\spi|Decoder0~6_combout\ & ((\spi|temp_data\(0)))))) # (!\spi|counter2\(0) & (((\spi|temp_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \spi|counter2\(0),
	datac => \spi|temp_data\(0),
	datad => \spi|Decoder0~6_combout\,
	combout => \spi|temp_data[0]~1_combout\);

-- Location: FF_X36_Y4_N23
\spi|temp_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|temp_data[0]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp_data\(0));

-- Location: FF_X36_Y6_N7
\spi|reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	asdata => \spi|temp_data\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \spi|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg_a\(0));

-- Location: LCCOMB_X36_Y6_N6
\lcd|covid_det_instance|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Mux0~0_combout\ = (\lcd|covid_det_instance|bit_index\(0) & (\spi|reg_a\(1))) # (!\lcd|covid_det_instance|bit_index\(0) & ((\spi|reg_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(0),
	datab => \spi|reg_a\(1),
	datac => \spi|reg_a\(0),
	combout => \lcd|covid_det_instance|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y4_N2
\spi|temp_data[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|temp_data[3]~3_combout\ = (\spi|counter2\(1) & ((\spi|Decoder0~3_combout\ & (\miso~input_o\)) # (!\spi|Decoder0~3_combout\ & ((\spi|temp_data\(3)))))) # (!\spi|counter2\(1) & (((\spi|temp_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \spi|counter2\(1),
	datac => \spi|temp_data\(3),
	datad => \spi|Decoder0~3_combout\,
	combout => \spi|temp_data[3]~3_combout\);

-- Location: FF_X36_Y4_N3
\spi|temp_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|temp_data[3]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp_data\(3));

-- Location: FF_X36_Y6_N23
\spi|reg_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	asdata => \spi|temp_data\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \spi|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg_a\(3));

-- Location: LCCOMB_X36_Y4_N16
\spi|temp_data[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi|temp_data[2]~2_combout\ = (\spi|counter2\(1) & ((\spi|Decoder0~2_combout\ & (\miso~input_o\)) # (!\spi|Decoder0~2_combout\ & ((\spi|temp_data\(2)))))) # (!\spi|counter2\(1) & (((\spi|temp_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \miso~input_o\,
	datab => \spi|counter2\(1),
	datac => \spi|temp_data\(2),
	datad => \spi|Decoder0~2_combout\,
	combout => \spi|temp_data[2]~2_combout\);

-- Location: FF_X36_Y4_N17
\spi|temp_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|clk~clkctrl_outclk\,
	d => \spi|temp_data[2]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|temp_data\(2));

-- Location: FF_X36_Y6_N17
\spi|reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi|ALT_INV_clk~clkctrl_outclk\,
	asdata => \spi|temp_data\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \spi|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|reg_a\(2));

-- Location: LCCOMB_X36_Y6_N16
\lcd|covid_det_instance|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Mux0~1_combout\ = (\lcd|covid_det_instance|bit_index\(0) & (\spi|reg_a\(3))) # (!\lcd|covid_det_instance|bit_index\(0) & ((\spi|reg_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|reg_a\(3),
	datac => \spi|reg_a\(2),
	datad => \lcd|covid_det_instance|bit_index\(0),
	combout => \lcd|covid_det_instance|Mux0~1_combout\);

-- Location: LCCOMB_X36_Y6_N14
\lcd|covid_det_instance|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Mux0~2_combout\ = (\lcd|covid_det_instance|bit_index\(3) & (((!\lcd|covid_det_instance|bit_index\(1))))) # (!\lcd|covid_det_instance|bit_index\(3) & ((\lcd|covid_det_instance|bit_index\(1) & 
-- ((\lcd|covid_det_instance|Mux0~1_combout\))) # (!\lcd|covid_det_instance|bit_index\(1) & (\lcd|covid_det_instance|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|Mux0~0_combout\,
	datab => \lcd|covid_det_instance|Mux0~1_combout\,
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(1),
	combout => \lcd|covid_det_instance|Mux0~2_combout\);

-- Location: LCCOMB_X36_Y6_N4
\lcd|covid_det_instance|Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Mux0~7_combout\ = (\lcd|covid_det_instance|Mux0~6_combout\ & ((\lcd|covid_det_instance|bit_index\(2) & (\lcd|covid_det_instance|Mux0~4_combout\)) # (!\lcd|covid_det_instance|bit_index\(2) & 
-- ((\lcd|covid_det_instance|Mux0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(2),
	datab => \lcd|covid_det_instance|Mux0~4_combout\,
	datac => \lcd|covid_det_instance|Mux0~6_combout\,
	datad => \lcd|covid_det_instance|Mux0~2_combout\,
	combout => \lcd|covid_det_instance|Mux0~7_combout\);

-- Location: FF_X28_Y29_N19
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

-- Location: LCCOMB_X28_Y29_N0
\lcd|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~0_combout\ = \lcd|div_clk_new\(0) $ (VCC)
-- \lcd|Add0~1\ = CARRY(\lcd|div_clk_new\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|div_clk_new\(0),
	datad => VCC,
	combout => \lcd|Add0~0_combout\,
	cout => \lcd|Add0~1\);

-- Location: LCCOMB_X28_Y29_N2
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

-- Location: FF_X28_Y29_N7
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

-- Location: LCCOMB_X28_Y29_N4
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

-- Location: FF_X28_Y29_N5
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

-- Location: LCCOMB_X28_Y29_N6
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

-- Location: LCCOMB_X27_Y29_N2
\lcd|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal0~0_combout\ = (!\lcd|Add0~2_combout\ & (!\lcd|Add0~0_combout\ & (!\lcd|Add0~6_combout\ & !\lcd|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~2_combout\,
	datab => \lcd|Add0~0_combout\,
	datac => \lcd|Add0~6_combout\,
	datad => \lcd|Add0~4_combout\,
	combout => \lcd|Equal0~0_combout\);

-- Location: FF_X28_Y29_N27
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

-- Location: LCCOMB_X28_Y29_N18
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

-- Location: LCCOMB_X28_Y29_N20
\lcd|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~20_combout\ = (\lcd|div_clk\(10) & (\lcd|Add0~19\ $ (GND))) # (!\lcd|div_clk\(10) & (!\lcd|Add0~19\ & VCC))
-- \lcd|Add0~21\ = CARRY((\lcd|div_clk\(10) & !\lcd|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk\(10),
	datad => VCC,
	cin => \lcd|Add0~19\,
	combout => \lcd|Add0~20_combout\,
	cout => \lcd|Add0~21\);

-- Location: LCCOMB_X27_Y28_N4
\lcd|div_clk~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk~2_combout\ = (\lcd|Add0~20_combout\ & !\lcd|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|Add0~20_combout\,
	datac => \lcd|Equal1~3_combout\,
	combout => \lcd|div_clk~2_combout\);

-- Location: FF_X27_Y28_N5
\lcd|div_clk[10]\ : dffeas
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
	q => \lcd|div_clk\(10));

-- Location: LCCOMB_X28_Y29_N22
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

-- Location: LCCOMB_X27_Y28_N24
\lcd|div_clk~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk~3_combout\ = (\lcd|Add0~22_combout\ & !\lcd|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~22_combout\,
	datac => \lcd|Equal1~3_combout\,
	combout => \lcd|div_clk~3_combout\);

-- Location: FF_X27_Y28_N25
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

-- Location: LCCOMB_X28_Y29_N24
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

-- Location: FF_X28_Y29_N25
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

-- Location: LCCOMB_X28_Y29_N26
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

-- Location: FF_X28_Y29_N9
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

-- Location: LCCOMB_X28_Y29_N8
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

-- Location: LCCOMB_X27_Y28_N16
\lcd|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal0~1_combout\ = (!\lcd|Add0~26_combout\ & (!\lcd|Add0~8_combout\ & (!\lcd|Add0~24_combout\ & \lcd|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~26_combout\,
	datab => \lcd|Add0~8_combout\,
	datac => \lcd|Add0~24_combout\,
	datad => \lcd|Add0~20_combout\,
	combout => \lcd|Equal0~1_combout\);

-- Location: FF_X28_Y28_N5
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

-- Location: LCCOMB_X28_Y29_N28
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

-- Location: FF_X28_Y29_N29
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

-- Location: LCCOMB_X28_Y29_N30
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

-- Location: FF_X28_Y29_N31
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

-- Location: LCCOMB_X28_Y28_N0
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

-- Location: LCCOMB_X27_Y28_N0
\lcd|div_clk~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk~4_combout\ = (!\lcd|Equal1~3_combout\ & \lcd|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal1~3_combout\,
	datac => \lcd|Add0~32_combout\,
	combout => \lcd|div_clk~4_combout\);

-- Location: FF_X27_Y28_N1
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

-- Location: LCCOMB_X28_Y28_N2
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

-- Location: LCCOMB_X27_Y28_N10
\lcd|div_clk~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk~5_combout\ = (!\lcd|Equal1~3_combout\ & \lcd|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal1~3_combout\,
	datac => \lcd|Add0~34_combout\,
	combout => \lcd|div_clk~5_combout\);

-- Location: FF_X27_Y28_N11
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

-- Location: LCCOMB_X28_Y28_N4
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

-- Location: FF_X28_Y28_N7
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

-- Location: LCCOMB_X28_Y28_N6
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

-- Location: LCCOMB_X27_Y28_N14
\lcd|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal0~2_combout\ = (!\lcd|Add0~36_combout\ & (\lcd|Add0~32_combout\ & (!\lcd|Add0~38_combout\ & !\lcd|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~36_combout\,
	datab => \lcd|Add0~32_combout\,
	datac => \lcd|Add0~38_combout\,
	datad => \lcd|Add0~28_combout\,
	combout => \lcd|Equal0~2_combout\);

-- Location: FF_X28_Y28_N9
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

-- Location: LCCOMB_X28_Y28_N8
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

-- Location: FF_X28_Y28_N11
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

-- Location: LCCOMB_X28_Y28_N10
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

-- Location: FF_X28_Y28_N15
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

-- Location: LCCOMB_X28_Y28_N12
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

-- Location: FF_X28_Y28_N13
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

-- Location: LCCOMB_X28_Y28_N14
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

-- Location: LCCOMB_X27_Y28_N12
\lcd|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal0~3_combout\ = (!\lcd|Add0~40_combout\ & (!\lcd|Add0~42_combout\ & (!\lcd|Add0~46_combout\ & !\lcd|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~40_combout\,
	datab => \lcd|Add0~42_combout\,
	datac => \lcd|Add0~46_combout\,
	datad => \lcd|Add0~44_combout\,
	combout => \lcd|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y28_N26
\lcd|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal0~4_combout\ = (\lcd|Equal0~0_combout\ & (\lcd|Equal0~1_combout\ & (\lcd|Equal0~2_combout\ & \lcd|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal0~0_combout\,
	datab => \lcd|Equal0~1_combout\,
	datac => \lcd|Equal0~2_combout\,
	datad => \lcd|Equal0~3_combout\,
	combout => \lcd|Equal0~4_combout\);

-- Location: FF_X28_Y28_N21
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

-- Location: LCCOMB_X28_Y28_N16
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

-- Location: FF_X28_Y28_N17
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

-- Location: LCCOMB_X28_Y28_N18
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

-- Location: FF_X28_Y28_N19
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

-- Location: LCCOMB_X28_Y28_N20
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

-- Location: FF_X28_Y28_N23
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

-- Location: LCCOMB_X28_Y28_N22
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

-- Location: LCCOMB_X27_Y28_N8
\lcd|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal0~5_combout\ = (!\lcd|Add0~52_combout\ & (!\lcd|Add0~48_combout\ & (!\lcd|Add0~54_combout\ & !\lcd|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~52_combout\,
	datab => \lcd|Add0~48_combout\,
	datac => \lcd|Add0~54_combout\,
	datad => \lcd|Add0~50_combout\,
	combout => \lcd|Equal0~5_combout\);

-- Location: FF_X28_Y29_N11
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

-- Location: LCCOMB_X28_Y29_N10
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

-- Location: FF_X28_Y29_N15
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

-- Location: LCCOMB_X28_Y29_N12
\lcd|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Add0~12_combout\ = (\lcd|div_clk\(6) & (\lcd|Add0~11\ $ (GND))) # (!\lcd|div_clk\(6) & (!\lcd|Add0~11\ & VCC))
-- \lcd|Add0~13\ = CARRY((\lcd|div_clk\(6) & !\lcd|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|div_clk\(6),
	datad => VCC,
	cin => \lcd|Add0~11\,
	combout => \lcd|Add0~12_combout\,
	cout => \lcd|Add0~13\);

-- Location: LCCOMB_X27_Y29_N12
\lcd|div_clk~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk~1_combout\ = (\lcd|Add0~12_combout\ & !\lcd|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|Add0~12_combout\,
	datad => \lcd|Equal1~3_combout\,
	combout => \lcd|div_clk~1_combout\);

-- Location: FF_X27_Y29_N13
\lcd|div_clk[6]\ : dffeas
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
	q => \lcd|div_clk\(6));

-- Location: LCCOMB_X28_Y29_N14
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

-- Location: LCCOMB_X28_Y29_N16
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

-- Location: LCCOMB_X27_Y29_N24
\lcd|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal1~0_combout\ = (!\lcd|Add0~10_combout\ & (!\lcd|Add0~14_combout\ & (\lcd|Add0~12_combout\ & \lcd|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~10_combout\,
	datab => \lcd|Add0~14_combout\,
	datac => \lcd|Add0~12_combout\,
	datad => \lcd|Add0~16_combout\,
	combout => \lcd|Equal1~0_combout\);

-- Location: LCCOMB_X27_Y29_N22
\lcd|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal1~1_combout\ = (!\lcd|Add0~18_combout\ & \lcd|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|Add0~18_combout\,
	datad => \lcd|Add0~22_combout\,
	combout => \lcd|Equal1~1_combout\);

-- Location: LCCOMB_X27_Y29_N28
\lcd|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal1~2_combout\ = (!\lcd|Add0~30_combout\ & (\lcd|Equal1~0_combout\ & (\lcd|Equal1~1_combout\ & \lcd|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~30_combout\,
	datab => \lcd|Equal1~0_combout\,
	datac => \lcd|Equal1~1_combout\,
	datad => \lcd|Add0~34_combout\,
	combout => \lcd|Equal1~2_combout\);

-- Location: FF_X28_Y28_N27
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

-- Location: LCCOMB_X28_Y28_N24
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

-- Location: FF_X28_Y28_N25
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

-- Location: LCCOMB_X28_Y28_N26
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

-- Location: FF_X28_Y28_N31
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

-- Location: LCCOMB_X28_Y28_N28
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

-- Location: FF_X28_Y28_N29
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

-- Location: LCCOMB_X28_Y28_N30
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

-- Location: LCCOMB_X27_Y28_N20
\lcd|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal0~6_combout\ = (!\lcd|Add0~58_combout\ & (!\lcd|Add0~56_combout\ & (!\lcd|Add0~62_combout\ & !\lcd|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~58_combout\,
	datab => \lcd|Add0~56_combout\,
	datac => \lcd|Add0~62_combout\,
	datad => \lcd|Add0~60_combout\,
	combout => \lcd|Equal0~6_combout\);

-- Location: LCCOMB_X27_Y28_N30
\lcd|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal1~3_combout\ = (\lcd|Equal0~4_combout\ & (\lcd|Equal0~5_combout\ & (\lcd|Equal1~2_combout\ & \lcd|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal0~4_combout\,
	datab => \lcd|Equal0~5_combout\,
	datac => \lcd|Equal1~2_combout\,
	datad => \lcd|Equal0~6_combout\,
	combout => \lcd|Equal1~3_combout\);

-- Location: LCCOMB_X27_Y28_N2
\lcd|div_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|div_clk~0_combout\ = (!\lcd|Equal1~3_combout\ & \lcd|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal1~3_combout\,
	datac => \lcd|Add0~16_combout\,
	combout => \lcd|div_clk~0_combout\);

-- Location: FF_X27_Y28_N3
\lcd|div_clk[8]\ : dffeas
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
	q => \lcd|div_clk\(8));

-- Location: LCCOMB_X27_Y29_N30
\lcd|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal0~7_combout\ = (\lcd|Add0~10_combout\ & (!\lcd|Add0~12_combout\ & (\lcd|Add0~14_combout\ & !\lcd|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~10_combout\,
	datab => \lcd|Add0~12_combout\,
	datac => \lcd|Add0~14_combout\,
	datad => \lcd|Add0~16_combout\,
	combout => \lcd|Equal0~7_combout\);

-- Location: LCCOMB_X27_Y28_N6
\lcd|lcd_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_clk~0_combout\ = (\lcd|Equal0~7_combout\ & (!\lcd|Add0~34_combout\ & (\lcd|Equal0~4_combout\ & \lcd|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal0~7_combout\,
	datab => \lcd|Add0~34_combout\,
	datac => \lcd|Equal0~4_combout\,
	datad => \lcd|Equal0~6_combout\,
	combout => \lcd|lcd_clk~0_combout\);

-- Location: LCCOMB_X27_Y28_N18
\lcd|lcd_clk~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_clk~1_combout\ = (!\lcd|Add0~22_combout\ & (\lcd|Add0~30_combout\ & (\lcd|Equal0~5_combout\ & \lcd|lcd_clk~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~22_combout\,
	datab => \lcd|Add0~30_combout\,
	datac => \lcd|Equal0~5_combout\,
	datad => \lcd|lcd_clk~0_combout\,
	combout => \lcd|lcd_clk~1_combout\);

-- Location: LCCOMB_X27_Y28_N28
\lcd|lcd_clk~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_clk~2_combout\ = (\lcd|Add0~18_combout\ & ((\lcd|lcd_clk~1_combout\) # ((\lcd|lcd_clk~q\ & !\lcd|Equal1~3_combout\)))) # (!\lcd|Add0~18_combout\ & (\lcd|lcd_clk~q\ & (!\lcd|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add0~18_combout\,
	datab => \lcd|lcd_clk~q\,
	datac => \lcd|Equal1~3_combout\,
	datad => \lcd|lcd_clk~1_combout\,
	combout => \lcd|lcd_clk~2_combout\);

-- Location: LCCOMB_X27_Y28_N22
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

-- Location: FF_X27_Y28_N23
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

-- Location: CLKCTRL_G10
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

-- Location: LCCOMB_X37_Y6_N28
\lcd|covid_det_instance|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~0_combout\ = (!\lcd|covid_det_instance|bit_index\(0) & (!\lcd|covid_det_instance|bit_index\(1) & (\lcd|covid_det_instance|bit_index\(3) & !\lcd|covid_det_instance|bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(0),
	datab => \lcd|covid_det_instance|bit_index\(1),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(2),
	combout => \lcd|covid_det_instance|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y6_N10
\lcd|covid_det_instance|out_ascii_new2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~0_combout\ = (\lcd|covid_det_instance|Equal0~0_combout\ & ((\lcd|covid_det_instance|Mux0~7_combout\))) # (!\lcd|covid_det_instance|Equal0~0_combout\ & (\lcd|covid_det_instance|out_ascii_new2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|out_ascii_new2~0_combout\,
	datab => \lcd|covid_det_instance|Mux0~7_combout\,
	datad => \lcd|covid_det_instance|Equal0~0_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~0_combout\);

-- Location: LCCOMB_X37_Y6_N16
\lcd|covid_det_instance|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~9_combout\ = (\lcd|covid_det_instance|bit_index\(0) & (!\lcd|covid_det_instance|bit_index\(2) & (!\lcd|covid_det_instance|bit_index\(1) & \lcd|covid_det_instance|bit_index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(0),
	datab => \lcd|covid_det_instance|bit_index\(2),
	datac => \lcd|covid_det_instance|bit_index\(1),
	datad => \lcd|covid_det_instance|bit_index\(3),
	combout => \lcd|covid_det_instance|Equal0~9_combout\);

-- Location: LCCOMB_X36_Y6_N26
\lcd|covid_det_instance|out_ascii_new2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~9_combout\ = (\lcd|covid_det_instance|Equal0~9_combout\ & ((\lcd|covid_det_instance|Mux0~7_combout\))) # (!\lcd|covid_det_instance|Equal0~9_combout\ & (\lcd|covid_det_instance|out_ascii_new2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|out_ascii_new2~9_combout\,
	datab => \lcd|covid_det_instance|Mux0~7_combout\,
	datad => \lcd|covid_det_instance|Equal0~9_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~9_combout\);

-- Location: LCCOMB_X40_Y5_N0
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

-- Location: LCCOMB_X40_Y5_N2
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

-- Location: LCCOMB_X40_Y5_N4
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

-- Location: LCCOMB_X41_Y5_N22
\lcd|write_data[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~10_combout\ = (\lcd|i\(2)) # (!\lcd|Equal4~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(2),
	datac => \lcd|Equal4~9_combout\,
	combout => \lcd|write_data[4]~10_combout\);

-- Location: LCCOMB_X39_Y5_N30
\lcd|Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal12~0_combout\ = (!\lcd|i\(2) & (\lcd|i\(3) & !\lcd|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(2),
	datab => \lcd|i\(3),
	datad => \lcd|i\(1),
	combout => \lcd|Equal12~0_combout\);

-- Location: LCCOMB_X39_Y5_N10
\lcd|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~1_combout\ = (!\lcd|i\(10) & (!\lcd|i\(8) & (!\lcd|i\(11) & !\lcd|i\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(10),
	datab => \lcd|i\(8),
	datac => \lcd|i\(11),
	datad => \lcd|i\(9),
	combout => \lcd|Equal4~1_combout\);

-- Location: LCCOMB_X39_Y5_N24
\lcd|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~0_combout\ = (!\lcd|i\(4) & (!\lcd|i\(6) & (!\lcd|i\(5) & !\lcd|i\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(4),
	datab => \lcd|i\(6),
	datac => \lcd|i\(5),
	datad => \lcd|i\(7),
	combout => \lcd|Equal4~0_combout\);

-- Location: LCCOMB_X39_Y5_N4
\lcd|Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~2_combout\ = (!\lcd|i\(15) & (!\lcd|i\(14) & (!\lcd|i\(13) & !\lcd|i\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(15),
	datab => \lcd|i\(14),
	datac => \lcd|i\(13),
	datad => \lcd|i\(12),
	combout => \lcd|Equal4~2_combout\);

-- Location: LCCOMB_X39_Y5_N2
\lcd|Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~3_combout\ = (!\lcd|i\(17) & (!\lcd|i\(16) & (!\lcd|i\(19) & !\lcd|i\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(17),
	datab => \lcd|i\(16),
	datac => \lcd|i\(19),
	datad => \lcd|i\(18),
	combout => \lcd|Equal4~3_combout\);

-- Location: LCCOMB_X39_Y5_N20
\lcd|Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~4_combout\ = (\lcd|Equal4~1_combout\ & (\lcd|Equal4~0_combout\ & (\lcd|Equal4~2_combout\ & \lcd|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal4~1_combout\,
	datab => \lcd|Equal4~0_combout\,
	datac => \lcd|Equal4~2_combout\,
	datad => \lcd|Equal4~3_combout\,
	combout => \lcd|Equal4~4_combout\);

-- Location: LCCOMB_X40_Y4_N12
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

-- Location: LCCOMB_X40_Y4_N14
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

-- Location: FF_X40_Y4_N15
\lcd|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[23]~78_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(23));

-- Location: LCCOMB_X40_Y4_N16
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

-- Location: FF_X40_Y4_N17
\lcd|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[24]~80_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(24));

-- Location: LCCOMB_X40_Y4_N18
\lcd|i[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[25]~82_combout\ = (\lcd|i\(25) & (!\lcd|i[24]~81\)) # (!\lcd|i\(25) & ((\lcd|i[24]~81\) # (GND)))
-- \lcd|i[25]~83\ = CARRY((!\lcd|i[24]~81\) # (!\lcd|i\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(25),
	datad => VCC,
	cin => \lcd|i[24]~81\,
	combout => \lcd|i[25]~82_combout\,
	cout => \lcd|i[25]~83\);

-- Location: FF_X39_Y5_N31
\lcd|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	asdata => \lcd|i[25]~82_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	sload => VCC,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(25));

-- Location: LCCOMB_X40_Y4_N20
\lcd|i[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[26]~84_combout\ = (\lcd|i\(26) & (\lcd|i[25]~83\ $ (GND))) # (!\lcd|i\(26) & (!\lcd|i[25]~83\ & VCC))
-- \lcd|i[26]~85\ = CARRY((\lcd|i\(26) & !\lcd|i[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(26),
	datad => VCC,
	cin => \lcd|i[25]~83\,
	combout => \lcd|i[26]~84_combout\,
	cout => \lcd|i[26]~85\);

-- Location: FF_X39_Y5_N13
\lcd|i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	asdata => \lcd|i[26]~84_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	sload => VCC,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(26));

-- Location: LCCOMB_X40_Y4_N22
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

-- Location: FF_X39_Y5_N15
\lcd|i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	asdata => \lcd|i[27]~86_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	sload => VCC,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(27));

-- Location: LCCOMB_X40_Y4_N24
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

-- Location: FF_X40_Y4_N25
\lcd|i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[28]~88_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(28));

-- Location: LCCOMB_X40_Y4_N26
\lcd|i[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[29]~90_combout\ = (\lcd|i\(29) & (!\lcd|i[28]~89\)) # (!\lcd|i\(29) & ((\lcd|i[28]~89\) # (GND)))
-- \lcd|i[29]~91\ = CARRY((!\lcd|i[28]~89\) # (!\lcd|i\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(29),
	datad => VCC,
	cin => \lcd|i[28]~89\,
	combout => \lcd|i[29]~90_combout\,
	cout => \lcd|i[29]~91\);

-- Location: FF_X39_Y5_N27
\lcd|i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	asdata => \lcd|i[29]~90_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	sload => VCC,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(29));

-- Location: LCCOMB_X40_Y4_N28
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

-- Location: FF_X40_Y4_N29
\lcd|i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[30]~92_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(30));

-- Location: LCCOMB_X40_Y4_N30
\lcd|i[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[31]~94_combout\ = \lcd|i[30]~93\ $ (\lcd|i\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lcd|i\(31),
	cin => \lcd|i[30]~93\,
	combout => \lcd|i[31]~94_combout\);

-- Location: FF_X39_Y5_N1
\lcd|i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	asdata => \lcd|i[31]~94_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	sload => VCC,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(31));

-- Location: LCCOMB_X39_Y5_N28
\lcd|Equal4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~7_combout\ = (!\lcd|i\(30) & !\lcd|i\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|i\(30),
	datad => \lcd|i\(31),
	combout => \lcd|Equal4~7_combout\);

-- Location: LCCOMB_X39_Y5_N18
\lcd|Equal4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~6_combout\ = (!\lcd|i\(26) & (!\lcd|i\(25) & (!\lcd|i\(27) & !\lcd|i\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(26),
	datab => \lcd|i\(25),
	datac => \lcd|i\(27),
	datad => \lcd|i\(24),
	combout => \lcd|Equal4~6_combout\);

-- Location: LCCOMB_X39_Y5_N26
\lcd|Equal4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~8_combout\ = (!\lcd|i\(28) & (\lcd|Equal4~7_combout\ & (!\lcd|i\(29) & \lcd|Equal4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(28),
	datab => \lcd|Equal4~7_combout\,
	datac => \lcd|i\(29),
	datad => \lcd|Equal4~6_combout\,
	combout => \lcd|Equal4~8_combout\);

-- Location: LCCOMB_X39_Y5_N6
\lcd|Equal12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal12~1_combout\ = (\lcd|Equal12~0_combout\ & (\lcd|Equal4~4_combout\ & (\lcd|Equal4~8_combout\ & \lcd|Equal4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal12~0_combout\,
	datab => \lcd|Equal4~4_combout\,
	datac => \lcd|Equal4~8_combout\,
	datad => \lcd|Equal4~5_combout\,
	combout => \lcd|Equal12~1_combout\);

-- Location: LCCOMB_X39_Y5_N8
\lcd|Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal13~0_combout\ = (!\lcd|Equal12~1_combout\) # (!\lcd|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(0),
	datad => \lcd|Equal12~1_combout\,
	combout => \lcd|Equal13~0_combout\);

-- Location: LCCOMB_X38_Y5_N26
\lcd|Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal10~0_combout\ = (\lcd|i\(1) & (\lcd|i\(2) & (!\lcd|i\(0) & \lcd|Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(1),
	datab => \lcd|i\(2),
	datac => \lcd|i\(0),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|Equal10~0_combout\);

-- Location: LCCOMB_X38_Y5_N2
\lcd|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal8~0_combout\ = (!\lcd|i\(1) & (\lcd|i\(2) & (!\lcd|i\(0) & \lcd|Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(1),
	datab => \lcd|i\(2),
	datac => \lcd|i\(0),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|Equal8~0_combout\);

-- Location: LCCOMB_X38_Y5_N24
\lcd|write_column~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~7_combout\ = (!\lcd|Equal10~0_combout\ & (!\lcd|Equal8~0_combout\ & ((\lcd|i\(0)) # (!\lcd|Equal12~1_combout\))))

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
	combout => \lcd|write_column~7_combout\);

-- Location: LCCOMB_X38_Y5_N20
\lcd|write_data[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~29_combout\ = (\lcd|write_column~7_combout\ & (((!\lcd|i\(0)) # (!\lcd|i\(2))) # (!\lcd|Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal4~9_combout\,
	datab => \lcd|i\(2),
	datac => \lcd|i\(0),
	datad => \lcd|write_column~7_combout\,
	combout => \lcd|write_data[4]~29_combout\);

-- Location: LCCOMB_X41_Y5_N12
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

-- Location: FF_X41_Y5_N13
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

-- Location: LCCOMB_X41_Y5_N4
\lcd|write_data[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~27_combout\ = (\lcd|lcd_instance|ack~q\ & (((!\lcd|write_data[4]~29_combout\) # (!\lcd|Equal13~0_combout\)) # (!\lcd|write_data[4]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_data[4]~10_combout\,
	datab => \lcd|Equal13~0_combout\,
	datac => \lcd|write_data[4]~29_combout\,
	datad => \lcd|lcd_instance|ack~q\,
	combout => \lcd|write_data[4]~27_combout\);

-- Location: FF_X40_Y5_N5
\lcd|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[2]~36_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(2));

-- Location: LCCOMB_X40_Y5_N6
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

-- Location: FF_X40_Y5_N7
\lcd|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[3]~38_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(3));

-- Location: LCCOMB_X40_Y5_N8
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

-- Location: FF_X40_Y5_N9
\lcd|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[4]~40_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(4));

-- Location: LCCOMB_X40_Y5_N10
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

-- Location: FF_X40_Y5_N11
\lcd|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[5]~42_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(5));

-- Location: LCCOMB_X40_Y5_N12
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

-- Location: FF_X40_Y5_N13
\lcd|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[6]~44_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(6));

-- Location: LCCOMB_X40_Y5_N14
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

-- Location: FF_X40_Y5_N15
\lcd|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[7]~46_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(7));

-- Location: LCCOMB_X40_Y5_N16
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

-- Location: FF_X40_Y5_N17
\lcd|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[8]~48_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(8));

-- Location: LCCOMB_X40_Y5_N18
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

-- Location: FF_X40_Y5_N19
\lcd|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[9]~50_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(9));

-- Location: LCCOMB_X40_Y5_N20
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

-- Location: FF_X40_Y5_N21
\lcd|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[10]~52_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(10));

-- Location: LCCOMB_X40_Y5_N22
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

-- Location: FF_X40_Y5_N23
\lcd|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[11]~54_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(11));

-- Location: LCCOMB_X40_Y5_N24
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

-- Location: FF_X40_Y5_N25
\lcd|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[12]~56_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(12));

-- Location: LCCOMB_X40_Y5_N26
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

-- Location: FF_X40_Y5_N27
\lcd|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[13]~58_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(13));

-- Location: LCCOMB_X40_Y5_N28
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

-- Location: FF_X40_Y5_N29
\lcd|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[14]~60_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(14));

-- Location: LCCOMB_X40_Y5_N30
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

-- Location: FF_X40_Y5_N31
\lcd|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[15]~62_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(15));

-- Location: LCCOMB_X40_Y4_N0
\lcd|i[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|i[16]~64_combout\ = (\lcd|i\(16) & (\lcd|i[15]~63\ $ (GND))) # (!\lcd|i\(16) & (!\lcd|i[15]~63\ & VCC))
-- \lcd|i[16]~65\ = CARRY((\lcd|i\(16) & !\lcd|i[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(16),
	datad => VCC,
	cin => \lcd|i[15]~63\,
	combout => \lcd|i[16]~64_combout\,
	cout => \lcd|i[16]~65\);

-- Location: FF_X39_Y5_N17
\lcd|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	asdata => \lcd|i[16]~64_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	sload => VCC,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(16));

-- Location: LCCOMB_X40_Y4_N2
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

-- Location: FF_X39_Y5_N23
\lcd|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	asdata => \lcd|i[17]~66_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	sload => VCC,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(17));

-- Location: LCCOMB_X40_Y4_N4
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

-- Location: FF_X40_Y4_N5
\lcd|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[18]~68_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(18));

-- Location: LCCOMB_X40_Y4_N6
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

-- Location: FF_X39_Y5_N9
\lcd|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	asdata => \lcd|i[19]~70_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	sload => VCC,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(19));

-- Location: LCCOMB_X40_Y4_N8
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

-- Location: FF_X40_Y4_N9
\lcd|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[20]~72_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(20));

-- Location: LCCOMB_X40_Y4_N10
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

-- Location: FF_X40_Y4_N11
\lcd|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[21]~74_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(21));

-- Location: FF_X40_Y4_N13
\lcd|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[22]~76_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(22));

-- Location: LCCOMB_X39_Y4_N16
\lcd|Equal4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~5_combout\ = (!\lcd|i\(22) & (!\lcd|i\(20) & (!\lcd|i\(23) & !\lcd|i\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(22),
	datab => \lcd|i\(20),
	datac => \lcd|i\(23),
	datad => \lcd|i\(21),
	combout => \lcd|Equal4~5_combout\);

-- Location: LCCOMB_X38_Y5_N18
\lcd|Equal4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal4~9_combout\ = (\lcd|Equal4~5_combout\ & (!\lcd|i\(3) & (\lcd|Equal4~4_combout\ & \lcd|Equal4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal4~5_combout\,
	datab => \lcd|i\(3),
	datac => \lcd|Equal4~4_combout\,
	datad => \lcd|Equal4~8_combout\,
	combout => \lcd|Equal4~9_combout\);

-- Location: LCCOMB_X38_Y5_N30
\lcd|write_data[4]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~30_combout\ = (\lcd|write_column~7_combout\ & (((\lcd|i\(2) & !\lcd|i\(0))) # (!\lcd|Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal4~9_combout\,
	datab => \lcd|i\(2),
	datac => \lcd|i\(0),
	datad => \lcd|write_column~7_combout\,
	combout => \lcd|write_data[4]~30_combout\);

-- Location: FF_X40_Y5_N1
\lcd|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[0]~32_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(0));

-- Location: FF_X40_Y5_N3
\lcd|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|i[1]~34_combout\,
	sclr => \lcd|write_data[4]~30_combout\,
	ena => \lcd|write_data[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|i\(1));

-- Location: LCCOMB_X38_Y5_N6
\lcd|write_data[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~12_combout\ = (\lcd|i\(1)) # ((\lcd|i\(2)) # (!\lcd|Equal4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(1),
	datab => \lcd|i\(2),
	datac => \lcd|Equal4~9_combout\,
	combout => \lcd|write_data[4]~12_combout\);

-- Location: LCCOMB_X38_Y5_N4
\lcd|write_data[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~13_combout\ = (!\lcd|i\(0) & (!\lcd|i\(2) & \lcd|Equal4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(0),
	datac => \lcd|i\(2),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|write_data[4]~13_combout\);

-- Location: LCCOMB_X37_Y6_N12
\lcd|covid_det_instance|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~1_combout\ = (\lcd|covid_det_instance|bit_index\(0) & (\lcd|covid_det_instance|bit_index\(1) & (!\lcd|covid_det_instance|bit_index\(3) & \lcd|covid_det_instance|bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(0),
	datab => \lcd|covid_det_instance|bit_index\(1),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(2),
	combout => \lcd|covid_det_instance|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y6_N0
\lcd|covid_det_instance|out_ascii_new2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~1_combout\ = (\lcd|covid_det_instance|Equal0~1_combout\ & ((\lcd|covid_det_instance|Mux0~7_combout\))) # (!\lcd|covid_det_instance|Equal0~1_combout\ & (\lcd|covid_det_instance|out_ascii_new2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|out_ascii_new2~1_combout\,
	datab => \lcd|covid_det_instance|Mux0~7_combout\,
	datad => \lcd|covid_det_instance|Equal0~1_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~1_combout\);

-- Location: LCCOMB_X37_Y5_N10
\lcd|write_data~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~16_combout\ = (\lcd|Equal10~0_combout\) # ((!\lcd|i\(0) & \lcd|Equal12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|i\(0),
	datac => \lcd|Equal12~1_combout\,
	datad => \lcd|Equal10~0_combout\,
	combout => \lcd|write_data~16_combout\);

-- Location: LCCOMB_X38_Y5_N10
\lcd|write_data[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~14_combout\ = (\lcd|i\(1) & (\lcd|i\(2) & \lcd|Equal4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(1),
	datac => \lcd|i\(2),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|write_data[4]~14_combout\);

-- Location: LCCOMB_X37_Y6_N10
\lcd|covid_det_instance|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~4_combout\ = (!\lcd|covid_det_instance|bit_index\(0) & (!\lcd|covid_det_instance|bit_index\(1) & (!\lcd|covid_det_instance|bit_index\(3) & !\lcd|covid_det_instance|bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(0),
	datab => \lcd|covid_det_instance|bit_index\(1),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(2),
	combout => \lcd|covid_det_instance|Equal0~4_combout\);

-- Location: LCCOMB_X37_Y5_N20
\lcd|covid_det_instance|out_ascii_new2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~4_combout\ = (\lcd|covid_det_instance|Equal0~4_combout\ & ((\lcd|covid_det_instance|Mux0~7_combout\))) # (!\lcd|covid_det_instance|Equal0~4_combout\ & (\lcd|covid_det_instance|out_ascii_new2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|out_ascii_new2~4_combout\,
	datab => \lcd|covid_det_instance|Equal0~4_combout\,
	datad => \lcd|covid_det_instance|Mux0~7_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~4_combout\);

-- Location: LCCOMB_X37_Y6_N22
\lcd|covid_det_instance|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~3_combout\ = (\lcd|covid_det_instance|bit_index\(0) & (!\lcd|covid_det_instance|bit_index\(2) & (\lcd|covid_det_instance|bit_index\(1) & !\lcd|covid_det_instance|bit_index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(0),
	datab => \lcd|covid_det_instance|bit_index\(2),
	datac => \lcd|covid_det_instance|bit_index\(1),
	datad => \lcd|covid_det_instance|bit_index\(3),
	combout => \lcd|covid_det_instance|Equal0~3_combout\);

-- Location: LCCOMB_X36_Y6_N30
\lcd|covid_det_instance|out_ascii_new2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~3_combout\ = (\lcd|covid_det_instance|Equal0~3_combout\ & ((\lcd|covid_det_instance|Mux0~7_combout\))) # (!\lcd|covid_det_instance|Equal0~3_combout\ & (\lcd|covid_det_instance|out_ascii_new2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|out_ascii_new2~3_combout\,
	datac => \lcd|covid_det_instance|Mux0~7_combout\,
	datad => \lcd|covid_det_instance|Equal0~3_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~3_combout\);

-- Location: LCCOMB_X37_Y5_N26
\lcd|write_data~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~18_combout\ = (\lcd|write_data~16_combout\ & (\lcd|write_data[4]~14_combout\ & ((\lcd|covid_det_instance|out_ascii_new2~3_combout\)))) # (!\lcd|write_data~16_combout\ & (((\lcd|covid_det_instance|out_ascii_new2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_data~16_combout\,
	datab => \lcd|write_data[4]~14_combout\,
	datac => \lcd|covid_det_instance|out_ascii_new2~4_combout\,
	datad => \lcd|covid_det_instance|out_ascii_new2~3_combout\,
	combout => \lcd|write_data~18_combout\);

-- Location: LCCOMB_X37_Y6_N14
\lcd|covid_det_instance|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~5_combout\ = (!\lcd|covid_det_instance|bit_index\(0) & (\lcd|covid_det_instance|bit_index\(1) & (!\lcd|covid_det_instance|bit_index\(3) & !\lcd|covid_det_instance|bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(0),
	datab => \lcd|covid_det_instance|bit_index\(1),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(2),
	combout => \lcd|covid_det_instance|Equal0~5_combout\);

-- Location: LCCOMB_X36_Y6_N20
\lcd|covid_det_instance|out_ascii_new2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~5_combout\ = (\lcd|covid_det_instance|Equal0~5_combout\ & ((\lcd|covid_det_instance|Mux0~7_combout\))) # (!\lcd|covid_det_instance|Equal0~5_combout\ & (\lcd|covid_det_instance|out_ascii_new2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|out_ascii_new2~5_combout\,
	datab => \lcd|covid_det_instance|Equal0~5_combout\,
	datad => \lcd|covid_det_instance|Mux0~7_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~5_combout\);

-- Location: LCCOMB_X37_Y5_N16
\lcd|write_data~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~15_combout\ = (\lcd|Equal4~9_combout\ & ((\lcd|i\(2) & ((!\lcd|i\(1)))) # (!\lcd|i\(2) & (\lcd|i\(0) & \lcd|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(2),
	datab => \lcd|i\(0),
	datac => \lcd|i\(1),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|write_data~15_combout\);

-- Location: LCCOMB_X37_Y5_N24
\lcd|write_data~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~19_combout\ = (\lcd|covid_det_instance|out_ascii_new2~5_combout\) # ((\lcd|write_data~15_combout\) # (!\lcd|write_data[4]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|out_ascii_new2~5_combout\,
	datac => \lcd|write_data[4]~14_combout\,
	datad => \lcd|write_data~15_combout\,
	combout => \lcd|write_data~19_combout\);

-- Location: LCCOMB_X37_Y6_N30
\lcd|covid_det_instance|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~7_combout\ = (!\lcd|covid_det_instance|bit_index\(0) & (!\lcd|covid_det_instance|bit_index\(1) & (!\lcd|covid_det_instance|bit_index\(3) & \lcd|covid_det_instance|bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(0),
	datab => \lcd|covid_det_instance|bit_index\(1),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(2),
	combout => \lcd|covid_det_instance|Equal0~7_combout\);

-- Location: LCCOMB_X37_Y5_N22
\lcd|covid_det_instance|out_ascii_new2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~7_combout\ = (\lcd|covid_det_instance|Equal0~7_combout\ & ((\lcd|covid_det_instance|Mux0~7_combout\))) # (!\lcd|covid_det_instance|Equal0~7_combout\ & (\lcd|covid_det_instance|out_ascii_new2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|out_ascii_new2~7_combout\,
	datac => \lcd|covid_det_instance|Equal0~7_combout\,
	datad => \lcd|covid_det_instance|Mux0~7_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~7_combout\);

-- Location: LCCOMB_X38_Y5_N28
\lcd|write_data~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~20_combout\ = (\lcd|i\(1)) # ((!\lcd|Equal4~9_combout\) # (!\lcd|i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(1),
	datac => \lcd|i\(2),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|write_data~20_combout\);

-- Location: LCCOMB_X37_Y6_N24
\lcd|covid_det_instance|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~8_combout\ = (!\lcd|covid_det_instance|bit_index\(0) & (\lcd|covid_det_instance|bit_index\(2) & (\lcd|covid_det_instance|bit_index\(1) & !\lcd|covid_det_instance|bit_index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(0),
	datab => \lcd|covid_det_instance|bit_index\(2),
	datac => \lcd|covid_det_instance|bit_index\(1),
	datad => \lcd|covid_det_instance|bit_index\(3),
	combout => \lcd|covid_det_instance|Equal0~8_combout\);

-- Location: LCCOMB_X36_Y6_N24
\lcd|covid_det_instance|out_ascii_new2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~8_combout\ = (\lcd|covid_det_instance|Equal0~8_combout\ & ((\lcd|covid_det_instance|Mux0~7_combout\))) # (!\lcd|covid_det_instance|Equal0~8_combout\ & (\lcd|covid_det_instance|out_ascii_new2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|covid_det_instance|out_ascii_new2~8_combout\,
	datac => \lcd|covid_det_instance|Mux0~7_combout\,
	datad => \lcd|covid_det_instance|Equal0~8_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~8_combout\);

-- Location: LCCOMB_X37_Y5_N14
\lcd|write_data~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~21_combout\ = (((!\lcd|i\(2) & \lcd|covid_det_instance|out_ascii_new2~8_combout\)) # (!\lcd|write_data~15_combout\)) # (!\lcd|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(2),
	datab => \lcd|i\(0),
	datac => \lcd|covid_det_instance|out_ascii_new2~8_combout\,
	datad => \lcd|write_data~15_combout\,
	combout => \lcd|write_data~21_combout\);

-- Location: LCCOMB_X37_Y6_N4
\lcd|covid_det_instance|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~6_combout\ = (\lcd|covid_det_instance|bit_index\(0) & (\lcd|covid_det_instance|bit_index\(2) & (!\lcd|covid_det_instance|bit_index\(1) & !\lcd|covid_det_instance|bit_index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(0),
	datab => \lcd|covid_det_instance|bit_index\(2),
	datac => \lcd|covid_det_instance|bit_index\(1),
	datad => \lcd|covid_det_instance|bit_index\(3),
	combout => \lcd|covid_det_instance|Equal0~6_combout\);

-- Location: LCCOMB_X36_Y6_N12
\lcd|covid_det_instance|out_ascii_new2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~6_combout\ = (\lcd|covid_det_instance|Equal0~6_combout\ & ((\lcd|covid_det_instance|Mux0~7_combout\))) # (!\lcd|covid_det_instance|Equal0~6_combout\ & (\lcd|covid_det_instance|out_ascii_new2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|out_ascii_new2~6_combout\,
	datac => \lcd|covid_det_instance|Mux0~7_combout\,
	datad => \lcd|covid_det_instance|Equal0~6_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~6_combout\);

-- Location: LCCOMB_X37_Y5_N4
\lcd|write_data~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~22_combout\ = (\lcd|write_data~20_combout\ & (((\lcd|write_data~21_combout\)))) # (!\lcd|write_data~20_combout\ & ((\lcd|write_data~21_combout\ & ((\lcd|covid_det_instance|out_ascii_new2~6_combout\))) # (!\lcd|write_data~21_combout\ & 
-- (\lcd|covid_det_instance|out_ascii_new2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|out_ascii_new2~7_combout\,
	datab => \lcd|write_data~20_combout\,
	datac => \lcd|write_data~21_combout\,
	datad => \lcd|covid_det_instance|out_ascii_new2~6_combout\,
	combout => \lcd|write_data~22_combout\);

-- Location: LCCOMB_X37_Y6_N18
\lcd|covid_det_instance|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|Equal0~2_combout\ = (\lcd|covid_det_instance|bit_index\(0) & (!\lcd|covid_det_instance|bit_index\(1) & (!\lcd|covid_det_instance|bit_index\(3) & !\lcd|covid_det_instance|bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|bit_index\(0),
	datab => \lcd|covid_det_instance|bit_index\(1),
	datac => \lcd|covid_det_instance|bit_index\(3),
	datad => \lcd|covid_det_instance|bit_index\(2),
	combout => \lcd|covid_det_instance|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y6_N2
\lcd|covid_det_instance|out_ascii_new2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|covid_det_instance|out_ascii_new2~2_combout\ = (\lcd|covid_det_instance|Equal0~2_combout\ & ((\lcd|covid_det_instance|Mux0~7_combout\))) # (!\lcd|covid_det_instance|Equal0~2_combout\ & (\lcd|covid_det_instance|out_ascii_new2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|out_ascii_new2~2_combout\,
	datab => \lcd|covid_det_instance|Equal0~2_combout\,
	datad => \lcd|covid_det_instance|Mux0~7_combout\,
	combout => \lcd|covid_det_instance|out_ascii_new2~2_combout\);

-- Location: LCCOMB_X37_Y5_N28
\lcd|write_data~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~17_combout\ = (\lcd|write_data~15_combout\) # ((\lcd|write_data[4]~14_combout\ & ((!\lcd|write_data~16_combout\))) # (!\lcd|write_data[4]~14_combout\ & (\lcd|covid_det_instance|out_ascii_new2~2_combout\ & \lcd|write_data~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_data[4]~14_combout\,
	datab => \lcd|write_data~15_combout\,
	datac => \lcd|covid_det_instance|out_ascii_new2~2_combout\,
	datad => \lcd|write_data~16_combout\,
	combout => \lcd|write_data~17_combout\);

-- Location: LCCOMB_X37_Y5_N30
\lcd|write_data~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~23_combout\ = (\lcd|write_data~17_combout\ & (((\lcd|write_data~19_combout\ & \lcd|write_data~22_combout\)))) # (!\lcd|write_data~17_combout\ & (\lcd|write_data~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_data~18_combout\,
	datab => \lcd|write_data~19_combout\,
	datac => \lcd|write_data~22_combout\,
	datad => \lcd|write_data~17_combout\,
	combout => \lcd|write_data~23_combout\);

-- Location: LCCOMB_X38_Y5_N8
\lcd|write_data~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~24_combout\ = (\lcd|write_data[4]~13_combout\ & ((\lcd|covid_det_instance|out_ascii_new2~1_combout\) # ((!\lcd|write_data[4]~12_combout\)))) # (!\lcd|write_data[4]~13_combout\ & (((\lcd|write_data[4]~12_combout\ & 
-- \lcd|write_data~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_data[4]~13_combout\,
	datab => \lcd|covid_det_instance|out_ascii_new2~1_combout\,
	datac => \lcd|write_data[4]~12_combout\,
	datad => \lcd|write_data~23_combout\,
	combout => \lcd|write_data~24_combout\);

-- Location: LCCOMB_X38_Y5_N12
\lcd|write_data~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~25_combout\ = (\lcd|write_data[4]~12_combout\ & (((\lcd|write_data~24_combout\)))) # (!\lcd|write_data[4]~12_combout\ & ((\lcd|write_data~24_combout\ & ((\lcd|covid_det_instance|out_ascii_new2~9_combout\))) # (!\lcd|write_data~24_combout\ 
-- & (\lcd|covid_det_instance|out_ascii_new2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|covid_det_instance|out_ascii_new2~0_combout\,
	datab => \lcd|covid_det_instance|out_ascii_new2~9_combout\,
	datac => \lcd|write_data[4]~12_combout\,
	datad => \lcd|write_data~24_combout\,
	combout => \lcd|write_data~25_combout\);

-- Location: LCCOMB_X38_Y5_N16
\lcd|write_data[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~8_combout\ = ((!\lcd|Equal4~9_combout\) # (!\lcd|i\(0))) # (!\lcd|i\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(2),
	datab => \lcd|i\(0),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|write_data[4]~8_combout\);

-- Location: LCCOMB_X41_Y5_N26
\lcd|write_data[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~9_combout\ = (((\lcd|i\(0) & \lcd|Equal12~1_combout\)) # (!\lcd|write_data[4]~8_combout\)) # (!\lcd|write_column~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(0),
	datab => \lcd|Equal12~1_combout\,
	datac => \lcd|write_column~7_combout\,
	datad => \lcd|write_data[4]~8_combout\,
	combout => \lcd|write_data[4]~9_combout\);

-- Location: LCCOMB_X38_Y5_N22
\lcd|write_data~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data~26_combout\ = (\lcd|write_data~25_combout\ & (\lcd|lcd_instance|ack~q\ & ((\lcd|write_data[4]~9_combout\) # (!\lcd|write_data[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_data~25_combout\,
	datab => \lcd|write_data[4]~10_combout\,
	datac => \lcd|lcd_instance|ack~q\,
	datad => \lcd|write_data[4]~9_combout\,
	combout => \lcd|write_data~26_combout\);

-- Location: LCCOMB_X41_Y5_N28
\lcd|write_data[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~11_combout\ = (\lcd_rst~input_o\) # ((\lcd|lcd_instance|ack~q\ & ((!\lcd|write_data[4]~30_combout\) # (!\lcd|Equal13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_rst~input_o\,
	datab => \lcd|Equal13~0_combout\,
	datac => \lcd|write_data[4]~30_combout\,
	datad => \lcd|lcd_instance|ack~q\,
	combout => \lcd|write_data[4]~11_combout\);

-- Location: FF_X38_Y5_N23
\lcd|write_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|write_data~26_combout\,
	ena => \lcd|write_data[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|write_data\(0));

-- Location: FF_X38_Y5_N17
\lcd|lcd_instance|data_dis[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	asdata => \lcd|write_data\(0),
	sload => VCC,
	ena => \lcd|lcd_instance|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|data_dis\(0));

-- Location: LCCOMB_X42_Y6_N28
\lcd|lcd_instance|lcd[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|lcd[5]~1_combout\ = (\lcd|lcd_instance|state.S6~q\) # ((\lcd|lcd_instance|state.S8~q\) # (\lcd|lcd_instance|state.S7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|lcd_instance|state.S6~q\,
	datac => \lcd|lcd_instance|state.S8~q\,
	datad => \lcd|lcd_instance|state.S7~q\,
	combout => \lcd|lcd_instance|lcd[5]~1_combout\);

-- Location: LCCOMB_X41_Y5_N24
\lcd|write_column~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~6_combout\ = (!\lcd|i\(1) & (!\lcd|i\(2) & \lcd|Equal4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(1),
	datab => \lcd|i\(2),
	datac => \lcd|Equal4~9_combout\,
	combout => \lcd|write_column~6_combout\);

-- Location: LCCOMB_X41_Y5_N8
\lcd|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal7~0_combout\ = (\lcd|i\(0) & (!\lcd|i\(2) & (\lcd|i\(1) & \lcd|Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(0),
	datab => \lcd|i\(2),
	datac => \lcd|i\(1),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|Equal7~0_combout\);

-- Location: LCCOMB_X41_Y5_N30
\lcd|Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|Equal6~0_combout\ = (!\lcd|i\(0) & (!\lcd|i\(2) & (\lcd|i\(1) & \lcd|Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(0),
	datab => \lcd|i\(2),
	datac => \lcd|i\(1),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|Equal6~0_combout\);

-- Location: LCCOMB_X41_Y5_N20
\lcd|write_column~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~8_combout\ = (\lcd|write_column~7_combout\ & (!\lcd|Equal6~0_combout\ & ((\lcd|Equal7~0_combout\) # (\lcd|write_data[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_column~7_combout\,
	datab => \lcd|Equal7~0_combout\,
	datac => \lcd|write_data[4]~9_combout\,
	datad => \lcd|Equal6~0_combout\,
	combout => \lcd|write_column~8_combout\);

-- Location: LCCOMB_X41_Y5_N0
\lcd|write_column~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~9_combout\ = (\lcd|lcd_instance|ack~q\ & ((\lcd|write_column~6_combout\ & (\lcd|i\(0))) # (!\lcd|write_column~6_combout\ & ((\lcd|write_column~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|ack~q\,
	datab => \lcd|write_column~6_combout\,
	datac => \lcd|i\(0),
	datad => \lcd|write_column~8_combout\,
	combout => \lcd|write_column~9_combout\);

-- Location: FF_X41_Y5_N1
\lcd|write_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|write_column~9_combout\,
	ena => \lcd|write_data[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|write_column\(0));

-- Location: FF_X42_Y5_N31
\lcd|lcd_instance|cmd_position[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	asdata => \lcd|write_column\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|cmd_position\(0));

-- Location: LCCOMB_X42_Y5_N30
\lcd|lcd_instance|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector7~0_combout\ = (\lcd|lcd_instance|lcd\(0) & (((!\lcd|lcd_instance|Selector8~2_combout\ & \lcd|lcd_instance|cmd_position\(0))) # (!\lcd|lcd_instance|lcd[1]~0_combout\))) # (!\lcd|lcd_instance|lcd\(0) & 
-- (!\lcd|lcd_instance|Selector8~2_combout\ & (\lcd|lcd_instance|cmd_position\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|lcd\(0),
	datab => \lcd|lcd_instance|Selector8~2_combout\,
	datac => \lcd|lcd_instance|cmd_position\(0),
	datad => \lcd|lcd_instance|lcd[1]~0_combout\,
	combout => \lcd|lcd_instance|Selector7~0_combout\);

-- Location: LCCOMB_X42_Y5_N24
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

-- Location: LCCOMB_X42_Y5_N10
\lcd|lcd_instance|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector7~1_combout\ = (\lcd|lcd_instance|count_cmd\(0) & (!\lcd|lcd_instance|count_cmd\(1) & \lcd|lcd_instance|Selector5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|lcd_instance|count_cmd\(0),
	datac => \lcd|lcd_instance|count_cmd\(1),
	datad => \lcd|lcd_instance|Selector5~0_combout\,
	combout => \lcd|lcd_instance|Selector7~1_combout\);

-- Location: LCCOMB_X42_Y5_N26
\lcd|lcd_instance|Selector7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector7~2_combout\ = (\lcd|lcd_instance|Selector7~0_combout\) # ((\lcd|lcd_instance|Selector7~1_combout\) # ((\lcd|lcd_instance|data_dis\(0) & \lcd|lcd_instance|lcd[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|data_dis\(0),
	datab => \lcd|lcd_instance|lcd[5]~1_combout\,
	datac => \lcd|lcd_instance|Selector7~0_combout\,
	datad => \lcd|lcd_instance|Selector7~1_combout\,
	combout => \lcd|lcd_instance|Selector7~2_combout\);

-- Location: FF_X42_Y5_N27
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

-- Location: LCCOMB_X38_Y5_N0
\lcd|write_column~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~10_combout\ = ((\lcd|i\(2)) # (!\lcd|Equal4~9_combout\)) # (!\lcd|i\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(1),
	datab => \lcd|i\(2),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|write_column~10_combout\);

-- Location: LCCOMB_X41_Y5_N18
\lcd|write_column~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~13_combout\ = (\lcd|lcd_instance|ack~q\ & ((\lcd|i\(2)) # ((\lcd|i\(1)) # (!\lcd|Equal4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|ack~q\,
	datab => \lcd|i\(2),
	datac => \lcd|i\(1),
	datad => \lcd|Equal4~9_combout\,
	combout => \lcd|write_column~13_combout\);

-- Location: LCCOMB_X41_Y5_N2
\lcd|write_column~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~11_combout\ = (\lcd|write_column~13_combout\ & (((\lcd|write_data[4]~9_combout\ & \lcd|write_data[4]~14_combout\)) # (!\lcd|write_column~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|write_data[4]~9_combout\,
	datab => \lcd|write_column~10_combout\,
	datac => \lcd|write_data[4]~14_combout\,
	datad => \lcd|write_column~13_combout\,
	combout => \lcd|write_column~11_combout\);

-- Location: FF_X41_Y5_N3
\lcd|write_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|write_column~11_combout\,
	ena => \lcd|write_data[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|write_column\(1));

-- Location: LCCOMB_X41_Y5_N14
\lcd|lcd_instance|cmd_position[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|cmd_position[1]~feeder_combout\ = \lcd|write_column\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd|write_column\(1),
	combout => \lcd|lcd_instance|cmd_position[1]~feeder_combout\);

-- Location: FF_X41_Y5_N15
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

-- Location: LCCOMB_X38_Y5_N14
\lcd|write_data[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_data[4]~28_combout\ = ((!\lcd|write_data[4]~9_combout\ & ((\lcd|i\(2)) # (!\lcd|Equal4~9_combout\)))) # (!\lcd|lcd_instance|ack~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal4~9_combout\,
	datab => \lcd|lcd_instance|ack~q\,
	datac => \lcd|i\(2),
	datad => \lcd|write_data[4]~9_combout\,
	combout => \lcd|write_data[4]~28_combout\);

-- Location: FF_X38_Y5_N15
\lcd|write_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|write_data[4]~28_combout\,
	ena => \lcd|write_data[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|write_data\(1));

-- Location: FF_X38_Y5_N1
\lcd|lcd_instance|data_dis[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	asdata => \lcd|write_data\(1),
	sload => VCC,
	ena => \lcd|lcd_instance|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|data_dis\(1));

-- Location: LCCOMB_X41_Y6_N18
\lcd|lcd_instance|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector6~1_combout\ = (\lcd|lcd_instance|state.S0~q\ & \lcd|lcd_instance|data_dis\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S0~q\,
	datac => \lcd|lcd_instance|data_dis\(1),
	combout => \lcd|lcd_instance|Selector6~1_combout\);

-- Location: LCCOMB_X42_Y5_N22
\lcd|lcd_instance|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector6~0_combout\ = (!\lcd|lcd_instance|state.S1~q\ & !\lcd|lcd_instance|state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|lcd_instance|state.S1~q\,
	datad => \lcd|lcd_instance|state.S2~q\,
	combout => \lcd|lcd_instance|Selector6~0_combout\);

-- Location: LCCOMB_X41_Y6_N28
\lcd|lcd_instance|Selector6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector6~2_combout\ = (\lcd|lcd_instance|Selector8~2_combout\ & (((\lcd|lcd_instance|Selector6~1_combout\ & \lcd|lcd_instance|Selector6~0_combout\)))) # (!\lcd|lcd_instance|Selector8~2_combout\ & (\lcd|lcd_instance|cmd_position\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|cmd_position\(1),
	datab => \lcd|lcd_instance|Selector6~1_combout\,
	datac => \lcd|lcd_instance|Selector8~2_combout\,
	datad => \lcd|lcd_instance|Selector6~0_combout\,
	combout => \lcd|lcd_instance|Selector6~2_combout\);

-- Location: LCCOMB_X41_Y6_N24
\lcd|lcd_instance|lcd[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|lcd[1]~2_combout\ = (!\lcd_rst~input_o\ & (!\lcd|lcd_instance|state.S9~q\ & ((\lcd|lcd_instance|LessThan0~0_combout\) # (\lcd|lcd_instance|state.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_rst~input_o\,
	datab => \lcd|lcd_instance|LessThan0~0_combout\,
	datac => \lcd|lcd_instance|state.S0~q\,
	datad => \lcd|lcd_instance|state.S9~q\,
	combout => \lcd|lcd_instance|lcd[1]~2_combout\);

-- Location: FF_X41_Y6_N29
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

-- Location: LCCOMB_X41_Y5_N10
\lcd|write_column~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~12_combout\ = (!\lcd|Equal6~0_combout\ & (\lcd|write_column~13_combout\ & ((\lcd|Equal7~0_combout\) # (\lcd|write_data[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal6~0_combout\,
	datab => \lcd|Equal7~0_combout\,
	datac => \lcd|write_data[4]~9_combout\,
	datad => \lcd|write_column~13_combout\,
	combout => \lcd|write_column~12_combout\);

-- Location: LCCOMB_X41_Y5_N16
\lcd|write_column~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~14_combout\ = (\lcd|Equal4~9_combout\ & (\lcd|i\(2) & \lcd|write_column~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|Equal4~9_combout\,
	datac => \lcd|i\(2),
	datad => \lcd|write_column~12_combout\,
	combout => \lcd|write_column~14_combout\);

-- Location: FF_X41_Y5_N17
\lcd|write_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|write_column~14_combout\,
	ena => \lcd|write_data[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|write_column\(2));

-- Location: FF_X42_Y5_N9
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

-- Location: LCCOMB_X42_Y5_N8
\lcd|lcd_instance|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector5~1_combout\ = (\lcd|lcd_instance|lcd\(2) & (((!\lcd|lcd_instance|Selector8~2_combout\ & \lcd|lcd_instance|cmd_position\(2))) # (!\lcd|lcd_instance|lcd[1]~0_combout\))) # (!\lcd|lcd_instance|lcd\(2) & 
-- (!\lcd|lcd_instance|Selector8~2_combout\ & (\lcd|lcd_instance|cmd_position\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|lcd\(2),
	datab => \lcd|lcd_instance|Selector8~2_combout\,
	datac => \lcd|lcd_instance|cmd_position\(2),
	datad => \lcd|lcd_instance|lcd[1]~0_combout\,
	combout => \lcd|lcd_instance|Selector5~1_combout\);

-- Location: LCCOMB_X42_Y5_N6
\lcd|lcd_instance|Selector5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector5~2_combout\ = (!\lcd|lcd_instance|count_cmd\(0) & (\lcd|lcd_instance|Selector5~0_combout\ & (\lcd|lcd_instance|count_cmd\(2) $ (\lcd|lcd_instance|count_cmd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|count_cmd\(2),
	datab => \lcd|lcd_instance|count_cmd\(0),
	datac => \lcd|lcd_instance|count_cmd\(1),
	datad => \lcd|lcd_instance|Selector5~0_combout\,
	combout => \lcd|lcd_instance|Selector5~2_combout\);

-- Location: LCCOMB_X42_Y5_N20
\lcd|lcd_instance|Selector5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector5~3_combout\ = (\lcd|lcd_instance|Selector5~1_combout\) # ((\lcd|lcd_instance|Selector5~2_combout\) # ((\lcd|lcd_instance|data_dis\(1) & \lcd|lcd_instance|lcd[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|data_dis\(1),
	datab => \lcd|lcd_instance|lcd[5]~1_combout\,
	datac => \lcd|lcd_instance|Selector5~1_combout\,
	datad => \lcd|lcd_instance|Selector5~2_combout\,
	combout => \lcd|lcd_instance|Selector5~3_combout\);

-- Location: FF_X42_Y5_N21
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

-- Location: LCCOMB_X42_Y5_N18
\lcd|lcd_instance|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector4~1_combout\ = (!\lcd|lcd_instance|count_cmd\(0) & (!\lcd|lcd_instance|count_cmd\(2) & ((!\lcd|lcd_instance|Selector6~0_combout\) # (!\lcd|lcd_instance|state.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|state.S0~q\,
	datab => \lcd|lcd_instance|count_cmd\(0),
	datac => \lcd|lcd_instance|Selector6~0_combout\,
	datad => \lcd|lcd_instance|count_cmd\(2),
	combout => \lcd|lcd_instance|Selector4~1_combout\);

-- Location: LCCOMB_X41_Y5_N6
\lcd|write_column~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|write_column~15_combout\ = (!\lcd|Equal7~0_combout\ & (\lcd|write_column~12_combout\ & ((!\lcd|Equal4~9_combout\) # (!\lcd|i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|i\(2),
	datab => \lcd|Equal4~9_combout\,
	datac => \lcd|Equal7~0_combout\,
	datad => \lcd|write_column~12_combout\,
	combout => \lcd|write_column~15_combout\);

-- Location: FF_X41_Y5_N7
\lcd|write_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|write_column~15_combout\,
	ena => \lcd|write_data[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|write_column\(3));

-- Location: FF_X42_Y5_N17
\lcd|lcd_instance|cmd_position[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|clk_slow~clkctrl_outclk\,
	asdata => \lcd|write_column\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|lcd_instance|cmd_position\(3));

-- Location: LCCOMB_X42_Y5_N16
\lcd|lcd_instance|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector4~0_combout\ = (\lcd|lcd_instance|lcd\(3) & (((!\lcd|lcd_instance|Selector8~2_combout\ & \lcd|lcd_instance|cmd_position\(3))) # (!\lcd|lcd_instance|lcd[1]~0_combout\))) # (!\lcd|lcd_instance|lcd\(3) & 
-- (!\lcd|lcd_instance|Selector8~2_combout\ & (\lcd|lcd_instance|cmd_position\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|lcd\(3),
	datab => \lcd|lcd_instance|Selector8~2_combout\,
	datac => \lcd|lcd_instance|cmd_position\(3),
	datad => \lcd|lcd_instance|lcd[1]~0_combout\,
	combout => \lcd|lcd_instance|Selector4~0_combout\);

-- Location: LCCOMB_X42_Y5_N14
\lcd|lcd_instance|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector4~2_combout\ = (\lcd|lcd_instance|Selector4~1_combout\) # ((\lcd|lcd_instance|Selector4~0_combout\) # ((\lcd|lcd_instance|data_dis\(1) & \lcd|lcd_instance|lcd[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|data_dis\(1),
	datab => \lcd|lcd_instance|Selector4~1_combout\,
	datac => \lcd|lcd_instance|lcd[5]~1_combout\,
	datad => \lcd|lcd_instance|Selector4~0_combout\,
	combout => \lcd|lcd_instance|Selector4~2_combout\);

-- Location: FF_X42_Y5_N15
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

-- Location: LCCOMB_X43_Y5_N28
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

-- Location: FF_X43_Y5_N29
\lcd|write_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|write_data[4]~feeder_combout\,
	ena => \lcd|write_data[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|write_data\(4));

-- Location: LCCOMB_X43_Y5_N0
\lcd|lcd_instance|data_dis[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|data_dis[4]~feeder_combout\ = \lcd|write_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd|write_data\(4),
	combout => \lcd|lcd_instance|data_dis[4]~feeder_combout\);

-- Location: FF_X43_Y5_N1
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

-- Location: LCCOMB_X41_Y6_N14
\lcd|lcd_instance|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector3~0_combout\ = (!\lcd|lcd_instance|count_cmd\(0) & (!\lcd|lcd_instance|count_cmd\(2) & (!\lcd|lcd_instance|count_cmd\(1) & !\lcd|lcd_instance|lcd[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|count_cmd\(0),
	datab => \lcd|lcd_instance|count_cmd\(2),
	datac => \lcd|lcd_instance|count_cmd\(1),
	datad => \lcd|lcd_instance|lcd[5]~1_combout\,
	combout => \lcd|lcd_instance|Selector3~0_combout\);

-- Location: LCCOMB_X41_Y6_N22
\lcd|lcd_instance|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector3~1_combout\ = (\lcd|lcd_instance|Selector8~2_combout\ & ((\lcd|lcd_instance|Selector3~0_combout\) # ((\lcd|lcd_instance|data_dis\(4) & \lcd|lcd_instance|lcd[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|data_dis\(4),
	datab => \lcd|lcd_instance|Selector8~2_combout\,
	datac => \lcd|lcd_instance|Selector3~0_combout\,
	datad => \lcd|lcd_instance|lcd[5]~1_combout\,
	combout => \lcd|lcd_instance|Selector3~1_combout\);

-- Location: FF_X41_Y6_N23
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

-- Location: LCCOMB_X43_Y5_N18
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

-- Location: FF_X43_Y5_N19
\lcd|write_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lcd|lcd_clk~clkctrl_outclk\,
	d => \lcd|write_data[5]~feeder_combout\,
	ena => \lcd|write_data[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|write_data\(5));

-- Location: LCCOMB_X43_Y5_N14
\lcd|lcd_instance|data_dis[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|data_dis[5]~feeder_combout\ = \lcd|write_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd|write_data\(5),
	combout => \lcd|lcd_instance|data_dis[5]~feeder_combout\);

-- Location: FF_X43_Y5_N15
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

-- Location: LCCOMB_X41_Y6_N8
\lcd|lcd_instance|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector2~0_combout\ = (\lcd|lcd_instance|Selector8~2_combout\ & ((\lcd|lcd_instance|Selector3~0_combout\) # ((\lcd|lcd_instance|data_dis\(5) & \lcd|lcd_instance|lcd[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|data_dis\(5),
	datab => \lcd|lcd_instance|Selector8~2_combout\,
	datac => \lcd|lcd_instance|Selector3~0_combout\,
	datad => \lcd|lcd_instance|lcd[5]~1_combout\,
	combout => \lcd|lcd_instance|Selector2~0_combout\);

-- Location: FF_X41_Y6_N9
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

-- Location: LCCOMB_X41_Y6_N26
\lcd|lcd_instance|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcd|lcd_instance|Selector0~0_combout\ = ((\lcd|lcd_instance|count_cmd\(0) & (\lcd|lcd_instance|count_cmd\(1) & !\lcd|lcd_instance|lcd[5]~1_combout\))) # (!\lcd|lcd_instance|Selector8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|lcd_instance|count_cmd\(0),
	datab => \lcd|lcd_instance|count_cmd\(1),
	datac => \lcd|lcd_instance|Selector8~2_combout\,
	datad => \lcd|lcd_instance|lcd[5]~1_combout\,
	combout => \lcd|lcd_instance|Selector0~0_combout\);

-- Location: FF_X41_Y6_N27
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

ww_mosi <= \mosi~output_o\;

ww_sclk <= \sclk~output_o\;

ww_cs_b <= \cs_b~output_o\;

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_en <= \lcd_en~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

ww_detect <= \detect~output_o\;

ww_led_output(0) <= \led_output[0]~output_o\;

ww_led_output(1) <= \led_output[1]~output_o\;

ww_led_output(2) <= \led_output[2]~output_o\;

ww_led_output(3) <= \led_output[3]~output_o\;

ww_led_output(4) <= \led_output[4]~output_o\;

ww_led_output(5) <= \led_output[5]~output_o\;

ww_led_output(6) <= \led_output[6]~output_o\;

ww_led_output(7) <= \led_output[7]~output_o\;

ww_lcd1(0) <= \lcd1[0]~output_o\;

ww_lcd1(1) <= \lcd1[1]~output_o\;

ww_lcd1(2) <= \lcd1[2]~output_o\;

ww_lcd1(3) <= \lcd1[3]~output_o\;

ww_lcd1(4) <= \lcd1[4]~output_o\;

ww_lcd1(5) <= \lcd1[5]~output_o\;

ww_lcd1(6) <= \lcd1[6]~output_o\;

ww_lcd1(7) <= \lcd1[7]~output_o\;
END structure;


