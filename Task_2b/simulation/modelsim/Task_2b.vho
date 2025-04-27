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

-- DATE "11/05/2024 19:43:19"

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

ENTITY 	master IS
    PORT (
	clk_in : IN std_logic;
	miso_adc : IN std_logic;
	mosi_adc : OUT std_logic;
	mosi_dac : OUT std_logic;
	sclk_adc : OUT std_logic;
	sclk_dac : OUT std_logic;
	data_out : OUT std_logic_vector(9 DOWNTO 0);
	adc_cs : OUT std_logic;
	dac_cs : OUT std_logic
	);
END master;

-- Design Ports Information
-- mosi_adc	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mosi_dac	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclk_adc	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclk_dac	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[0]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[8]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[9]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_cs	=>  Location: PIN_78,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac_cs	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- miso_adc	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF master IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_miso_adc : std_logic;
SIGNAL ww_mosi_adc : std_logic;
SIGNAL ww_mosi_dac : std_logic;
SIGNAL ww_sclk_adc : std_logic;
SIGNAL ww_sclk_dac : std_logic;
SIGNAL ww_data_out : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_adc_cs : std_logic;
SIGNAL ww_dac_cs : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cs_adc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \mosi_adc~output_o\ : std_logic;
SIGNAL \mosi_dac~output_o\ : std_logic;
SIGNAL \sclk_adc~output_o\ : std_logic;
SIGNAL \sclk_dac~output_o\ : std_logic;
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \data_out[8]~output_o\ : std_logic;
SIGNAL \data_out[9]~output_o\ : std_logic;
SIGNAL \adc_cs~output_o\ : std_logic;
SIGNAL \dac_cs~output_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \miso_adc~input_o\ : std_logic;
SIGNAL \clk_counter[0]~32_combout\ : std_logic;
SIGNAL \clk_counter[1]~35\ : std_logic;
SIGNAL \clk_counter[2]~36_combout\ : std_logic;
SIGNAL \clk_counter[2]~37\ : std_logic;
SIGNAL \clk_counter[3]~38_combout\ : std_logic;
SIGNAL \clk_counter[3]~39\ : std_logic;
SIGNAL \clk_counter[4]~40_combout\ : std_logic;
SIGNAL \clk_counter[4]~41\ : std_logic;
SIGNAL \clk_counter[5]~42_combout\ : std_logic;
SIGNAL \clk_counter[5]~43\ : std_logic;
SIGNAL \clk_counter[6]~44_combout\ : std_logic;
SIGNAL \clk_counter[6]~45\ : std_logic;
SIGNAL \clk_counter[7]~46_combout\ : std_logic;
SIGNAL \clk_counter[7]~47\ : std_logic;
SIGNAL \clk_counter[8]~48_combout\ : std_logic;
SIGNAL \clk_counter[8]~49\ : std_logic;
SIGNAL \clk_counter[9]~50_combout\ : std_logic;
SIGNAL \clk_counter[9]~51\ : std_logic;
SIGNAL \clk_counter[10]~52_combout\ : std_logic;
SIGNAL \clk_counter[10]~53\ : std_logic;
SIGNAL \clk_counter[11]~54_combout\ : std_logic;
SIGNAL \clk_counter[11]~55\ : std_logic;
SIGNAL \clk_counter[12]~56_combout\ : std_logic;
SIGNAL \clk_counter[12]~57\ : std_logic;
SIGNAL \clk_counter[13]~58_combout\ : std_logic;
SIGNAL \clk_counter[13]~59\ : std_logic;
SIGNAL \clk_counter[14]~60_combout\ : std_logic;
SIGNAL \clk_counter[14]~61\ : std_logic;
SIGNAL \clk_counter[15]~62_combout\ : std_logic;
SIGNAL \clk_counter[15]~63\ : std_logic;
SIGNAL \clk_counter[16]~64_combout\ : std_logic;
SIGNAL \clk_counter[16]~65\ : std_logic;
SIGNAL \clk_counter[17]~66_combout\ : std_logic;
SIGNAL \clk_counter[17]~67\ : std_logic;
SIGNAL \clk_counter[18]~68_combout\ : std_logic;
SIGNAL \clk_counter[18]~69\ : std_logic;
SIGNAL \clk_counter[19]~70_combout\ : std_logic;
SIGNAL \clk_counter[19]~71\ : std_logic;
SIGNAL \clk_counter[20]~72_combout\ : std_logic;
SIGNAL \clk_counter[20]~73\ : std_logic;
SIGNAL \clk_counter[21]~74_combout\ : std_logic;
SIGNAL \clk_counter[21]~75\ : std_logic;
SIGNAL \clk_counter[22]~76_combout\ : std_logic;
SIGNAL \clk_counter[22]~77\ : std_logic;
SIGNAL \clk_counter[23]~78_combout\ : std_logic;
SIGNAL \clk_counter[23]~79\ : std_logic;
SIGNAL \clk_counter[24]~80_combout\ : std_logic;
SIGNAL \clk_counter[24]~81\ : std_logic;
SIGNAL \clk_counter[25]~82_combout\ : std_logic;
SIGNAL \clk_counter[25]~83\ : std_logic;
SIGNAL \clk_counter[26]~84_combout\ : std_logic;
SIGNAL \clk_counter[26]~85\ : std_logic;
SIGNAL \clk_counter[27]~86_combout\ : std_logic;
SIGNAL \clk_counter[27]~87\ : std_logic;
SIGNAL \clk_counter[28]~88_combout\ : std_logic;
SIGNAL \clk_counter[28]~89\ : std_logic;
SIGNAL \clk_counter[29]~90_combout\ : std_logic;
SIGNAL \clk_counter[29]~91\ : std_logic;
SIGNAL \clk_counter[30]~92_combout\ : std_logic;
SIGNAL \clk_counter[30]~93\ : std_logic;
SIGNAL \clk_counter[31]~94_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \clk_counter[0]~33\ : std_logic;
SIGNAL \clk_counter[1]~34_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \cs_dac~0_combout\ : std_logic;
SIGNAL \cs_adc~0_combout\ : std_logic;
SIGNAL \cs_adc~q\ : std_logic;
SIGNAL \cs_dac~1_combout\ : std_logic;
SIGNAL \cs_dac~2_combout\ : std_logic;
SIGNAL \cs_dac~3_combout\ : std_logic;
SIGNAL \cs_dac~q\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \spi_data~20_combout\ : std_logic;
SIGNAL \spi_data~18_combout\ : std_logic;
SIGNAL \spi_data~17_combout\ : std_logic;
SIGNAL \spi_data~16_combout\ : std_logic;
SIGNAL \spi_control~0_combout\ : std_logic;
SIGNAL \spi_data~15_combout\ : std_logic;
SIGNAL \spi_data~14_combout\ : std_logic;
SIGNAL \spi_data~13_combout\ : std_logic;
SIGNAL \spi_data~12_combout\ : std_logic;
SIGNAL \spi_data~11_combout\ : std_logic;
SIGNAL \spi_data~10_combout\ : std_logic;
SIGNAL \spi_data~9_combout\ : std_logic;
SIGNAL \spi_data~8_combout\ : std_logic;
SIGNAL \spi_data~7_combout\ : std_logic;
SIGNAL \spi_data~6_combout\ : std_logic;
SIGNAL \spi_data~5_combout\ : std_logic;
SIGNAL \spi_data~19_combout\ : std_logic;
SIGNAL \spi_data~4_combout\ : std_logic;
SIGNAL \mosi_temp~2_combout\ : std_logic;
SIGNAL \mosi_temp~q\ : std_logic;
SIGNAL \cs_adc~clkctrl_outclk\ : std_logic;
SIGNAL \data_out[0]$latch~combout\ : std_logic;
SIGNAL \data_out[1]$latch~combout\ : std_logic;
SIGNAL \data_out[2]$latch~combout\ : std_logic;
SIGNAL \data_out[3]$latch~combout\ : std_logic;
SIGNAL \data_out[4]$latch~combout\ : std_logic;
SIGNAL \data_out[5]$latch~combout\ : std_logic;
SIGNAL \data_out[6]$latch~combout\ : std_logic;
SIGNAL \data_out[7]$latch~combout\ : std_logic;
SIGNAL \data_out[8]$latch~combout\ : std_logic;
SIGNAL \data_out[9]$latch~combout\ : std_logic;
SIGNAL clk_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL spi_data : std_logic_vector(16 DOWNTO 0);
SIGNAL adc_data : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_cs_dac~q\ : std_logic;
SIGNAL \ALT_INV_cs_adc~q\ : std_logic;
SIGNAL \ALT_INV_mosi_temp~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_in <= clk_in;
ww_miso_adc <= miso_adc;
mosi_adc <= ww_mosi_adc;
mosi_dac <= ww_mosi_dac;
sclk_adc <= ww_sclk_adc;
sclk_dac <= ww_sclk_dac;
data_out <= ww_data_out;
adc_cs <= ww_adc_cs;
dac_cs <= ww_dac_cs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_in~input_o\);

\cs_adc~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cs_adc~q\);
\ALT_INV_clk_in~inputclkctrl_outclk\ <= NOT \clk_in~inputclkctrl_outclk\;
\ALT_INV_cs_dac~q\ <= NOT \cs_dac~q\;
\ALT_INV_cs_adc~q\ <= NOT \cs_adc~q\;
\ALT_INV_mosi_temp~q\ <= NOT \mosi_temp~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y33_N24
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
	i => \ALT_INV_mosi_temp~q\,
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
	i => \ALT_INV_mosi_temp~q\,
	devoe => ww_devoe,
	o => \mosi_dac~output_o\);

-- Location: IOOBUF_X60_Y2_N23
\sclk_adc~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_in~input_o\,
	devoe => ww_devoe,
	o => \sclk_adc~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\sclk_dac~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_in~input_o\,
	devoe => ww_devoe,
	o => \sclk_dac~output_o\);

-- Location: IOOBUF_X25_Y26_N23
\data_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X25_Y29_N16
\data_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X25_Y29_N23
\data_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X25_Y27_N23
\data_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[3]$latch~combout\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X25_Y26_N16
\data_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[4]$latch~combout\,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X25_Y28_N23
\data_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[5]$latch~combout\,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X25_Y27_N16
\data_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[6]$latch~combout\,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X25_Y28_N16
\data_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[7]$latch~combout\,
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOOBUF_X19_Y21_N30
\data_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[8]$latch~combout\,
	devoe => ww_devoe,
	o => \data_out[8]~output_o\);

-- Location: IOOBUF_X19_Y21_N23
\data_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[9]$latch~combout\,
	devoe => ww_devoe,
	o => \data_out[9]~output_o\);

-- Location: IOOBUF_X60_Y8_N9
\adc_cs~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_cs_adc~q\,
	devoe => ww_devoe,
	o => \adc_cs~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\dac_cs~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_cs_dac~q\,
	devoe => ww_devoe,
	o => \dac_cs~output_o\);

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

-- Location: IOIBUF_X60_Y2_N1
\miso_adc~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_miso_adc,
	o => \miso_adc~input_o\);

-- Location: LCCOMB_X38_Y24_N0
\clk_counter[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[0]~32_combout\ = clk_counter(0) $ (VCC)
-- \clk_counter[0]~33\ = CARRY(clk_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(0),
	datad => VCC,
	combout => \clk_counter[0]~32_combout\,
	cout => \clk_counter[0]~33\);

-- Location: LCCOMB_X38_Y24_N2
\clk_counter[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[1]~34_combout\ = (clk_counter(1) & (!\clk_counter[0]~33\)) # (!clk_counter(1) & ((\clk_counter[0]~33\) # (GND)))
-- \clk_counter[1]~35\ = CARRY((!\clk_counter[0]~33\) # (!clk_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(1),
	datad => VCC,
	cin => \clk_counter[0]~33\,
	combout => \clk_counter[1]~34_combout\,
	cout => \clk_counter[1]~35\);

-- Location: LCCOMB_X38_Y24_N4
\clk_counter[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[2]~36_combout\ = (clk_counter(2) & (\clk_counter[1]~35\ $ (GND))) # (!clk_counter(2) & (!\clk_counter[1]~35\ & VCC))
-- \clk_counter[2]~37\ = CARRY((clk_counter(2) & !\clk_counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(2),
	datad => VCC,
	cin => \clk_counter[1]~35\,
	combout => \clk_counter[2]~36_combout\,
	cout => \clk_counter[2]~37\);

-- Location: FF_X38_Y24_N5
\clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[2]~36_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(2));

-- Location: LCCOMB_X38_Y24_N6
\clk_counter[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[3]~38_combout\ = (clk_counter(3) & (!\clk_counter[2]~37\)) # (!clk_counter(3) & ((\clk_counter[2]~37\) # (GND)))
-- \clk_counter[3]~39\ = CARRY((!\clk_counter[2]~37\) # (!clk_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(3),
	datad => VCC,
	cin => \clk_counter[2]~37\,
	combout => \clk_counter[3]~38_combout\,
	cout => \clk_counter[3]~39\);

-- Location: FF_X38_Y24_N7
\clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[3]~38_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(3));

-- Location: LCCOMB_X38_Y24_N8
\clk_counter[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[4]~40_combout\ = (clk_counter(4) & (\clk_counter[3]~39\ $ (GND))) # (!clk_counter(4) & (!\clk_counter[3]~39\ & VCC))
-- \clk_counter[4]~41\ = CARRY((clk_counter(4) & !\clk_counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(4),
	datad => VCC,
	cin => \clk_counter[3]~39\,
	combout => \clk_counter[4]~40_combout\,
	cout => \clk_counter[4]~41\);

-- Location: FF_X38_Y24_N9
\clk_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[4]~40_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(4));

-- Location: LCCOMB_X38_Y24_N10
\clk_counter[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[5]~42_combout\ = (clk_counter(5) & (!\clk_counter[4]~41\)) # (!clk_counter(5) & ((\clk_counter[4]~41\) # (GND)))
-- \clk_counter[5]~43\ = CARRY((!\clk_counter[4]~41\) # (!clk_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(5),
	datad => VCC,
	cin => \clk_counter[4]~41\,
	combout => \clk_counter[5]~42_combout\,
	cout => \clk_counter[5]~43\);

-- Location: FF_X38_Y24_N11
\clk_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[5]~42_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(5));

-- Location: LCCOMB_X38_Y24_N12
\clk_counter[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[6]~44_combout\ = (clk_counter(6) & (\clk_counter[5]~43\ $ (GND))) # (!clk_counter(6) & (!\clk_counter[5]~43\ & VCC))
-- \clk_counter[6]~45\ = CARRY((clk_counter(6) & !\clk_counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(6),
	datad => VCC,
	cin => \clk_counter[5]~43\,
	combout => \clk_counter[6]~44_combout\,
	cout => \clk_counter[6]~45\);

-- Location: FF_X38_Y24_N13
\clk_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[6]~44_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(6));

-- Location: LCCOMB_X38_Y24_N14
\clk_counter[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[7]~46_combout\ = (clk_counter(7) & (!\clk_counter[6]~45\)) # (!clk_counter(7) & ((\clk_counter[6]~45\) # (GND)))
-- \clk_counter[7]~47\ = CARRY((!\clk_counter[6]~45\) # (!clk_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(7),
	datad => VCC,
	cin => \clk_counter[6]~45\,
	combout => \clk_counter[7]~46_combout\,
	cout => \clk_counter[7]~47\);

-- Location: FF_X38_Y24_N15
\clk_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[7]~46_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(7));

-- Location: LCCOMB_X38_Y24_N16
\clk_counter[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[8]~48_combout\ = (clk_counter(8) & (\clk_counter[7]~47\ $ (GND))) # (!clk_counter(8) & (!\clk_counter[7]~47\ & VCC))
-- \clk_counter[8]~49\ = CARRY((clk_counter(8) & !\clk_counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(8),
	datad => VCC,
	cin => \clk_counter[7]~47\,
	combout => \clk_counter[8]~48_combout\,
	cout => \clk_counter[8]~49\);

-- Location: FF_X38_Y24_N17
\clk_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[8]~48_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(8));

-- Location: LCCOMB_X38_Y24_N18
\clk_counter[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[9]~50_combout\ = (clk_counter(9) & (!\clk_counter[8]~49\)) # (!clk_counter(9) & ((\clk_counter[8]~49\) # (GND)))
-- \clk_counter[9]~51\ = CARRY((!\clk_counter[8]~49\) # (!clk_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(9),
	datad => VCC,
	cin => \clk_counter[8]~49\,
	combout => \clk_counter[9]~50_combout\,
	cout => \clk_counter[9]~51\);

-- Location: FF_X38_Y24_N19
\clk_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[9]~50_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(9));

-- Location: LCCOMB_X38_Y24_N20
\clk_counter[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[10]~52_combout\ = (clk_counter(10) & (\clk_counter[9]~51\ $ (GND))) # (!clk_counter(10) & (!\clk_counter[9]~51\ & VCC))
-- \clk_counter[10]~53\ = CARRY((clk_counter(10) & !\clk_counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(10),
	datad => VCC,
	cin => \clk_counter[9]~51\,
	combout => \clk_counter[10]~52_combout\,
	cout => \clk_counter[10]~53\);

-- Location: FF_X38_Y24_N21
\clk_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[10]~52_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(10));

-- Location: LCCOMB_X38_Y24_N22
\clk_counter[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[11]~54_combout\ = (clk_counter(11) & (!\clk_counter[10]~53\)) # (!clk_counter(11) & ((\clk_counter[10]~53\) # (GND)))
-- \clk_counter[11]~55\ = CARRY((!\clk_counter[10]~53\) # (!clk_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(11),
	datad => VCC,
	cin => \clk_counter[10]~53\,
	combout => \clk_counter[11]~54_combout\,
	cout => \clk_counter[11]~55\);

-- Location: FF_X38_Y24_N23
\clk_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[11]~54_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(11));

-- Location: LCCOMB_X38_Y24_N24
\clk_counter[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[12]~56_combout\ = (clk_counter(12) & (\clk_counter[11]~55\ $ (GND))) # (!clk_counter(12) & (!\clk_counter[11]~55\ & VCC))
-- \clk_counter[12]~57\ = CARRY((clk_counter(12) & !\clk_counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(12),
	datad => VCC,
	cin => \clk_counter[11]~55\,
	combout => \clk_counter[12]~56_combout\,
	cout => \clk_counter[12]~57\);

-- Location: FF_X38_Y24_N25
\clk_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[12]~56_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(12));

-- Location: LCCOMB_X38_Y24_N26
\clk_counter[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[13]~58_combout\ = (clk_counter(13) & (!\clk_counter[12]~57\)) # (!clk_counter(13) & ((\clk_counter[12]~57\) # (GND)))
-- \clk_counter[13]~59\ = CARRY((!\clk_counter[12]~57\) # (!clk_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(13),
	datad => VCC,
	cin => \clk_counter[12]~57\,
	combout => \clk_counter[13]~58_combout\,
	cout => \clk_counter[13]~59\);

-- Location: FF_X38_Y24_N27
\clk_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[13]~58_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(13));

-- Location: LCCOMB_X38_Y24_N28
\clk_counter[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[14]~60_combout\ = (clk_counter(14) & (\clk_counter[13]~59\ $ (GND))) # (!clk_counter(14) & (!\clk_counter[13]~59\ & VCC))
-- \clk_counter[14]~61\ = CARRY((clk_counter(14) & !\clk_counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(14),
	datad => VCC,
	cin => \clk_counter[13]~59\,
	combout => \clk_counter[14]~60_combout\,
	cout => \clk_counter[14]~61\);

-- Location: FF_X38_Y24_N29
\clk_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[14]~60_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(14));

-- Location: LCCOMB_X38_Y24_N30
\clk_counter[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[15]~62_combout\ = (clk_counter(15) & (!\clk_counter[14]~61\)) # (!clk_counter(15) & ((\clk_counter[14]~61\) # (GND)))
-- \clk_counter[15]~63\ = CARRY((!\clk_counter[14]~61\) # (!clk_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(15),
	datad => VCC,
	cin => \clk_counter[14]~61\,
	combout => \clk_counter[15]~62_combout\,
	cout => \clk_counter[15]~63\);

-- Location: FF_X38_Y24_N31
\clk_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[15]~62_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(15));

-- Location: LCCOMB_X38_Y23_N0
\clk_counter[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[16]~64_combout\ = (clk_counter(16) & (\clk_counter[15]~63\ $ (GND))) # (!clk_counter(16) & (!\clk_counter[15]~63\ & VCC))
-- \clk_counter[16]~65\ = CARRY((clk_counter(16) & !\clk_counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(16),
	datad => VCC,
	cin => \clk_counter[15]~63\,
	combout => \clk_counter[16]~64_combout\,
	cout => \clk_counter[16]~65\);

-- Location: FF_X38_Y23_N1
\clk_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[16]~64_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(16));

-- Location: LCCOMB_X38_Y23_N2
\clk_counter[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[17]~66_combout\ = (clk_counter(17) & (!\clk_counter[16]~65\)) # (!clk_counter(17) & ((\clk_counter[16]~65\) # (GND)))
-- \clk_counter[17]~67\ = CARRY((!\clk_counter[16]~65\) # (!clk_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(17),
	datad => VCC,
	cin => \clk_counter[16]~65\,
	combout => \clk_counter[17]~66_combout\,
	cout => \clk_counter[17]~67\);

-- Location: FF_X38_Y23_N3
\clk_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[17]~66_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(17));

-- Location: LCCOMB_X38_Y23_N4
\clk_counter[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[18]~68_combout\ = (clk_counter(18) & (\clk_counter[17]~67\ $ (GND))) # (!clk_counter(18) & (!\clk_counter[17]~67\ & VCC))
-- \clk_counter[18]~69\ = CARRY((clk_counter(18) & !\clk_counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(18),
	datad => VCC,
	cin => \clk_counter[17]~67\,
	combout => \clk_counter[18]~68_combout\,
	cout => \clk_counter[18]~69\);

-- Location: FF_X38_Y23_N5
\clk_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[18]~68_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(18));

-- Location: LCCOMB_X38_Y23_N6
\clk_counter[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[19]~70_combout\ = (clk_counter(19) & (!\clk_counter[18]~69\)) # (!clk_counter(19) & ((\clk_counter[18]~69\) # (GND)))
-- \clk_counter[19]~71\ = CARRY((!\clk_counter[18]~69\) # (!clk_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(19),
	datad => VCC,
	cin => \clk_counter[18]~69\,
	combout => \clk_counter[19]~70_combout\,
	cout => \clk_counter[19]~71\);

-- Location: FF_X38_Y23_N7
\clk_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[19]~70_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(19));

-- Location: LCCOMB_X38_Y23_N8
\clk_counter[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[20]~72_combout\ = (clk_counter(20) & (\clk_counter[19]~71\ $ (GND))) # (!clk_counter(20) & (!\clk_counter[19]~71\ & VCC))
-- \clk_counter[20]~73\ = CARRY((clk_counter(20) & !\clk_counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(20),
	datad => VCC,
	cin => \clk_counter[19]~71\,
	combout => \clk_counter[20]~72_combout\,
	cout => \clk_counter[20]~73\);

-- Location: FF_X38_Y23_N9
\clk_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[20]~72_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(20));

-- Location: LCCOMB_X38_Y23_N10
\clk_counter[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[21]~74_combout\ = (clk_counter(21) & (!\clk_counter[20]~73\)) # (!clk_counter(21) & ((\clk_counter[20]~73\) # (GND)))
-- \clk_counter[21]~75\ = CARRY((!\clk_counter[20]~73\) # (!clk_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(21),
	datad => VCC,
	cin => \clk_counter[20]~73\,
	combout => \clk_counter[21]~74_combout\,
	cout => \clk_counter[21]~75\);

-- Location: FF_X38_Y23_N11
\clk_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[21]~74_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(21));

-- Location: LCCOMB_X38_Y23_N12
\clk_counter[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[22]~76_combout\ = (clk_counter(22) & (\clk_counter[21]~75\ $ (GND))) # (!clk_counter(22) & (!\clk_counter[21]~75\ & VCC))
-- \clk_counter[22]~77\ = CARRY((clk_counter(22) & !\clk_counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(22),
	datad => VCC,
	cin => \clk_counter[21]~75\,
	combout => \clk_counter[22]~76_combout\,
	cout => \clk_counter[22]~77\);

-- Location: FF_X38_Y23_N13
\clk_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[22]~76_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(22));

-- Location: LCCOMB_X38_Y23_N14
\clk_counter[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[23]~78_combout\ = (clk_counter(23) & (!\clk_counter[22]~77\)) # (!clk_counter(23) & ((\clk_counter[22]~77\) # (GND)))
-- \clk_counter[23]~79\ = CARRY((!\clk_counter[22]~77\) # (!clk_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(23),
	datad => VCC,
	cin => \clk_counter[22]~77\,
	combout => \clk_counter[23]~78_combout\,
	cout => \clk_counter[23]~79\);

-- Location: FF_X38_Y23_N15
\clk_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[23]~78_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(23));

-- Location: LCCOMB_X38_Y23_N16
\clk_counter[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[24]~80_combout\ = (clk_counter(24) & (\clk_counter[23]~79\ $ (GND))) # (!clk_counter(24) & (!\clk_counter[23]~79\ & VCC))
-- \clk_counter[24]~81\ = CARRY((clk_counter(24) & !\clk_counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(24),
	datad => VCC,
	cin => \clk_counter[23]~79\,
	combout => \clk_counter[24]~80_combout\,
	cout => \clk_counter[24]~81\);

-- Location: FF_X38_Y23_N17
\clk_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[24]~80_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(24));

-- Location: LCCOMB_X38_Y23_N18
\clk_counter[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[25]~82_combout\ = (clk_counter(25) & (!\clk_counter[24]~81\)) # (!clk_counter(25) & ((\clk_counter[24]~81\) # (GND)))
-- \clk_counter[25]~83\ = CARRY((!\clk_counter[24]~81\) # (!clk_counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(25),
	datad => VCC,
	cin => \clk_counter[24]~81\,
	combout => \clk_counter[25]~82_combout\,
	cout => \clk_counter[25]~83\);

-- Location: FF_X38_Y23_N19
\clk_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[25]~82_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(25));

-- Location: LCCOMB_X38_Y23_N20
\clk_counter[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[26]~84_combout\ = (clk_counter(26) & (\clk_counter[25]~83\ $ (GND))) # (!clk_counter(26) & (!\clk_counter[25]~83\ & VCC))
-- \clk_counter[26]~85\ = CARRY((clk_counter(26) & !\clk_counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(26),
	datad => VCC,
	cin => \clk_counter[25]~83\,
	combout => \clk_counter[26]~84_combout\,
	cout => \clk_counter[26]~85\);

-- Location: FF_X38_Y23_N21
\clk_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[26]~84_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(26));

-- Location: LCCOMB_X38_Y23_N22
\clk_counter[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[27]~86_combout\ = (clk_counter(27) & (!\clk_counter[26]~85\)) # (!clk_counter(27) & ((\clk_counter[26]~85\) # (GND)))
-- \clk_counter[27]~87\ = CARRY((!\clk_counter[26]~85\) # (!clk_counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(27),
	datad => VCC,
	cin => \clk_counter[26]~85\,
	combout => \clk_counter[27]~86_combout\,
	cout => \clk_counter[27]~87\);

-- Location: FF_X38_Y23_N23
\clk_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[27]~86_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(27));

-- Location: LCCOMB_X38_Y23_N24
\clk_counter[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[28]~88_combout\ = (clk_counter(28) & (\clk_counter[27]~87\ $ (GND))) # (!clk_counter(28) & (!\clk_counter[27]~87\ & VCC))
-- \clk_counter[28]~89\ = CARRY((clk_counter(28) & !\clk_counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(28),
	datad => VCC,
	cin => \clk_counter[27]~87\,
	combout => \clk_counter[28]~88_combout\,
	cout => \clk_counter[28]~89\);

-- Location: FF_X38_Y23_N25
\clk_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[28]~88_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(28));

-- Location: LCCOMB_X38_Y23_N26
\clk_counter[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[29]~90_combout\ = (clk_counter(29) & (!\clk_counter[28]~89\)) # (!clk_counter(29) & ((\clk_counter[28]~89\) # (GND)))
-- \clk_counter[29]~91\ = CARRY((!\clk_counter[28]~89\) # (!clk_counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(29),
	datad => VCC,
	cin => \clk_counter[28]~89\,
	combout => \clk_counter[29]~90_combout\,
	cout => \clk_counter[29]~91\);

-- Location: FF_X38_Y23_N27
\clk_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[29]~90_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(29));

-- Location: LCCOMB_X38_Y23_N28
\clk_counter[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[30]~92_combout\ = (clk_counter(30) & (\clk_counter[29]~91\ $ (GND))) # (!clk_counter(30) & (!\clk_counter[29]~91\ & VCC))
-- \clk_counter[30]~93\ = CARRY((clk_counter(30) & !\clk_counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(30),
	datad => VCC,
	cin => \clk_counter[29]~91\,
	combout => \clk_counter[30]~92_combout\,
	cout => \clk_counter[30]~93\);

-- Location: FF_X38_Y23_N29
\clk_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[30]~92_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(30));

-- Location: LCCOMB_X38_Y23_N30
\clk_counter[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[31]~94_combout\ = clk_counter(31) $ (\clk_counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(31),
	cin => \clk_counter[30]~93\,
	combout => \clk_counter[31]~94_combout\);

-- Location: FF_X38_Y23_N31
\clk_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[31]~94_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(31));

-- Location: LCCOMB_X39_Y23_N22
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!clk_counter(23) & (!clk_counter(22) & (!clk_counter(24) & !clk_counter(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(23),
	datab => clk_counter(22),
	datac => clk_counter(24),
	datad => clk_counter(25),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X39_Y23_N0
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!clk_counter(29) & (!clk_counter(28) & (!clk_counter(27) & !clk_counter(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(29),
	datab => clk_counter(28),
	datac => clk_counter(27),
	datad => clk_counter(26),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X39_Y23_N8
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!clk_counter(30) & (\Equal0~5_combout\ & \Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(30),
	datac => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X37_Y23_N6
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!clk_counter(3) & (!clk_counter(2) & ((!clk_counter(1)) # (!clk_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(3),
	datab => clk_counter(2),
	datac => clk_counter(0),
	datad => clk_counter(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y23_N4
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!clk_counter(4) & \LessThan0~0_combout\)) # (!clk_counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(4),
	datac => clk_counter(5),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X39_Y23_N26
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!clk_counter(20) & (!clk_counter(18) & (!clk_counter(19) & !clk_counter(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(20),
	datab => clk_counter(18),
	datac => clk_counter(19),
	datad => clk_counter(21),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X39_Y23_N4
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!clk_counter(9) & (!clk_counter(6) & (!clk_counter(8) & !clk_counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(9),
	datab => clk_counter(6),
	datac => clk_counter(8),
	datad => clk_counter(7),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X39_Y23_N30
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!clk_counter(13) & (!clk_counter(11) & (!clk_counter(12) & !clk_counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(13),
	datab => clk_counter(11),
	datac => clk_counter(12),
	datad => clk_counter(10),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X39_Y23_N6
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!clk_counter(17) & (!clk_counter(15) & (!clk_counter(14) & !clk_counter(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(17),
	datab => clk_counter(15),
	datac => clk_counter(14),
	datad => clk_counter(16),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X39_Y23_N12
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X37_Y23_N10
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!clk_counter(31) & (((!\Equal0~4_combout\) # (!\LessThan0~1_combout\)) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(31),
	datab => \Equal0~7_combout\,
	datac => \LessThan0~1_combout\,
	datad => \Equal0~4_combout\,
	combout => \LessThan0~2_combout\);

-- Location: FF_X38_Y24_N1
\clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[0]~32_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(0));

-- Location: FF_X38_Y24_N3
\clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \clk_counter[1]~34_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(1));

-- Location: LCCOMB_X39_Y23_N28
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (clk_counter(1) & !clk_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(1),
	datad => clk_counter(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X37_Y23_N20
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!clk_counter(5) & !clk_counter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => clk_counter(5),
	datad => clk_counter(4),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X39_Y23_N24
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!clk_counter(31) & (!clk_counter(2) & !clk_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(31),
	datac => clk_counter(2),
	datad => clk_counter(3),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X39_Y23_N18
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (\Equal0~7_combout\ & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X39_Y23_N14
\Equal0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (clk_counter(0) & (!clk_counter(1) & (\Equal0~8_combout\ & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(0),
	datab => clk_counter(1),
	datac => \Equal0~8_combout\,
	datad => \Equal0~10_combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X39_Y23_N2
\cs_dac~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cs_dac~0_combout\ = (clk_counter(4) & (!clk_counter(5) & \Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(4),
	datab => clk_counter(5),
	datad => \Equal0~10_combout\,
	combout => \cs_dac~0_combout\);

-- Location: LCCOMB_X39_Y23_N10
\cs_adc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cs_adc~0_combout\ = (\Equal0~11_combout\) # ((\cs_adc~q\ & ((!\cs_dac~0_combout\) # (!\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cs_adc~q\,
	datab => \Equal1~0_combout\,
	datac => \Equal0~11_combout\,
	datad => \cs_dac~0_combout\,
	combout => \cs_adc~0_combout\);

-- Location: FF_X39_Y23_N29
cs_adc : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	asdata => \cs_adc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cs_adc~q\);

-- Location: FF_X33_Y23_N5
\adc_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \miso_adc~input_o\,
	sload => VCC,
	ena => \cs_adc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_data(0));

-- Location: FF_X33_Y23_N15
\adc_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => adc_data(0),
	sload => VCC,
	ena => \cs_adc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_data(1));

-- Location: FF_X33_Y23_N31
\adc_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => adc_data(1),
	sload => VCC,
	ena => \cs_adc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_data(2));

-- Location: FF_X33_Y23_N9
\adc_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => adc_data(2),
	sload => VCC,
	ena => \cs_adc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_data(3));

-- Location: FF_X33_Y23_N25
\adc_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => adc_data(3),
	sload => VCC,
	ena => \cs_adc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_data(4));

-- Location: FF_X33_Y23_N27
\adc_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => adc_data(4),
	sload => VCC,
	ena => \cs_adc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_data(5));

-- Location: FF_X33_Y23_N23
\adc_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => adc_data(5),
	sload => VCC,
	ena => \cs_adc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_data(6));

-- Location: FF_X33_Y23_N17
\adc_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => adc_data(6),
	sload => VCC,
	ena => \cs_adc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_data(7));

-- Location: LCCOMB_X37_Y23_N16
\cs_dac~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cs_dac~1_combout\ = (clk_counter(5) & (!clk_counter(4) & (clk_counter(0) & clk_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(5),
	datab => clk_counter(4),
	datac => clk_counter(0),
	datad => clk_counter(1),
	combout => \cs_dac~1_combout\);

-- Location: LCCOMB_X39_Y23_N16
\cs_dac~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cs_dac~2_combout\ = (((\Equal0~11_combout\) # (!\cs_dac~0_combout\)) # (!clk_counter(1))) # (!clk_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(0),
	datab => clk_counter(1),
	datac => \Equal0~11_combout\,
	datad => \cs_dac~0_combout\,
	combout => \cs_dac~2_combout\);

-- Location: LCCOMB_X39_Y23_N20
\cs_dac~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cs_dac~3_combout\ = (\Equal0~10_combout\ & (!\cs_dac~1_combout\ & ((\cs_dac~q\) # (!\cs_dac~2_combout\)))) # (!\Equal0~10_combout\ & (((\cs_dac~q\) # (!\cs_dac~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \cs_dac~1_combout\,
	datac => \cs_dac~q\,
	datad => \cs_dac~2_combout\,
	combout => \cs_dac~3_combout\);

-- Location: FF_X39_Y23_N21
cs_dac : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \cs_dac~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cs_dac~q\);

-- Location: LCCOMB_X37_Y23_N22
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!clk_counter(2)) # (!clk_counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(3),
	datad => clk_counter(2),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X37_Y23_N8
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\Equal0~8_combout\ & (((\LessThan1~0_combout\) # (!clk_counter(0))) # (!clk_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(1),
	datab => clk_counter(0),
	datac => \LessThan1~0_combout\,
	datad => \Equal0~8_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X37_Y23_N30
\LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (clk_counter(31)) # ((\Equal0~7_combout\ & (\LessThan1~1_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(31),
	datab => \Equal0~7_combout\,
	datac => \LessThan1~1_combout\,
	datad => \Equal0~4_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X34_Y23_N2
\spi_data~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_data~20_combout\ = (\cs_dac~q\ & (!\mosi_temp~q\)) # (!\cs_dac~q\ & ((\cs_adc~q\ & (!\mosi_temp~q\)) # (!\cs_adc~q\ & ((\LessThan1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi_temp~q\,
	datab => \cs_dac~q\,
	datac => \cs_adc~q\,
	datad => \LessThan1~2_combout\,
	combout => \spi_data~20_combout\);

-- Location: FF_X34_Y23_N3
\spi_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \spi_data~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(0));

-- Location: LCCOMB_X34_Y23_N28
\spi_data~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_data~18_combout\ = (spi_data(0) & ((\cs_dac~q\) # (\cs_adc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cs_dac~q\,
	datac => spi_data(0),
	datad => \cs_adc~q\,
	combout => \spi_data~18_combout\);

-- Location: FF_X34_Y23_N1
\spi_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	asdata => \spi_data~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(1));

-- Location: LCCOMB_X34_Y23_N0
\spi_data~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_data~17_combout\ = (spi_data(1) & ((\cs_dac~q\) # (\cs_adc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cs_dac~q\,
	datac => spi_data(1),
	datad => \cs_adc~q\,
	combout => \spi_data~17_combout\);

-- Location: FF_X34_Y23_N11
\spi_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	asdata => \spi_data~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(2));

-- Location: LCCOMB_X34_Y23_N10
\spi_data~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_data~16_combout\ = (spi_data(2) & ((\cs_dac~q\) # (\cs_adc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cs_dac~q\,
	datac => spi_data(2),
	datad => \cs_adc~q\,
	combout => \spi_data~16_combout\);

-- Location: FF_X34_Y23_N5
\spi_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	asdata => \spi_data~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(3));

-- Location: LCCOMB_X34_Y23_N24
\spi_control~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_control~0_combout\ = (!\cs_dac~q\ & !\cs_adc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cs_dac~q\,
	datad => \cs_adc~q\,
	combout => \spi_control~0_combout\);

-- Location: LCCOMB_X33_Y23_N2
\spi_data~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_data~15_combout\ = (\spi_control~0_combout\ & (((adc_data(0) & !\LessThan1~2_combout\)))) # (!\spi_control~0_combout\ & (spi_data(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(3),
	datab => \spi_control~0_combout\,
	datac => adc_data(0),
	datad => \LessThan1~2_combout\,
	combout => \spi_data~15_combout\);

-- Location: FF_X33_Y23_N3
\spi_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \spi_data~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(4));

-- Location: LCCOMB_X33_Y23_N12
\spi_data~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_data~14_combout\ = (\spi_control~0_combout\ & (((adc_data(1) & !\LessThan1~2_combout\)))) # (!\spi_control~0_combout\ & (spi_data(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(4),
	datab => \spi_control~0_combout\,
	datac => adc_data(1),
	datad => \LessThan1~2_combout\,
	combout => \spi_data~14_combout\);

-- Location: FF_X33_Y23_N13
\spi_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \spi_data~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(5));

-- Location: LCCOMB_X33_Y23_N20
\spi_data~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_data~13_combout\ = (\spi_control~0_combout\ & (((adc_data(2) & !\LessThan1~2_combout\)))) # (!\spi_control~0_combout\ & (spi_data(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(5),
	datab => \spi_control~0_combout\,
	datac => adc_data(2),
	datad => \LessThan1~2_combout\,
	combout => \spi_data~13_combout\);

-- Location: FF_X33_Y23_N21
\spi_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \spi_data~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(6));

-- Location: LCCOMB_X33_Y23_N10
\spi_data~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_data~12_combout\ = (\spi_control~0_combout\ & (((adc_data(3) & !\LessThan1~2_combout\)))) # (!\spi_control~0_combout\ & (spi_data(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(6),
	datab => \spi_control~0_combout\,
	datac => adc_data(3),
	datad => \LessThan1~2_combout\,
	combout => \spi_data~12_combout\);

-- Location: FF_X33_Y23_N11
\spi_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \spi_data~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(7));

-- Location: LCCOMB_X33_Y23_N6
\spi_data~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_data~11_combout\ = (\spi_control~0_combout\ & (((adc_data(4) & !\LessThan1~2_combout\)))) # (!\spi_control~0_combout\ & (spi_data(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(7),
	datab => \spi_control~0_combout\,
	datac => adc_data(4),
	datad => \LessThan1~2_combout\,
	combout => \spi_data~11_combout\);

-- Location: FF_X33_Y23_N7
\spi_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \spi_data~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(8));

-- Location: LCCOMB_X33_Y23_N28
\spi_data~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_data~10_combout\ = (\spi_control~0_combout\ & (((adc_data(5) & !\LessThan1~2_combout\)))) # (!\spi_control~0_combout\ & (spi_data(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(8),
	datab => \spi_control~0_combout\,
	datac => adc_data(5),
	datad => \LessThan1~2_combout\,
	combout => \spi_data~10_combout\);

-- Location: FF_X33_Y23_N29
\spi_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \spi_data~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(9));

-- Location: LCCOMB_X33_Y23_N18
\spi_data~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_data~9_combout\ = (\spi_control~0_combout\ & (((adc_data(6) & !\LessThan1~2_combout\)))) # (!\spi_control~0_combout\ & (spi_data(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(9),
	datab => \spi_control~0_combout\,
	datac => adc_data(6),
	datad => \LessThan1~2_combout\,
	combout => \spi_data~9_combout\);

-- Location: FF_X33_Y23_N19
\spi_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \spi_data~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(10));

-- Location: LCCOMB_X34_Y23_N6
\spi_data~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_data~8_combout\ = (\spi_control~0_combout\ & (adc_data(7) & ((!\LessThan1~2_combout\)))) # (!\spi_control~0_combout\ & (((spi_data(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => adc_data(7),
	datab => spi_data(10),
	datac => \spi_control~0_combout\,
	datad => \LessThan1~2_combout\,
	combout => \spi_data~8_combout\);

-- Location: FF_X34_Y23_N7
\spi_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \spi_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(11));

-- Location: FF_X34_Y23_N15
\adc_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => adc_data(7),
	sload => VCC,
	ena => \cs_adc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_data(8));

-- Location: LCCOMB_X34_Y23_N8
\spi_data~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_data~7_combout\ = (\spi_control~0_combout\ & (((adc_data(8) & !\LessThan1~2_combout\)))) # (!\spi_control~0_combout\ & (spi_data(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(11),
	datab => adc_data(8),
	datac => \spi_control~0_combout\,
	datad => \LessThan1~2_combout\,
	combout => \spi_data~7_combout\);

-- Location: FF_X34_Y23_N9
\spi_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \spi_data~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(12));

-- Location: FF_X34_Y23_N17
\adc_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => adc_data(8),
	sload => VCC,
	ena => \cs_adc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_data(9));

-- Location: LCCOMB_X34_Y23_N26
\spi_data~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_data~6_combout\ = (\spi_control~0_combout\ & (((adc_data(9) & !\LessThan1~2_combout\)))) # (!\spi_control~0_combout\ & (spi_data(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(12),
	datab => adc_data(9),
	datac => \spi_control~0_combout\,
	datad => \LessThan1~2_combout\,
	combout => \spi_data~6_combout\);

-- Location: FF_X34_Y23_N27
\spi_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \spi_data~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(13));

-- Location: LCCOMB_X34_Y23_N12
\spi_data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_data~5_combout\ = (\cs_dac~q\ & (spi_data(13))) # (!\cs_dac~q\ & ((\cs_adc~q\ & (spi_data(13))) # (!\cs_adc~q\ & ((!\LessThan1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(13),
	datab => \cs_dac~q\,
	datac => \cs_adc~q\,
	datad => \LessThan1~2_combout\,
	combout => \spi_data~5_combout\);

-- Location: FF_X34_Y23_N13
\spi_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \spi_data~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(14));

-- Location: LCCOMB_X34_Y23_N30
\spi_data~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_data~19_combout\ = (\cs_dac~q\ & (spi_data(14))) # (!\cs_dac~q\ & ((\cs_adc~q\ & (spi_data(14))) # (!\cs_adc~q\ & ((!\LessThan1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(14),
	datab => \cs_dac~q\,
	datac => \cs_adc~q\,
	datad => \LessThan1~2_combout\,
	combout => \spi_data~19_combout\);

-- Location: FF_X34_Y23_N31
\spi_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \spi_data~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(15));

-- Location: LCCOMB_X34_Y23_N14
\spi_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_data~4_combout\ = (spi_data(15)) # ((!\cs_dac~q\ & !\cs_adc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(15),
	datab => \cs_dac~q\,
	datad => \cs_adc~q\,
	combout => \spi_data~4_combout\);

-- Location: FF_X34_Y23_N19
\spi_data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	asdata => \spi_data~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(16));

-- Location: LCCOMB_X34_Y23_N20
\mosi_temp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mosi_temp~2_combout\ = (\cs_dac~q\ & (!spi_data(16))) # (!\cs_dac~q\ & ((\cs_adc~q\ & (!spi_data(16))) # (!\cs_adc~q\ & ((!\LessThan1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(16),
	datab => \cs_dac~q\,
	datac => \cs_adc~q\,
	datad => \LessThan1~2_combout\,
	combout => \mosi_temp~2_combout\);

-- Location: FF_X34_Y23_N21
mosi_temp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \mosi_temp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mosi_temp~q\);

-- Location: CLKCTRL_G9
\cs_adc~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cs_adc~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cs_adc~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y23_N4
\data_out[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out[0]$latch~combout\ = (GLOBAL(\cs_adc~clkctrl_outclk\) & (\data_out[0]$latch~combout\)) # (!GLOBAL(\cs_adc~clkctrl_outclk\) & ((adc_data(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[0]$latch~combout\,
	datac => adc_data(0),
	datad => \cs_adc~clkctrl_outclk\,
	combout => \data_out[0]$latch~combout\);

-- Location: LCCOMB_X33_Y23_N14
\data_out[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out[1]$latch~combout\ = (GLOBAL(\cs_adc~clkctrl_outclk\) & (\data_out[1]$latch~combout\)) # (!GLOBAL(\cs_adc~clkctrl_outclk\) & ((adc_data(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[1]$latch~combout\,
	datac => adc_data(1),
	datad => \cs_adc~clkctrl_outclk\,
	combout => \data_out[1]$latch~combout\);

-- Location: LCCOMB_X33_Y23_N30
\data_out[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out[2]$latch~combout\ = (GLOBAL(\cs_adc~clkctrl_outclk\) & (\data_out[2]$latch~combout\)) # (!GLOBAL(\cs_adc~clkctrl_outclk\) & ((adc_data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[2]$latch~combout\,
	datac => adc_data(2),
	datad => \cs_adc~clkctrl_outclk\,
	combout => \data_out[2]$latch~combout\);

-- Location: LCCOMB_X33_Y23_N8
\data_out[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out[3]$latch~combout\ = (GLOBAL(\cs_adc~clkctrl_outclk\) & (\data_out[3]$latch~combout\)) # (!GLOBAL(\cs_adc~clkctrl_outclk\) & ((adc_data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[3]$latch~combout\,
	datac => adc_data(3),
	datad => \cs_adc~clkctrl_outclk\,
	combout => \data_out[3]$latch~combout\);

-- Location: LCCOMB_X33_Y23_N24
\data_out[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out[4]$latch~combout\ = (GLOBAL(\cs_adc~clkctrl_outclk\) & (\data_out[4]$latch~combout\)) # (!GLOBAL(\cs_adc~clkctrl_outclk\) & ((adc_data(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[4]$latch~combout\,
	datac => adc_data(4),
	datad => \cs_adc~clkctrl_outclk\,
	combout => \data_out[4]$latch~combout\);

-- Location: LCCOMB_X33_Y23_N0
\data_out[5]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out[5]$latch~combout\ = (GLOBAL(\cs_adc~clkctrl_outclk\) & (\data_out[5]$latch~combout\)) # (!GLOBAL(\cs_adc~clkctrl_outclk\) & ((adc_data(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[5]$latch~combout\,
	datac => adc_data(5),
	datad => \cs_adc~clkctrl_outclk\,
	combout => \data_out[5]$latch~combout\);

-- Location: LCCOMB_X33_Y23_N22
\data_out[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out[6]$latch~combout\ = (GLOBAL(\cs_adc~clkctrl_outclk\) & (\data_out[6]$latch~combout\)) # (!GLOBAL(\cs_adc~clkctrl_outclk\) & ((adc_data(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[6]$latch~combout\,
	datac => adc_data(6),
	datad => \cs_adc~clkctrl_outclk\,
	combout => \data_out[6]$latch~combout\);

-- Location: LCCOMB_X33_Y23_N16
\data_out[7]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out[7]$latch~combout\ = (GLOBAL(\cs_adc~clkctrl_outclk\) & (\data_out[7]$latch~combout\)) # (!GLOBAL(\cs_adc~clkctrl_outclk\) & ((adc_data(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[7]$latch~combout\,
	datac => adc_data(7),
	datad => \cs_adc~clkctrl_outclk\,
	combout => \data_out[7]$latch~combout\);

-- Location: LCCOMB_X34_Y23_N22
\data_out[8]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out[8]$latch~combout\ = (GLOBAL(\cs_adc~clkctrl_outclk\) & ((\data_out[8]$latch~combout\))) # (!GLOBAL(\cs_adc~clkctrl_outclk\) & (adc_data(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => adc_data(8),
	datac => \data_out[8]$latch~combout\,
	datad => \cs_adc~clkctrl_outclk\,
	combout => \data_out[8]$latch~combout\);

-- Location: LCCOMB_X34_Y23_N18
\data_out[9]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_out[9]$latch~combout\ = (GLOBAL(\cs_adc~clkctrl_outclk\) & ((\data_out[9]$latch~combout\))) # (!GLOBAL(\cs_adc~clkctrl_outclk\) & (adc_data(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => adc_data(9),
	datab => \data_out[9]$latch~combout\,
	datad => \cs_adc~clkctrl_outclk\,
	combout => \data_out[9]$latch~combout\);

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

ww_sclk_adc <= \sclk_adc~output_o\;

ww_sclk_dac <= \sclk_dac~output_o\;

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;

ww_data_out(8) <= \data_out[8]~output_o\;

ww_data_out(9) <= \data_out[9]~output_o\;

ww_adc_cs <= \adc_cs~output_o\;

ww_dac_cs <= \dac_cs~output_o\;
END structure;


