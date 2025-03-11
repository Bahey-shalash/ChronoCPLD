--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : T_FLIPFLOP                                                   ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY T_FLIPFLOP IS
   GENERIC ( invertClockEnable : INTEGER );
   PORT ( clock  : IN  std_logic;
          preset : IN  std_logic;
          reset  : IN  std_logic;
          t      : IN  std_logic;
          tick   : IN  std_logic;
          q      : OUT std_logic;
          qBar   : OUT std_logic );
END ENTITY T_FLIPFLOP;
