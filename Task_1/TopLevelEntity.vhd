library ieee;
use ieee.std_logic_1164.all;

entity TopLevelEntity is
    Port (
        clk        : in  std_logic;
        reset      : in  std_logic;
        start      : in  std_logic;
        mosi       : out std_logic;
        miso       : inout std_logic;
        sclk       : out std_logic;
        cs         : out std_logic;
        master_data_out : out std_logic_vector(7 downto 0);
        slave_data_out  : out std_logic_vector(7 downto 0)
    );
end entity;

architecture Behavioral of TopLevelEntity is
    signal mosi_wire : std_logic;
    signal miso_wire : std_logic;
    signal sclk_wire : std_logic;
    signal cs_wire   : std_logic;
    signal master_received : std_logic_vector(7 downto 0);
    signal slave_received  : std_logic_vector(7 downto 0);
begin
    spi_master_inst : entity work.spi_master
        port map (
            clk          => clk,
            reset        => reset,
            start        => start,
            data_out     => master_received,
            sclk         => sclk_wire,
            mosi         => mosi_wire,
            miso         => miso_wire,
            cs           => cs_wire
        );
    spi_slave_inst : entity work.spi_slave
        port map (
            clk          => clk,
            reset        => reset,
            sclk         => sclk_wire,
            mosi         => mosi_wire,
            miso         => miso_wire,
            cs           => cs_wire,
            data_out     => slave_received
        );
    mosi     <= mosi_wire;
    miso     <= miso_wire;
    sclk     <= sclk_wire;
    cs       <= cs_wire;
    master_data_out <= master_received;
    slave_data_out  <= slave_received;

end Behavioral;
