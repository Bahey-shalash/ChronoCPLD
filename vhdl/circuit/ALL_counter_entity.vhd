--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : project_Finale                                               ==
--== Component : ALL_counter                                                  ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY ALL_counter IS
   PORT ( CLK_64KHz          : IN  std_logic;
          CLK_seconds        : IN  std_logic;
          CW                 : IN  std_logic;
          CWW                : IN  std_logic;
          ONN                : IN  std_logic;
          Reset              : IN  std_logic;
          State0             : IN  std_logic;
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
          HOURS_MSD          : OUT std_logic_vector( 6 DOWNTO 0 );
          HOUR_LSD           : OUT std_logic_vector( 6 DOWNTO 0 );
          MINs_MSD           : OUT std_logic_vector( 6 DOWNTO 0 );
          MinLSD             : OUT std_logic_vector( 6 DOWNTO 0 );
          Seconds_MSD        : OUT std_logic_vector( 6 DOWNTO 0 );
          current_time       : OUT std_logic_vector( 20 DOWNTO 0 );
          secondsLSD         : OUT std_logic_vector( 6 DOWNTO 0 ) );
END ENTITY ALL_counter;
