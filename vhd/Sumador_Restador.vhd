
--  CYPRESS NOVA XVL Structural Architecture

--  JED2VHD Reverse Assembler - 6.3 IR 35


--    VHDL File: Sumador_Restador.vhd

--    Date: Sat Oct 27 16:31:51 2018

--  Disassembly from Jedec file for: c22v10

--  Device Ordercode is: PALC22V10D-25PC
library ieee;
use ieee.std_logic_1164.all;

library primitive;
use primitive.primitive.all;


-- Beginning Test Bench Header

ENTITY practica_11 IS
    PORT (
	                   a :    in std_logic_vector (2 downto 0) ;
	                   b :    in std_logic_vector (2 downto 0) ;
	                 s_r :    in std_logic ;
	                 s_i :    in std_logic ;
	                 l_b : inout std_logic ;
	                   s : inout std_logic_vector (2 downto 0)
    );
END practica_11;

-- End of Test Bench Header

ARCHITECTURE DSMB of practica_11 is

	signal jed_node1	: std_logic:='0' ; -- b(2)
	signal jed_node2	: std_logic:='0' ; -- a(2)
	signal jed_node3	: std_logic:='0' ; -- s_r
	signal jed_node4	: std_logic:='0' ; -- s_i
	signal jed_node5	: std_logic:='0' ; -- b(1)
	signal jed_node6	: std_logic:='0' ; -- b(0)
	signal jed_node7	: std_logic:='0' ; -- a(1)
	signal jed_node8	: std_logic:='0' ; -- a(0)
	signal jed_node9	: std_logic:='0' ;
	signal jed_node10	: std_logic:='0' ;
	signal jed_node11	: std_logic:='0' ;
	signal jed_node12	: std_logic:='0' ;
	signal jed_node13	: std_logic:='0' ;
	signal jed_node14	: std_logic:='0' ;
	signal jed_node15	: std_logic:='0' ;
	signal jed_node17	: std_logic:='0' ;
	signal jed_node18	: std_logic:='0' ;
	signal jed_node19	: std_logic:='0' ;
	signal jed_node20	: std_logic:='0' ;
	signal jed_node22	: std_logic:='0' ;
	signal jed_node24	: std_logic:='0' ;

	for all: c22v10m use entity primitive.c22v10m (sim);

SIGNAL  one:std_logic:='1';
SIGNAL  zero:std_logic:='0';
SIGNAL  jed_oept_1:std_logic:='0';
--Attribute PIN_NUMBERS of b(2):SIGNAL is "0001";

SIGNAL  jed_oept_2:std_logic:='0';
--Attribute PIN_NUMBERS of a(2):SIGNAL is "0002";

SIGNAL  jed_oept_3:std_logic:='0';
--Attribute PIN_NUMBERS of s_r:SIGNAL is "0003";

SIGNAL  jed_oept_4:std_logic:='0';
--Attribute PIN_NUMBERS of s_i:SIGNAL is "0004";

SIGNAL  jed_oept_5:std_logic:='0';
--Attribute PIN_NUMBERS of b(1):SIGNAL is "0005";

SIGNAL  jed_oept_6:std_logic:='0';
--Attribute PIN_NUMBERS of b(0):SIGNAL is "0006";

SIGNAL  jed_oept_7:std_logic:='0';
--Attribute PIN_NUMBERS of a(1):SIGNAL is "0007";

SIGNAL  jed_oept_8:std_logic:='0';
--Attribute PIN_NUMBERS of a(0):SIGNAL is "0008";

SIGNAL  jed_oept_14:std_logic:='0';
SIGNAL c_1:std_logic:='0';
SIGNAL  jed_sum_14,jed_fb_14:std_logic:='0';
--Attribute PIN_NUMBERS of jed_node14:SIGNAL is "0014";

SIGNAL  jed_oept_15:std_logic:='0';
SIGNAL c_0:std_logic:='0';
SIGNAL  jed_sum_15,jed_fb_15:std_logic:='0';
--Attribute PIN_NUMBERS of jed_node15:SIGNAL is "0015";

SIGNAL  jed_oept_16:std_logic:='0';
SIGNAL  jed_sum_16,jed_fb_16:std_logic:='0';
--Attribute PIN_NUMBERS of s(2):SIGNAL is "0016";

SIGNAL  jed_oept_21:std_logic:='0';
SIGNAL  jed_sum_21,jed_fb_21:std_logic:='0';
--Attribute PIN_NUMBERS of s(1):SIGNAL is "0021";

SIGNAL  jed_oept_23:std_logic:='0';
SIGNAL  jed_sum_23,jed_fb_23:std_logic:='0';
--Attribute PIN_NUMBERS of s(0):SIGNAL is "0023";

SIGNAL  jed_oept_25:std_logic:='0';
SIGNAL  jed_node25,jed_sum_25:std_logic:='0';
SIGNAL  jed_oept_26:std_logic:='0';
SIGNAL  jed_node26,jed_sum_26:std_logic:='0';

BEGIN
jed_node1 <= b(2) ;
jed_node2 <= a(2) ;
jed_node3 <= s_r ;
jed_node4 <= s_i ;
jed_node5 <= b(1) ;
jed_node6 <= b(0) ;
jed_node7 <= a(1) ;
jed_node8 <= a(0) ;
Mcell_14:c22v10m
generic map(comb,
   ninv,
   xpin,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_14,
     clk=>jed_node1,
     oe=>jed_oept_14,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>jed_node14,
     fb=>jed_fb_14
   );

Mcell_15:c22v10m
generic map(comb,
   ninv,
   xpin,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_15,
     clk=>jed_node1,
     oe=>jed_oept_15,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>jed_node15,
     fb=>jed_fb_15
   );

Mcell_16:c22v10m
generic map(comb,
   ninv,
   xpin,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_16,
     clk=>jed_node1,
     oe=>jed_oept_16,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>s(2),
     fb=>jed_fb_16
   );

Mcell_21:c22v10m
generic map(comb,
   ninv,
   xpin,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_21,
     clk=>jed_node1,
     oe=>jed_oept_21,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>s(1),
     fb=>jed_fb_21
   );

Mcell_23:c22v10m
generic map(comb,
   ninv,
   xpin,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_23,
     clk=>jed_node1,
     oe=>jed_oept_23,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>s(0),
     fb=>jed_fb_23
   );

c_1 <= jed_fb_14;
c_0 <= jed_fb_15;
jed_node25<=jed_sum_25;
jed_node26<=jed_sum_26;
jed_oept_14<=(one);

jed_sum_14<= (((jed_node3) and (jed_node4) and not(jed_node7) and (jed_fb_15)
) or
((jed_node3) and (jed_node4) and not(jed_node5) and not(jed_node7)
) or
((jed_node3) and not(jed_node4) and not(jed_node5) and (jed_node7)
) or
((jed_node3) and not(jed_node5) and (jed_fb_15)) or
(not(jed_node4) and (jed_node7) and (jed_fb_15)) or
(not(jed_node3) and (jed_node5) and (jed_fb_15)) or
(not(jed_node3) and (jed_node7) and (jed_fb_15)) or
(not(jed_node3) and (jed_node5) and (jed_node7)));

jed_oept_15<=(one);

jed_sum_15<= (((jed_node3) and (jed_node4) and not(jed_node8)) or
((jed_node3) and not(jed_node4) and (jed_node8)) or
(not(jed_node3) and (jed_node6) and (jed_node8)) or
((jed_node3) and not(jed_node6)));

jed_oept_16<=(one);

jed_sum_16<= (((jed_node1) and not(jed_node2) and (jed_node3) and not(jed_node4)
 and (jed_fb_14)) or
(not(jed_node1) and (jed_node2) and (jed_node3) and not(jed_node4)
 and (jed_fb_14)) or
((jed_node1) and (jed_node2) and (jed_node3) and not(jed_node4)
 and not(jed_fb_14)) or
(not(jed_node1) and not(jed_node2) and (jed_node3) and not(jed_node4)
 and not(jed_fb_14)) or
((jed_node1) and (jed_node2) and (jed_node4) and (jed_fb_14)
) or
(not(jed_node1) and not(jed_node2) and (jed_node4) and (jed_fb_14)
) or
((jed_node1) and not(jed_node2) and (jed_node4) and not(jed_fb_14)
) or
(not(jed_node1) and (jed_node2) and (jed_node4) and not(jed_fb_14)
) or
((jed_node1) and (jed_node2) and not(jed_node3) and (jed_fb_14)
) or
(not(jed_node1) and not(jed_node2) and not(jed_node3)
 and (jed_fb_14)) or
((jed_node1) and not(jed_node2) and not(jed_node3) and not(jed_fb_14)
) or
(not(jed_node1) and (jed_node2) and not(jed_node3) and not(jed_fb_14)
));

jed_oept_21<=(one);

jed_sum_21<= (((jed_node3) and not(jed_node4) and (jed_node5) and not(jed_node7)
 and (jed_fb_15)) or
((jed_node3) and not(jed_node4) and not(jed_node5) and (jed_node7)
 and (jed_fb_15)) or
((jed_node3) and not(jed_node4) and (jed_node5) and (jed_node7)
 and not(jed_fb_15)) or
((jed_node3) and not(jed_node4) and not(jed_node5) and not(jed_node7)
 and not(jed_fb_15)) or
((jed_node4) and (jed_node5) and (jed_node7) and (jed_fb_15)
) or
((jed_node4) and not(jed_node5) and not(jed_node7) and (jed_fb_15)
) or
((jed_node4) and (jed_node5) and not(jed_node7) and not(jed_fb_15)
) or
((jed_node4) and not(jed_node5) and (jed_node7) and not(jed_fb_15)
) or
(not(jed_node3) and (jed_node5) and (jed_node7) and (jed_fb_15)
) or
(not(jed_node3) and not(jed_node5) and not(jed_node7)
 and (jed_fb_15)) or
(not(jed_node3) and (jed_node5) and not(jed_node7) and not(jed_fb_15)
) or
(not(jed_node3) and not(jed_node5) and (jed_node7) and not(jed_fb_15)
));

jed_oept_23<=(one);

jed_sum_23<= (((jed_node3) and (jed_node4) and (jed_node6) and (jed_node8)
) or
((jed_node3) and (jed_node4) and not(jed_node6) and not(jed_node8)
) or
(not(jed_node4) and (jed_node6) and not(jed_node8)) or
(not(jed_node4) and not(jed_node6) and (jed_node8)) or
(not(jed_node3) and (jed_node6) and not(jed_node8)) or
(not(jed_node3) and not(jed_node6) and (jed_node8)));

end DSMB;
