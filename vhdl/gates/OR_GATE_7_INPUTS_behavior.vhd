--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : OR_GATE_7_INPUTS                                             ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF OR_GATE_7_INPUTS IS 

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_realInput1 : std_logic;
   SIGNAL s_realInput2 : std_logic;
   SIGNAL s_realInput3 : std_logic;
   SIGNAL s_realInput4 : std_logic;
   SIGNAL s_realInput5 : std_logic;
   SIGNAL s_realInput6 : std_logic;
   SIGNAL s_realInput7 : std_logic;

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

   --------------------------------------------------------------------------------
   -- Here the functionality is defined                                          --
   --------------------------------------------------------------------------------
   result <= s_realInput1 OR 
             s_realInput2 OR 
             s_realInput3 OR 
             s_realInput4 OR 
             s_realInput5 OR 
             s_realInput6 OR 
             s_realInput7;

END platformIndependent;
