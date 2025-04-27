library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity spi_slave is
	port(clk,reset,sclk,cs,mosi: in std_logic;
			miso: out std_logic;
			data_out: out std_logic_vector(7 downto 0));
end entity;

architecture behaviour of spi_slave is
    signal slave_data : std_logic_vector(7 downto 0) := "00000111";  -- Data to send to master(7)
    signal bit_count : integer;
	 signal temp_data : std_logic_vector(7 downto 0);  
begin
    process(sclk, reset)
    begin
        if reset = '1' then                                   -- Slave goes to initial state
            temp_data <= (others => '0');
            bit_count <= 0;
				miso <= '0';
        elsif rising_edge(sclk) then
		     
                temp_data <= temp_data(6 downto 0) & mosi;    -- Temporarily stores data from master
                bit_count <= bit_count;
			  
        elsif falling_edge(sclk) then
            if cs = '0' then
                miso <= slave_data(7);                        -- slave sends data to master through MISO
                slave_data <= slave_data(6 downto 0) & '0';
            end if;
        end if;
    end process;
	 data_out <= temp_data;
end architecture;