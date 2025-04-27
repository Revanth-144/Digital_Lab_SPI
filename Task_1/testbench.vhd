library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture Behavioral of testbench is
    signal clk        : std_logic := '0';
    signal reset      : std_logic := '0';
    signal start      : std_logic := '0';
    signal miso       : std_logic;
    signal mosi       : std_logic;
    signal sclk       : std_logic;
    signal cs         : std_logic;
    signal master_received : std_logic_vector(7 downto 0);
    signal slave_received  : std_logic_vector(7 downto 0);
begin
    -- Instantiate Master
    master: entity work.spi_master
        port map (
            clk       => clk,
            reset     => reset,
            start     => start,
            data_out  => master_received,
            sclk      => sclk,
            mosi      => mosi,
            miso      => miso,
            cs        => cs
        );
    
    -- Instantiate Slave
    slave: entity work.spi_slave
        port map (
            clk        => clk,
            reset      => reset,
            sclk       => sclk,
            mosi       => mosi,
            miso       => miso,
            cs         => cs,
            data_out   => slave_received
        );
    
    process
    begin
        clk <= not clk after 50 ns;
        wait for 5 ns;
    end process;
    
    process
    begin
        reset <= '1';
        wait for 100 ns;
        reset <= '0';
        start <= '1';
        wait for 100 ns;
        start <= '0';
        wait;
    end process;

end Behavioral;
