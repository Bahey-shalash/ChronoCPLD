--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : song2_decoder                                                ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY song2_decoder IS
   PORT ( D0                 : IN  std_logic;
          D1                 : IN  std_logic;
          D2                 : IN  std_logic;
          D3                 : IN  std_logic;
          D4                 : IN  std_logic;
          D5                 : IN  std_logic;
          logisimClockTree0  : IN  std_logic_vector( 4 DOWNTO 0 );
          logisimClockTree1  : IN  std_logic_vector( 4 DOWNTO 0 );
          logisimClockTree10 : IN  std_logic_vector( 4 DOWNTO 0 );
          logisimClockTree11 : IN  std_logic_vector( 4 DOWNTO 0 );
          logisimClockTree12 : IN  std_logic_vector( 4 DOWNTO 0 );
          logisimClockTree13 : IN  std_logic_vector( 4 DOWNTO 0 );
          logisimClockTree14 : IN  std_logic_vector( 4 DOWNTO 0 );
          logisimClockTree15 : IN  std_logic_vector( 4 DOWNTO 0 );
          logisimClockTree16 : IN  std_logic_vector( 4 DOWNTO 0 );
          logisimClockTree2  : IN  std_logic_vector( 4 DOWNTO 0 );
          logisimClockTree3  : IN  std_logic_vector( 4 DOWNTO 0 );
          logisimClockTree4  : IN  std_logic_vector( 4 DOWNTO 0 );
          logisimClockTree5  : IN  std_logic_vector( 4 DOWNTO 0 );
          logisimClockTree6  : IN  std_logic_vector( 4 DOWNTO 0 );
          logisimClockTree7  : IN  std_logic_vector( 4 DOWNTO 0 );
          logisimClockTree8  : IN  std_logic_vector( 4 DOWNTO 0 );
          logisimClockTree9  : IN  std_logic_vector( 4 DOWNTO 0 );
          B4                 : OUT std_logic;
          Db5                : OUT std_logic;
          E5                 : OUT std_logic;
          Fsharp5            : OUT std_logic;
          G4                 : OUT std_logic;
          re5                : OUT std_logic );
END ENTITY song2_decoder;
