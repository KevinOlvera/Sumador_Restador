library ieee;
use ieee.std_logic_1164.all;

entity Practica_11 is
	port(
		A, B: in std_logic_vector (3 downto 0);        		-- Puertos de entrada que representan los numeros en binario
		CI, S_R: in std_logic;                          		-- Seleccionador y primer acarreo para la resta
		L_B: out std_logic;
		S: out std_logic_vector (3 downto 0)          		-- Salida de las operaciones (s0,s1,s2,s3)
	);				 					
end Practica_11;

architecture main of Practica_11 is
signal C2B: std_logic_vector (3 downto 0);					-- Señal para las entradas b's 2'C
signal C : std_logic_vector (3 downto 0);					-- Acarreos
attribute synthesis_off of C : signal is true; 				

begin
	C2B(0) <= B(0) xor S_R;											-- Selector de suma o resta 
	S(0) <= A(0) xor C2B(0) xor CI;									-- Bit menos significativo 
	C(0) <= ((A(0) and CI) xor (C2B(0) and CI)) or (A(0) and C2B(0));
	
	C2B(1) <= B(1) xor S_R;
	S(1) <= A(1) xor C2B(1) xor C(0);
	C(1) <= ((A(1) and C(0)) xor (C2B(1) and C(0))) or (A(1) and C2B(1));

	C2B(2) <= B(2) xor S_R;
	S(2) <= A(2) xor C2B(2) xor C(1);
	C(2) <= ((A(2) and C(1)) xor (C2B(2) and C(1))) or (A(2) and C2B(2));
	
	C2B(3) <= B(3) xor S_R;
	S(3) <= A(3) xor C2B(3) xor C(2);									-- Bit mas significativo
	C(3) <= ((A(3) and C(2)) xor (C2B(3) and C(2))) or (A(3) and C2B(3));	-- Bit de signo (Ultimo Bit de acarreo)

	L_B <= not C(3) and S_R;
end main;
