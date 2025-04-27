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

-- DATE "10/23/2024 00:28:58"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
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
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


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

ENTITY 	spi_master IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	miso : IN std_logic;
	sclk : BUFFER std_logic;
	mosi : BUFFER std_logic;
	cs : BUFFER std_logic;
	data_out : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END spi_master;

-- Design Ports Information
-- sclk	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mosi	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cs	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- miso	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF spi_master IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_miso : std_logic;
SIGNAL ww_sclk : std_logic;
SIGNAL ww_mosi : std_logic;
SIGNAL ww_cs : std_logic;
SIGNAL ww_data_out : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \sclk~output_o\ : std_logic;
SIGNAL \mosi~output_o\ : std_logic;
SIGNAL \cs~output_o\ : std_logic;
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \bit_count[31]~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~94_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~91_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~79_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~73_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~67_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \busy~0_combout\ : std_logic;
SIGNAL \busy~q\ : std_logic;
SIGNAL \sclk_internal~0_combout\ : std_logic;
SIGNAL \sclk_internal~q\ : std_logic;
SIGNAL \master_data[0]~feeder_combout\ : std_logic;
SIGNAL \master_data[2]~0_combout\ : std_logic;
SIGNAL \master_data[1]~2_combout\ : std_logic;
SIGNAL \master_data[2]~1_combout\ : std_logic;
SIGNAL \mosi~0_combout\ : std_logic;
SIGNAL \mosi~reg0_q\ : std_logic;
SIGNAL \cs~2_combout\ : std_logic;
SIGNAL \cs~3_combout\ : std_logic;
SIGNAL \cs~reg0_q\ : std_logic;
SIGNAL \miso~input_o\ : std_logic;
SIGNAL \temp_data[0]~feeder_combout\ : std_logic;
SIGNAL \temp_data[0]~0_combout\ : std_logic;
SIGNAL \temp_data[1]~feeder_combout\ : std_logic;
SIGNAL temp_data : std_logic_vector(2 DOWNTO 0);
SIGNAL master_data : std_logic_vector(2 DOWNTO 0);
SIGNAL bit_count : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_cs~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_start <= start;
ww_miso <= miso;
sclk <= ww_sclk;
mosi <= ww_mosi;
cs <= ww_cs;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_cs~reg0_q\ <= NOT \cs~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y12_N16
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

-- Location: IOOBUF_X31_Y22_N16
\sclk~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sclk_internal~q\,
	devoe => ww_devoe,
	o => \sclk~output_o\);

-- Location: IOOBUF_X24_Y25_N23
\mosi~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mosi~reg0_q\,
	devoe => ww_devoe,
	o => \mosi~output_o\);

-- Location: IOOBUF_X31_Y21_N16
\cs~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_cs~reg0_q\,
	devoe => ww_devoe,
	o => \cs~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\data_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_data(0),
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X31_Y22_N9
\data_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_data(1),
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X29_Y25_N16
\data_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_data(2),
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y20_N15
\start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X28_Y21_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = bit_count(0) $ (VCC)
-- \Add0~1\ = CARRY(bit_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X29_Y21_N6
\Add0~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = (\Add0~0_combout\) # ((!\busy~q\ & \start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \busy~q\,
	datac => \start~input_o\,
	combout => \Add0~95_combout\);

-- Location: IOIBUF_X0_Y6_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: LCCOMB_X30_Y21_N30
\bit_count[31]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count[31]~2_combout\ = (\busy~q\ & (((!\sclk_internal~q\ & !\Equal0~10_combout\)))) # (!\busy~q\ & (\start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \sclk_internal~q\,
	datac => \busy~q\,
	datad => \Equal0~10_combout\,
	combout => \bit_count[31]~2_combout\);

-- Location: FF_X29_Y21_N7
\bit_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~95_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(0));

-- Location: LCCOMB_X28_Y21_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (bit_count(1) & (\Add0~1\ & VCC)) # (!bit_count(1) & (!\Add0~1\))
-- \Add0~3\ = CARRY((!bit_count(1) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X29_Y21_N20
\Add0~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~94_combout\ = (\Add0~2_combout\) # ((\start~input_o\ & !\busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \busy~q\,
	datad => \Add0~2_combout\,
	combout => \Add0~94_combout\);

-- Location: FF_X29_Y21_N21
\bit_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~94_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(1));

-- Location: LCCOMB_X28_Y21_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (bit_count(2) & ((GND) # (!\Add0~3\))) # (!bit_count(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((bit_count(2)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X29_Y21_N30
\Add0~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = (\Add0~4_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy~q\,
	datac => \start~input_o\,
	datad => \Add0~4_combout\,
	combout => \Add0~93_combout\);

-- Location: FF_X29_Y21_N31
\bit_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~93_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(2));

-- Location: LCCOMB_X28_Y21_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (bit_count(3) & (\Add0~5\ & VCC)) # (!bit_count(3) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!bit_count(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X29_Y21_N4
\Add0~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = (\Add0~6_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy~q\,
	datac => \start~input_o\,
	datad => \Add0~6_combout\,
	combout => \Add0~92_combout\);

-- Location: FF_X29_Y21_N5
\bit_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~92_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(3));

-- Location: LCCOMB_X30_Y21_N26
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!bit_count(1) & (!bit_count(0) & (!bit_count(3) & !bit_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(1),
	datab => bit_count(0),
	datac => bit_count(3),
	datad => bit_count(2),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X28_Y21_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (bit_count(4) & ((GND) # (!\Add0~7\))) # (!bit_count(4) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((bit_count(4)) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X29_Y21_N26
\Add0~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~91_combout\ = (\Add0~8_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \busy~q\,
	datad => \Add0~8_combout\,
	combout => \Add0~91_combout\);

-- Location: FF_X29_Y21_N27
\bit_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~91_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(4));

-- Location: LCCOMB_X28_Y21_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (bit_count(5) & (\Add0~9\ & VCC)) # (!bit_count(5) & (!\Add0~9\))
-- \Add0~11\ = CARRY((!bit_count(5) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X29_Y21_N8
\Add0~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = (\Add0~10_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \busy~q\,
	datad => \Add0~10_combout\,
	combout => \Add0~90_combout\);

-- Location: FF_X29_Y21_N9
\bit_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~90_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(5));

-- Location: LCCOMB_X28_Y21_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (bit_count(6) & ((GND) # (!\Add0~11\))) # (!bit_count(6) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((bit_count(6)) # (!\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X29_Y21_N10
\Add0~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = (\Add0~12_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \busy~q\,
	datad => \Add0~12_combout\,
	combout => \Add0~89_combout\);

-- Location: FF_X29_Y21_N11
\bit_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~89_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(6));

-- Location: LCCOMB_X28_Y21_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (bit_count(7) & (\Add0~13\ & VCC)) # (!bit_count(7) & (!\Add0~13\))
-- \Add0~15\ = CARRY((!bit_count(7) & !\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X29_Y21_N28
\Add0~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = (\Add0~14_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \busy~q\,
	datad => \Add0~14_combout\,
	combout => \Add0~88_combout\);

-- Location: FF_X29_Y21_N29
\bit_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~88_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(7));

-- Location: LCCOMB_X30_Y21_N16
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!bit_count(5) & (!bit_count(7) & (!bit_count(4) & !bit_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(5),
	datab => bit_count(7),
	datac => bit_count(4),
	datad => bit_count(6),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X28_Y21_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (bit_count(8) & ((GND) # (!\Add0~15\))) # (!bit_count(8) & (\Add0~15\ $ (GND)))
-- \Add0~17\ = CARRY((bit_count(8)) # (!\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X29_Y21_N18
\Add0~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (\Add0~16_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \busy~q\,
	datac => \start~input_o\,
	combout => \Add0~87_combout\);

-- Location: FF_X29_Y21_N19
\bit_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~87_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(8));

-- Location: LCCOMB_X28_Y21_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (bit_count(9) & (\Add0~17\ & VCC)) # (!bit_count(9) & (!\Add0~17\))
-- \Add0~19\ = CARRY((!bit_count(9) & !\Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X30_Y21_N0
\Add0~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (\Add0~18_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \busy~q\,
	datad => \Add0~18_combout\,
	combout => \Add0~86_combout\);

-- Location: FF_X30_Y21_N1
\bit_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~86_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(9));

-- Location: LCCOMB_X28_Y21_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (bit_count(10) & ((GND) # (!\Add0~19\))) # (!bit_count(10) & (\Add0~19\ $ (GND)))
-- \Add0~21\ = CARRY((bit_count(10)) # (!\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X30_Y21_N20
\Add0~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~85_combout\ = (\Add0~20_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \busy~q\,
	datad => \Add0~20_combout\,
	combout => \Add0~85_combout\);

-- Location: FF_X30_Y21_N21
\bit_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~85_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(10));

-- Location: LCCOMB_X28_Y21_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (bit_count(11) & (\Add0~21\ & VCC)) # (!bit_count(11) & (!\Add0~21\))
-- \Add0~23\ = CARRY((!bit_count(11) & !\Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X29_Y21_N16
\Add0~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (\Add0~22_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \busy~q\,
	datad => \Add0~22_combout\,
	combout => \Add0~84_combout\);

-- Location: FF_X29_Y21_N17
\bit_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~84_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(11));

-- Location: LCCOMB_X28_Y21_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (bit_count(12) & ((GND) # (!\Add0~23\))) # (!bit_count(12) & (\Add0~23\ $ (GND)))
-- \Add0~25\ = CARRY((bit_count(12)) # (!\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X30_Y21_N24
\Add0~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = (\Add0~24_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \busy~q\,
	datad => \Add0~24_combout\,
	combout => \Add0~83_combout\);

-- Location: FF_X30_Y21_N25
\bit_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~83_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(12));

-- Location: LCCOMB_X28_Y21_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (bit_count(13) & (\Add0~25\ & VCC)) # (!bit_count(13) & (!\Add0~25\))
-- \Add0~27\ = CARRY((!bit_count(13) & !\Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X30_Y21_N22
\Add0~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = (\Add0~26_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy~q\,
	datac => \Add0~26_combout\,
	datad => \start~input_o\,
	combout => \Add0~82_combout\);

-- Location: FF_X30_Y21_N23
\bit_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~82_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(13));

-- Location: LCCOMB_X28_Y21_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (bit_count(14) & ((GND) # (!\Add0~27\))) # (!bit_count(14) & (\Add0~27\ $ (GND)))
-- \Add0~29\ = CARRY((bit_count(14)) # (!\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X29_Y21_N2
\Add0~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (\Add0~28_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \busy~q\,
	datad => \Add0~28_combout\,
	combout => \Add0~81_combout\);

-- Location: FF_X29_Y21_N3
\bit_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~81_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(14));

-- Location: LCCOMB_X28_Y21_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (bit_count(15) & (\Add0~29\ & VCC)) # (!bit_count(15) & (!\Add0~29\))
-- \Add0~31\ = CARRY((!bit_count(15) & !\Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X30_Y21_N4
\Add0~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (\Add0~30_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy~q\,
	datac => \Add0~30_combout\,
	datad => \start~input_o\,
	combout => \Add0~80_combout\);

-- Location: FF_X30_Y21_N5
\bit_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~80_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(15));

-- Location: LCCOMB_X28_Y20_N0
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (bit_count(16) & ((GND) # (!\Add0~31\))) # (!bit_count(16) & (\Add0~31\ $ (GND)))
-- \Add0~33\ = CARRY((bit_count(16)) # (!\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X29_Y20_N2
\Add0~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~79_combout\ = (\Add0~32_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \busy~q\,
	datac => \Add0~32_combout\,
	combout => \Add0~79_combout\);

-- Location: FF_X29_Y20_N3
\bit_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~79_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(16));

-- Location: LCCOMB_X28_Y20_N2
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (bit_count(17) & (\Add0~33\ & VCC)) # (!bit_count(17) & (!\Add0~33\))
-- \Add0~35\ = CARRY((!bit_count(17) & !\Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X29_Y20_N4
\Add0~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (\Add0~34_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy~q\,
	datac => \start~input_o\,
	datad => \Add0~34_combout\,
	combout => \Add0~78_combout\);

-- Location: FF_X29_Y20_N5
\bit_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~78_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(17));

-- Location: LCCOMB_X28_Y20_N4
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (bit_count(18) & ((GND) # (!\Add0~35\))) # (!bit_count(18) & (\Add0~35\ $ (GND)))
-- \Add0~37\ = CARRY((bit_count(18)) # (!\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X29_Y20_N18
\Add0~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = (\Add0~36_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \busy~q\,
	datac => \Add0~36_combout\,
	combout => \Add0~77_combout\);

-- Location: FF_X29_Y20_N19
\bit_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~77_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(18));

-- Location: LCCOMB_X28_Y20_N6
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (bit_count(19) & (\Add0~37\ & VCC)) # (!bit_count(19) & (!\Add0~37\))
-- \Add0~39\ = CARRY((!bit_count(19) & !\Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X29_Y20_N12
\Add0~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = (\Add0~38_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \busy~q\,
	datac => \Add0~38_combout\,
	combout => \Add0~76_combout\);

-- Location: FF_X29_Y20_N13
\bit_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~76_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(19));

-- Location: LCCOMB_X28_Y20_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (bit_count(20) & ((GND) # (!\Add0~39\))) # (!bit_count(20) & (\Add0~39\ $ (GND)))
-- \Add0~41\ = CARRY((bit_count(20)) # (!\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X29_Y20_N16
\Add0~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (\Add0~40_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy~q\,
	datac => \start~input_o\,
	datad => \Add0~40_combout\,
	combout => \Add0~75_combout\);

-- Location: FF_X29_Y20_N17
\bit_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~75_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(20));

-- Location: LCCOMB_X28_Y20_N10
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (bit_count(21) & (\Add0~41\ & VCC)) # (!bit_count(21) & (!\Add0~41\))
-- \Add0~43\ = CARRY((!bit_count(21) & !\Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X29_Y20_N10
\Add0~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (\Add0~42_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy~q\,
	datac => \start~input_o\,
	datad => \Add0~42_combout\,
	combout => \Add0~74_combout\);

-- Location: FF_X29_Y20_N11
\bit_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~74_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(21));

-- Location: LCCOMB_X28_Y20_N12
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (bit_count(22) & ((GND) # (!\Add0~43\))) # (!bit_count(22) & (\Add0~43\ $ (GND)))
-- \Add0~45\ = CARRY((bit_count(22)) # (!\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X29_Y20_N0
\Add0~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~73_combout\ = (\Add0~44_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy~q\,
	datac => \start~input_o\,
	datad => \Add0~44_combout\,
	combout => \Add0~73_combout\);

-- Location: FF_X29_Y20_N1
\bit_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~73_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(22));

-- Location: LCCOMB_X28_Y20_N14
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (bit_count(23) & (\Add0~45\ & VCC)) # (!bit_count(23) & (!\Add0~45\))
-- \Add0~47\ = CARRY((!bit_count(23) & !\Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X29_Y20_N14
\Add0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (\Add0~46_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy~q\,
	datac => \start~input_o\,
	datad => \Add0~46_combout\,
	combout => \Add0~72_combout\);

-- Location: FF_X29_Y20_N15
\bit_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~72_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(23));

-- Location: LCCOMB_X29_Y20_N30
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!bit_count(21) & (!bit_count(20) & (!bit_count(23) & !bit_count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(21),
	datab => bit_count(20),
	datac => bit_count(23),
	datad => bit_count(22),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X28_Y20_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (bit_count(24) & ((GND) # (!\Add0~47\))) # (!bit_count(24) & (\Add0~47\ $ (GND)))
-- \Add0~49\ = CARRY((bit_count(24)) # (!\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X29_Y20_N6
\Add0~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = (\Add0~48_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \busy~q\,
	datac => \Add0~48_combout\,
	combout => \Add0~71_combout\);

-- Location: FF_X29_Y20_N7
\bit_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~71_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(24));

-- Location: LCCOMB_X28_Y20_N18
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (bit_count(25) & (\Add0~49\ & VCC)) # (!bit_count(25) & (!\Add0~49\))
-- \Add0~51\ = CARRY((!bit_count(25) & !\Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X29_Y20_N28
\Add0~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = (\Add0~50_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy~q\,
	datac => \start~input_o\,
	datad => \Add0~50_combout\,
	combout => \Add0~70_combout\);

-- Location: FF_X29_Y20_N29
\bit_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~70_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(25));

-- Location: LCCOMB_X28_Y20_N20
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (bit_count(26) & ((GND) # (!\Add0~51\))) # (!bit_count(26) & (\Add0~51\ $ (GND)))
-- \Add0~53\ = CARRY((bit_count(26)) # (!\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X29_Y20_N22
\Add0~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (\Add0~52_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy~q\,
	datac => \start~input_o\,
	datad => \Add0~52_combout\,
	combout => \Add0~69_combout\);

-- Location: FF_X29_Y20_N23
\bit_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~69_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(26));

-- Location: LCCOMB_X28_Y20_N22
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (bit_count(27) & (\Add0~53\ & VCC)) # (!bit_count(27) & (!\Add0~53\))
-- \Add0~55\ = CARRY((!bit_count(27) & !\Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X29_Y20_N24
\Add0~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (\Add0~54_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy~q\,
	datac => \start~input_o\,
	datad => \Add0~54_combout\,
	combout => \Add0~68_combout\);

-- Location: FF_X29_Y20_N25
\bit_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~68_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(27));

-- Location: LCCOMB_X29_Y20_N20
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!bit_count(24) & (!bit_count(27) & (!bit_count(26) & !bit_count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(24),
	datab => bit_count(27),
	datac => bit_count(26),
	datad => bit_count(25),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X29_Y20_N8
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!bit_count(19) & (!bit_count(18) & (!bit_count(17) & !bit_count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(19),
	datab => bit_count(18),
	datac => bit_count(17),
	datad => bit_count(16),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X28_Y20_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (bit_count(28) & ((GND) # (!\Add0~55\))) # (!bit_count(28) & (\Add0~55\ $ (GND)))
-- \Add0~57\ = CARRY((bit_count(28)) # (!\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X29_Y21_N14
\Add0~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~67_combout\ = (\Add0~56_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \busy~q\,
	datad => \Add0~56_combout\,
	combout => \Add0~67_combout\);

-- Location: FF_X29_Y21_N15
\bit_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~67_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(28));

-- Location: LCCOMB_X28_Y20_N26
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (bit_count(29) & (\Add0~57\ & VCC)) # (!bit_count(29) & (!\Add0~57\))
-- \Add0~59\ = CARRY((!bit_count(29) & !\Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X29_Y21_N12
\Add0~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (\Add0~58_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \busy~q\,
	datad => \Add0~58_combout\,
	combout => \Add0~66_combout\);

-- Location: FF_X29_Y21_N13
\bit_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~66_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(29));

-- Location: LCCOMB_X28_Y20_N28
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (bit_count(30) & ((GND) # (!\Add0~59\))) # (!bit_count(30) & (\Add0~59\ $ (GND)))
-- \Add0~61\ = CARRY((bit_count(30)) # (!\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X29_Y21_N22
\Add0~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = (\Add0~60_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \busy~q\,
	datad => \Add0~60_combout\,
	combout => \Add0~65_combout\);

-- Location: FF_X29_Y21_N23
\bit_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~65_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(30));

-- Location: LCCOMB_X28_Y20_N30
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (!bit_count(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => bit_count(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X29_Y21_N0
\Add0~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = (\Add0~62_combout\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \busy~q\,
	datad => \Add0~62_combout\,
	combout => \Add0~64_combout\);

-- Location: FF_X29_Y21_N1
\bit_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~64_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \bit_count[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(31));

-- Location: LCCOMB_X29_Y21_N24
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!bit_count(29) & (!bit_count(28) & (!bit_count(30) & !bit_count(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(29),
	datab => bit_count(28),
	datac => bit_count(30),
	datad => bit_count(31),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X29_Y20_N26
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X30_Y21_N14
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!bit_count(11) & !bit_count(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bit_count(11),
	datad => bit_count(10),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X30_Y21_N18
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!bit_count(13) & (!bit_count(12) & (!bit_count(15) & !bit_count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(13),
	datab => bit_count(12),
	datac => bit_count(15),
	datad => bit_count(14),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X30_Y21_N2
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!bit_count(8) & (!bit_count(9) & (\Equal0~6_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(8),
	datab => bit_count(9),
	datac => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X30_Y21_N28
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (\Equal0~8_combout\ & (\Equal0~4_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X30_Y21_N8
\busy~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \busy~0_combout\ = (\busy~q\ & (((\sclk_internal~q\) # (!\Equal0~10_combout\)))) # (!\busy~q\ & (\start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \Equal0~10_combout\,
	datac => \busy~q\,
	datad => \sclk_internal~q\,
	combout => \busy~0_combout\);

-- Location: FF_X30_Y21_N9
busy : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \busy~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \busy~q\);

-- Location: LCCOMB_X30_Y21_N12
\sclk_internal~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sclk_internal~0_combout\ = \busy~q\ $ (\sclk_internal~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy~q\,
	datac => \sclk_internal~q\,
	combout => \sclk_internal~0_combout\);

-- Location: FF_X30_Y21_N13
sclk_internal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sclk_internal~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sclk_internal~q\);

-- Location: LCCOMB_X25_Y21_N28
\master_data[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_data[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \master_data[0]~feeder_combout\);

-- Location: LCCOMB_X25_Y21_N10
\master_data[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_data[2]~0_combout\ = (\sclk_internal~q\ & (!\reset~input_o\ & \busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sclk_internal~q\,
	datac => \reset~input_o\,
	datad => \busy~q\,
	combout => \master_data[2]~0_combout\);

-- Location: FF_X25_Y21_N29
\master_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_data[0]~feeder_combout\,
	ena => \master_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => master_data(0));

-- Location: LCCOMB_X25_Y21_N16
\master_data[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_data[1]~2_combout\ = !master_data(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => master_data(0),
	combout => \master_data[1]~2_combout\);

-- Location: FF_X25_Y21_N17
\master_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_data[1]~2_combout\,
	ena => \master_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => master_data(1));

-- Location: LCCOMB_X25_Y21_N18
\master_data[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_data[2]~1_combout\ = !master_data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => master_data(1),
	combout => \master_data[2]~1_combout\);

-- Location: FF_X25_Y21_N19
\master_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master_data[2]~1_combout\,
	ena => \master_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => master_data(2));

-- Location: LCCOMB_X25_Y21_N12
\mosi~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mosi~0_combout\ = (\sclk_internal~q\ & ((\busy~q\ & (!master_data(2))) # (!\busy~q\ & ((\mosi~reg0_q\))))) # (!\sclk_internal~q\ & (((\mosi~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sclk_internal~q\,
	datab => master_data(2),
	datac => \mosi~reg0_q\,
	datad => \busy~q\,
	combout => \mosi~0_combout\);

-- Location: FF_X25_Y21_N13
\mosi~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mosi~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mosi~reg0_q\);

-- Location: LCCOMB_X30_Y21_N10
\cs~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cs~2_combout\ = (!\cs~reg0_q\ & ((\busy~q\) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cs~reg0_q\,
	datab => \busy~q\,
	datad => \start~input_o\,
	combout => \cs~2_combout\);

-- Location: LCCOMB_X30_Y21_N6
\cs~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cs~3_combout\ = (!\cs~2_combout\ & ((\sclk_internal~q\) # ((!\busy~q\) # (!\Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sclk_internal~q\,
	datab => \Equal0~10_combout\,
	datac => \busy~q\,
	datad => \cs~2_combout\,
	combout => \cs~3_combout\);

-- Location: FF_X30_Y21_N7
\cs~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cs~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cs~reg0_q\);

-- Location: IOIBUF_X31_Y22_N1
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

-- Location: LCCOMB_X30_Y22_N16
\temp_data[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_data[0]~feeder_combout\ = \miso~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \miso~input_o\,
	combout => \temp_data[0]~feeder_combout\);

-- Location: LCCOMB_X30_Y22_N18
\temp_data[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_data[0]~0_combout\ = (\busy~q\ & !\sclk_internal~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \busy~q\,
	datad => \sclk_internal~q\,
	combout => \temp_data[0]~0_combout\);

-- Location: FF_X30_Y22_N17
\temp_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_data[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \temp_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_data(0));

-- Location: LCCOMB_X30_Y22_N14
\temp_data[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_data[1]~feeder_combout\ = temp_data(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_data(0),
	combout => \temp_data[1]~feeder_combout\);

-- Location: FF_X30_Y22_N15
\temp_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_data[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \temp_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_data(1));

-- Location: FF_X30_Y22_N5
\temp_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => temp_data(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \temp_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_data(2));

-- Location: UNVM_X0_Y11_N40
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

-- Location: ADCBLOCK_X10_Y24_N0
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

ww_sclk <= \sclk~output_o\;

ww_mosi <= \mosi~output_o\;

ww_cs <= \cs~output_o\;

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;
END structure;


