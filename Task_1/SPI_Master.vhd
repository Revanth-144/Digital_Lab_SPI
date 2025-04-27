library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity spi_master is
	port(clk,reset,start,miso: in std_logic;
			sclk,mosi,cs: out std_logic;
			data_out: out std_logic_vector(7 downto 0));
end entity;

architecture behaviour of spi_master is
    signal master_data: std_logic_vector(7 downto 0) := "00000101";
    signal bit_count: integer;
    
    signal busy     : std_logic := '0';             -- state of transmission
	 signal temp_data : std_logic_vector(7 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '1' then                         -- Master goes back to initial state
            busy <= '0';
            cs <= '1';
				mosi <= '0';
            bit_count <= 0;
				temp_data <= (others => '0');
				
        elsif rising_edge(clk) then
            if start = '1' and busy = '0' then
                busy <= '1';
                cs <= '0';
                bit_count <= 7;
            elsif busy = '1' then
                  
                    mosi <= master_data(7);                         -- master send MSB through MOSI
                    master_data <= master_data(6 downto 0) & '0';   -- data is shifted so that next bit is sent in following cycle
               
                    temp_data <= temp_data(6 downto 0) & miso; 	  -- Master stores the data received from slave via miso
						 
					     if bit_count = 0 then                           -- transmission stopped after 8 bits
                        busy <= '0';
                        cs <= '1';
                    else
                        bit_count <= bit_count - 1;                 -- Bit count decreases with each bit transmitted and received
                    end if;
              
            end if;
        end if;
    end process;    
    sclk <= clk when (busy = '1') else '0';
	 data_out <= temp_data;
end architecture;
