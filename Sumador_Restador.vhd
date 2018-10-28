library ieee;
use ieee.std_logic_1164.all;

-- A -> Numero A
-- B -> Numero B
-- S_R -> Selector de Suma o Resta
-- S_I -> Selector de A-B o B-A
-- C_O -> Carry de salida o bit de signo
-- L_A -> A > B
-- L_B -> A < B
-- L -> A = B
-- S -> Suma
entity Sumador_Restador is
	port(
		A, B: in std_logic_vector (2 downto 0);
		S_R, S_I: in std_logic;
		C_O, L_A, L_B, L: out std_logic;
		S: out std_logic_vector (2 downto 0)
	);				 					
end Sumador_Restador;

-- C2A -> 1's Complemento de A
-- C2B -> 1's Complemento de B
-- AB -> Bit de salida de A > B
-- BA -> Bit de salida de A < B
-- E -> Habilitador del siguiente comparador o A = B
-- C -> Carry's de la Suma
architecture main of Sumador_Restador is
signal C2B, C2A, AB, BA: std_logic_vector (2 downto 0);
signal E: std_logic_vector (1 downto 0);
signal C : std_logic_vector (1 downto 0);
attribute synthesis_off of C : signal is true; 				

begin
	--Sumador y Restador de 3 bits--
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
	
	--Comparador de 3 bits--
	E(1) <= not (A(2) xor B(2));
	E(0) <= not (A(1) xor B(1)) and E(1);
	L <= not (A(0) xor B(0)) and E(0);

	AB(2) <= A(2) and not B(2); 
	AB(1) <= A(1) and not B(1) and E(1);
	AB(0) <= A(0) and not B(0) and E(0);

	BA(2) <= not A(2) and B(2);
	BA(1) <= not A(1) and B(1) and E(1);
	BA(0) <= not A(0) and B(0) and E(0);

	L_A <= AB(2) or AB(1) or AB(0);
	L_B <= BA(2) or BA(1) or BA(0);
end main;
