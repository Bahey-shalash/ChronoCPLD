--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : OR_GATE_7_INPUTS                                             ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY OR_GATE_7_INPUTS IS
   GENERIC ( BubblesMask : std_logic_vector );
   PORT ( input1 : IN  std_logic;
          input2 : IN  std_logic;
          input3 : IN  std_logic;
          input4 : IN  std_logic;
          input5 : IN  std_logic;
          input6 : IN  std_logic;
          input7 : IN  std_logic;
          result : OUT std_logic );
END ENTITY OR_GATE_7_INPUTS;
