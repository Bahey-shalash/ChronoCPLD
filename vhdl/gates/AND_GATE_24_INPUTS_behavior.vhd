--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : AND_GATE_24_INPUTS                                           ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF AND_GATE_24_INPUTS IS 

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_realInput1  : std_logic;
   SIGNAL s_realInput10 : std_logic;
   SIGNAL s_realInput11 : std_logic;
   SIGNAL s_realInput12 : std_logic;
   SIGNAL s_realInput13 : std_logic;
   SIGNAL s_realInput14 : std_logic;
   SIGNAL s_realInput15 : std_logic;
   SIGNAL s_realInput16 : std_logic;
   SIGNAL s_realInput17 : std_logic;
   SIGNAL s_realInput18 : std_logic;
   SIGNAL s_realInput19 : std_logic;
   SIGNAL s_realInput2  : std_logic;
   SIGNAL s_realInput20 : std_logic;
   SIGNAL s_realInput21 : std_logic;
   SIGNAL s_realInput22 : std_logic;
   SIGNAL s_realInput23 : std_logic;
   SIGNAL s_realInput24 : std_logic;
   SIGNAL s_realInput3  : std_logic;
   SIGNAL s_realInput4  : std_logic;
   SIGNAL s_realInput5  : std_logic;
   SIGNAL s_realInput6  : std_logic;
   SIGNAL s_realInput7  : std_logic;
   SIGNAL s_realInput8  : std_logic;
   SIGNAL s_realInput9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here the bubbles are processed                                             --
   --------------------------------------------------------------------------------
   s_realInput1 <= input1 WHEN BubblesMask(0) = '0' ELSE NOT(input1);
   s_realInput2 <= input2 WHEN BubblesMask(1) = '0' ELSE NOT(input2);
   s_realInput3 <= input3 WHEN BubblesMask(2) = '0' ELSE NOT(input3);
   s_realInput4 <= input4 WHEN BubblesMask(3) = '0' ELSE NOT(input4);
   s_realInput5 <= input5 WHEN BubblesMask(4) = '0' ELSE NOT(input5);
   s_realInput6 <= input6 WHEN BubblesMask(5) = '0' ELSE NOT(input6);
   s_realInput7 <= input7 WHEN BubblesMask(6) = '0' ELSE NOT(input7);
   s_realInput8 <= input8 WHEN BubblesMask(7) = '0' ELSE NOT(input8);
   s_realInput9 <= input9 WHEN BubblesMask(8) = '0' ELSE NOT(input9);
   s_realInput10 <= input10 WHEN BubblesMask(9) = '0' ELSE NOT(input10);
   s_realInput11 <= input11 WHEN BubblesMask(10) = '0' ELSE NOT(input11);
   s_realInput12 <= input12 WHEN BubblesMask(11) = '0' ELSE NOT(input12);
   s_realInput13 <= input13 WHEN BubblesMask(12) = '0' ELSE NOT(input13);
   s_realInput14 <= input14 WHEN BubblesMask(13) = '0' ELSE NOT(input14);
   s_realInput15 <= input15 WHEN BubblesMask(14) = '0' ELSE NOT(input15);
   s_realInput16 <= input16 WHEN BubblesMask(15) = '0' ELSE NOT(input16);
   s_realInput17 <= input17 WHEN BubblesMask(16) = '0' ELSE NOT(input17);
   s_realInput18 <= input18 WHEN BubblesMask(17) = '0' ELSE NOT(input18);
   s_realInput19 <= input19 WHEN BubblesMask(18) = '0' ELSE NOT(input19);
   s_realInput20 <= input20 WHEN BubblesMask(19) = '0' ELSE NOT(input20);
   s_realInput21 <= input21 WHEN BubblesMask(20) = '0' ELSE NOT(input21);
   s_realInput22 <= input22 WHEN BubblesMask(21) = '0' ELSE NOT(input22);
   s_realInput23 <= input23 WHEN BubblesMask(22) = '0' ELSE NOT(input23);
   s_realInput24 <= input24 WHEN BubblesMask(23) = '0' ELSE NOT(input24);

   --------------------------------------------------------------------------------
   -- Here the functionality is defined                                          --
   --------------------------------------------------------------------------------
   result <= s_realInput1 AND 
             s_realInput2 AND 
             s_realInput3 AND 
             s_realInput4 AND 
             s_realInput5 AND 
             s_realInput6 AND 
             s_realInput7 AND 
             s_realInput8 AND 
             s_realInput9 AND 
             s_realInput10 AND 
             s_realInput11 AND 
             s_realInput12 AND 
             s_realInput13 AND 
             s_realInput14 AND 
             s_realInput15 AND 
             s_realInput16 AND 
             s_realInput17 AND 
             s_realInput18 AND 
             s_realInput19 AND 
             s_realInput20 AND 
             s_realInput21 AND 
             s_realInput22 AND 
             s_realInput23 AND 
             s_realInput24;

END platformIndependent;
