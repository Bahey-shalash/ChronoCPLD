--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : Demultiplexer_2                                              ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY Demultiplexer_2 IS
   PORT ( demuxIn    : IN  std_logic;
          enable     : IN  std_logic;
          sel        : IN  std_logic;
          demuxOut_0 : OUT std_logic;
          demuxOut_1 : OUT std_logic );
END ENTITY Demultiplexer_2;
