library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
  
entity BCD_3_bits is
    PORT (
           I : IN  STD_LOGIC_VECTOR(4 downto 0);
           O : OUT STD_LOGIC_VECTOR(9 downto 0)
          );
end BCD_3_bits;
  
architecture main of BCD_3_bits is
begin
    --LCD Derecho
    BCD: process (I) begin
        case I is
            --Para los bits entrada
            -- S_R Selector de suma o resta
            -- C_O Carry de salida o bit de signo
            -- S2 Suma 2
            -- S1 Suma 1
            -- S2 Suma 0
            --Para los bits de salida
            -- b,c,a,b,c,d,e,f,g,p 
            ----------------------------------------
            when "11000" => O <= "0011111100"; --  0
            when "11001" => O <= "0001100000"; --  1
            when "11010" => O <= "0011011010"; --  2
            when "11011" => O <= "0011110010"; --  3
            when "11100" => O <= "0001100110"; --  4
            when "11101" => O <= "0010110110"; --  5
            when "11110" => O <= "0010111110"; --  6 
            when "11111" => O <= "0011100000"; --  7
            ---------------------------------------
            when "10001" => O <= "0011100001"; -- -7
            when "10010" => O <= "0010111111"; -- -6
            when "10011" => O <= "0010110111"; -- -5
            when "10100" => O <= "0001100111"; -- -4
            when "10101" => O <= "0011110011"; -- -3
            when "10110" => O <= "0011011011"; -- -2
            when "10111" => O <= "0001100001"; -- -1
            ---------------------------------------
            when "00000" => O <= "0011111100"; -- 0
            when "00001" => O <= "0001100000"; -- 1
            when "00010" => O <= "0011011010"; -- 2
            when "00011" => O <= "0011110010"; -- 3
            when "00100" => O <= "0001100110"; -- 4
            when "00101" => O <= "0010110110"; -- 5
            when "00110" => O <= "0010111110"; -- 6 
            when "00111" => O <= "0011100000"; -- 7
            when "01000" => O <= "0011111110"; -- 8
            when "01001" => O <= "0011100110"; -- 9
            when "01010" => O <= "1111111100"; --10
            when "01011" => O <= "1101100000"; --11
            when "01100" => O <= "1111011010"; --12
            when "01101" => O <= "1111110010"; --13
            when "01110" => O <= "1101100110"; --14
            ---------------------------------------
            when others  => O <= "0000000000"; -- Nada
        end case;
    end process;
end main;
