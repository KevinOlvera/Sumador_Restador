library ieee;
use ieee.std_logic_1164.all;

entity Sumador_Restador is
	port(
		A, B: in std_logic_vector (2 downto 0);
		S_R, S_I: in std_logic;
		C_O: out std_logic;
		S: out std_logic_vector (2 downto 0)
	);				 					
end Sumador_Restador;

architecture main of Sumador_Restador is
signal C2B, C2A: std_logic_vector (2 downto 0);
signal C : std_logic_vector (1 downto 0);
attribute synthesis_off of C : signal is true; 				

begin
	C2A(0) <= A(0) xor (S_R and S_I);
	C2B(0) <= B(0) xor (S_R and not S_I);
	S(0) <= C2A(0) xor C2B(0) xor S_R;
	C(0) <= (S_R and (C2A(0) xor C2B(0))) or (C2A(0) and C2B(0));
	
	C2A(1) <= A(1) xor (S_R and S_I);
	C2B(1) <= B(1) xor (S_R and not S_I);
	S(1) <= C2A(1) xor C2B(1) xor C(0);
	C(1) <= (C(0) and (C2A(1) xor C2B(1))) or (C2A(1) and C2B(1));

	C2A(2) <= A(2) xor (S_R and S_I);
	C2B(2) <= B(2) xor (S_R and not S_I);
	S(2) <= C2A(2) xor C2B(2) xor C(1);
	C_O <= (C(1) and (C2A(2) xor C2B(2))) or (C2A(2) and C2B(2));		
end main;
