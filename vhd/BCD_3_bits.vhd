
--  CYPRESS NOVA XVL Structural Architecture

--  JED2VHD Reverse Assembler - 6.3 IR 35


--    VHDL File: BCD_3_bits.vhd

--    Date: Sat Oct 27 22:11:23 2018

--  Disassembly from Jedec file for: c22v10

--  Device Ordercode is: PALC22V10D-25PC
library ieee;
use ieee.std_logic_1164.all;

library primitive;
use primitive.primitive.all;


-- Beginning Test Bench Header

ENTITY bcd_3_bits IS
    PORT (
	                   i :    in std_logic_vector (4 downto 0) ;
	                   o : inout std_logic_vector (9 downto 0)
    );
END bcd_3_bits;

-- End of Test Bench Header

ARCHITECTURE DSMB of bcd_3_bits is

	signal jed_node1	: std_logic:='0' ; -- i(4)
	signal jed_node2	: std_logic:='0' ; -- i(3)
	signal jed_node3	: std_logic:='0' ; -- i(2)
	signal jed_node4	: std_logic:='0' ; -- i(1)
	signal jed_node5	: std_logic:='0' ; -- i(0)
	signal jed_node6	: std_logic:='0' ;
	signal jed_node7	: std_logic:='0' ;
	signal jed_node8	: std_logic:='0' ;
	signal jed_node9	: std_logic:='0' ;
	signal jed_node10	: std_logic:='0' ;
	signal jed_node11	: std_logic:='0' ;
	signal jed_node12	: std_logic:='0' ;
	signal jed_node13	: std_logic:='0' ;
	signal jed_node24	: std_logic:='0' ;

	for all: c22v10m use entity primitive.c22v10m (sim);

SIGNAL  one:std_logic:='1';
SIGNAL  zero:std_logic:='0';
SIGNAL  jed_oept_1:std_logic:='0';
--Attribute PIN_NUMBERS of i(4):SIGNAL is "0001";

SIGNAL  jed_oept_2:std_logic:='0';
--Attribute PIN_NUMBERS of i(3):SIGNAL is "0002";

SIGNAL  jed_oept_3:std_logic:='0';
--Attribute PIN_NUMBERS of i(2):SIGNAL is "0003";

SIGNAL  jed_oept_4:std_logic:='0';
--Attribute PIN_NUMBERS of i(1):SIGNAL is "0004";

SIGNAL  jed_oept_5:std_logic:='0';
--Attribute PIN_NUMBERS of i(0):SIGNAL is "0005";

SIGNAL  jed_oept_14:std_logic:='0';
SIGNAL  jed_sum_14,jed_fb_14:std_logic:='0';
--Attribute PIN_NUMBERS of o(7):SIGNAL is "0014";

SIGNAL  jed_oept_15:std_logic:='0';
SIGNAL  jed_sum_15,jed_fb_15:std_logic:='0';
--Attribute PIN_NUMBERS of o(2):SIGNAL is "0015";

SIGNAL  jed_oept_16:std_logic:='0';
SIGNAL  jed_sum_16,jed_fb_16:std_logic:='0';
--Attribute PIN_NUMBERS of o(5):SIGNAL is "0016";

SIGNAL  jed_oept_17:std_logic:='0';
SIGNAL  jed_sum_17,jed_fb_17:std_logic:='0';
--Attribute PIN_NUMBERS of o(1):SIGNAL is "0017";

SIGNAL  jed_oept_18:std_logic:='0';
SIGNAL  jed_sum_18,jed_fb_18:std_logic:='0';
--Attribute PIN_NUMBERS of o(8):SIGNAL is "0018";

SIGNAL  jed_oept_19:std_logic:='0';
SIGNAL  jed_sum_19,jed_fb_19:std_logic:='0';
--Attribute PIN_NUMBERS of o(0):SIGNAL is "0019";

SIGNAL  jed_oept_20:std_logic:='0';
SIGNAL  jed_sum_20,jed_fb_20:std_logic:='0';
--Attribute PIN_NUMBERS of o(9):SIGNAL is "0020";

SIGNAL  jed_oept_21:std_logic:='0';
SIGNAL  jed_sum_21,jed_fb_21:std_logic:='0';
--Attribute PIN_NUMBERS of o(3):SIGNAL is "0021";

SIGNAL  jed_oept_22:std_logic:='0';
SIGNAL  jed_sum_22,jed_fb_22:std_logic:='0';
--Attribute PIN_NUMBERS of o(4):SIGNAL is "0022";

SIGNAL  jed_oept_23:std_logic:='0';
SIGNAL  jed_sum_23,jed_fb_23:std_logic:='0';
--Attribute PIN_NUMBERS of o(6):SIGNAL is "0023";

SIGNAL  jed_oept_25:std_logic:='0';
SIGNAL  jed_node25,jed_sum_25:std_logic:='0';
SIGNAL  jed_oept_26:std_logic:='0';
SIGNAL  jed_node26,jed_sum_26:std_logic:='0';

BEGIN
jed_node1 <= i(4) ;
jed_node2 <= i(3) ;
jed_node3 <= i(2) ;
jed_node4 <= i(1) ;
jed_node5 <= i(0) ;
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
     y=>o(7),
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
     y=>o(2),
     fb=>jed_fb_15
   );

Mcell_16:c22v10m
generic map(comb,
   invt,
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
     y=>o(5),
     fb=>jed_fb_16
   );

Mcell_17:c22v10m
generic map(comb,
   invt,
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
     d=>jed_sum_17,
     clk=>jed_node1,
     oe=>jed_oept_17,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>o(1),
     fb=>jed_fb_17
   );

Mcell_18:c22v10m
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
     d=>jed_sum_18,
     clk=>jed_node1,
     oe=>jed_oept_18,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>o(8),
     fb=>jed_fb_18
   );

Mcell_19:c22v10m
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
     d=>jed_sum_19,
     clk=>jed_node1,
     oe=>jed_oept_19,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>o(0),
     fb=>jed_fb_19
   );

Mcell_20:c22v10m
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
     d=>jed_sum_20,
     clk=>jed_node1,
     oe=>jed_oept_20,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>o(9),
     fb=>jed_fb_20
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
     y=>o(3),
     fb=>jed_fb_21
   );

Mcell_22:c22v10m
generic map(comb,
   invt,
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
     d=>jed_sum_22,
     clk=>jed_node1,
     oe=>jed_oept_22,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>o(4),
     fb=>jed_fb_22
   );

Mcell_23:c22v10m
generic map(comb,
   invt,
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
     y=>o(6),
     fb=>jed_fb_23
   );

jed_node25<=jed_sum_25;
jed_node26<=jed_sum_26;
jed_oept_14<=(one);

jed_sum_14<= (((jed_node1) and not(jed_node2) and not(jed_node3) and (jed_node5)
) or
((jed_node1) and (jed_node2) and (jed_node4)) or
((jed_node1) and (jed_node4) and not(jed_node5)) or
((jed_node3) and not(jed_node4) and (jed_node5)) or
((jed_node2) and not(jed_node3) and not(jed_node5)) or
(not(jed_node1) and (jed_node2) and not(jed_node4)) or
(not(jed_node1) and not(jed_node3) and not(jed_node5)
) or
(not(jed_node1) and not(jed_node2) and (jed_node4)));

jed_oept_15<=(one);

jed_sum_15<= (((jed_node1) and (jed_node2) and (jed_node3) and not(jed_node5)
) or
((jed_node1) and (jed_node2) and (jed_node3) and not(jed_node4)
) or
((jed_node1) and (jed_node2) and not(jed_node4) and not(jed_node5)
) or
((jed_node1) and (jed_node3) and not(jed_node4) and not(jed_node5)
) or
((jed_node1) and not(jed_node2) and not(jed_node3) and (jed_node4)
) or
(not(jed_node1) and (jed_node2) and (jed_node4) and not(jed_node5)
) or
(not(jed_node1) and (jed_node2) and not(jed_node3) and not(jed_node4)
) or
(not(jed_node1) and not(jed_node2) and (jed_node3) and not(jed_node5)
) or
(not(jed_node1) and not(jed_node2) and (jed_node3) and not(jed_node4)
) or
(not(jed_node1) and not(jed_node2) and not(jed_node4)
 and not(jed_node5)));

jed_oept_16<=(one);

jed_sum_16<= (((jed_node1) and (jed_node2) and not(jed_node3) and (jed_node4)
 and not(jed_node5)) or
((jed_node1) and not(jed_node2) and (jed_node3) and (jed_node4)
 and not(jed_node5)) or
((jed_node1) and not(jed_node2) and not(jed_node3) and not(jed_node4)
 and not(jed_node5)) or
(not(jed_node1) and (jed_node2) and (jed_node3) and (jed_node4)
 and (jed_node5)) or
(not(jed_node1) and (jed_node2) and (jed_node3) and not(jed_node4)
 and not(jed_node5)) or
(not(jed_node1) and not(jed_node2) and not(jed_node3)
 and (jed_node4) and not(jed_node5)));

jed_oept_17<=(one);

jed_sum_17<= ((not(jed_node1) and (jed_node2) and not(jed_node3) and (jed_node4)
) or
((jed_node3) and (jed_node4) and (jed_node5)) or
((jed_node1) and not(jed_node3) and not(jed_node4)) or
(not(jed_node2) and not(jed_node3) and not(jed_node4)
));

jed_oept_18<=(one);

jed_sum_18<= ((not(jed_node1) and (jed_node2) and (jed_node3) and not(jed_node5)
) or
(not(jed_node1) and (jed_node2) and (jed_node3) and not(jed_node4)
) or
(not(jed_node1) and (jed_node2) and not(jed_node3) and (jed_node4)
));

jed_oept_19<=(one);

jed_sum_19<= (((jed_node1) and not(jed_node2) and (jed_node3)) or
((jed_node1) and not(jed_node2) and (jed_node4)) or
((jed_node1) and not(jed_node2) and (jed_node5)));

jed_oept_20<=(one);

jed_sum_20<= ((not(jed_node1) and (jed_node2) and (jed_node3) and not(jed_node5)
) or
(not(jed_node1) and (jed_node2) and (jed_node3) and not(jed_node4)
) or
(not(jed_node1) and (jed_node2) and not(jed_node3) and (jed_node4)
));

jed_oept_21<=(one);

jed_sum_21<= ((not(jed_node1) and (jed_node2) and not(jed_node4) and not(jed_node5)
) or
((jed_node1) and (jed_node4) and not(jed_node5)) or
((jed_node2) and not(jed_node3) and not(jed_node5)) or
(not(jed_node2) and (jed_node4) and not(jed_node5)) or
(not(jed_node1) and not(jed_node3) and not(jed_node5)
));

jed_oept_22<=(one);

jed_sum_22<= (((jed_node1) and (jed_node3) and not(jed_node4) and not(jed_node5)
) or
(not(jed_node2) and (jed_node3) and not(jed_node4) and not(jed_node5)
) or
((jed_node1) and not(jed_node2) and not(jed_node3) and not(jed_node4)
) or
(not(jed_node1) and (jed_node2) and (jed_node3) and (jed_node4)
) or
(not(jed_node1) and (jed_node2) and not(jed_node3) and (jed_node5)
) or
((jed_node3) and (jed_node4) and (jed_node5)) or
(not(jed_node3) and not(jed_node4) and (jed_node5)));

jed_oept_23<=(one);

jed_sum_23<= ((not(jed_node1) and (jed_node2) and (jed_node3) and (jed_node4)
 and (jed_node5)) or
((jed_node1) and (jed_node2) and (jed_node3) and (jed_node4)
 and not(jed_node5)) or
((jed_node1) and (jed_node2) and (jed_node3) and not(jed_node4)
 and (jed_node5)) or
(not(jed_node1) and not(jed_node2) and (jed_node3) and (jed_node4)
 and not(jed_node5)) or
(not(jed_node1) and not(jed_node2) and (jed_node3) and not(jed_node4)
 and (jed_node5)) or
((jed_node1) and not(jed_node2) and not(jed_node3) and (jed_node4)
) or
((jed_node1) and not(jed_node2) and not(jed_node3) and not(jed_node5)
));

end DSMB;
